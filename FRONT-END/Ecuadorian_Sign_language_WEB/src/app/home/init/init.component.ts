import { Component, OnInit, ViewChild, ElementRef, ChangeDetectorRef } from '@angular/core';
import { PeticionService } from 'src/app/services/peticion.service';
import { PreloadService } from 'src/app/services/preload.service';  // <-- Añade este import

interface GifForSlider {
  image: string;
  thumbImage?: string;
  title?: string;
}

@Component({
  selector: 'app-init',
  templateUrl: './init.component.html',
  styleUrls: ['./init.component.css']
})
export class InitComponent implements OnInit {
  
  textInput: string = "";
  gifs: string[] = [];
  gifsForSlider: Array<GifForSlider> = [];
  tokensWithGifs: any;
  currentGifName: string = "";
  
  private _slideSpeed: number = 4;
  
  set slideSpeed(value: number) {
    this._slideSpeed = value;
    this.gifsForSlider = [...this.gifsForSlider];
  }
  get slideSpeed(): number {
      return this._slideSpeed;
  }

  @ViewChild('slider', { static: false }) slider: ElementRef | undefined;

  constructor(private peticionService: PeticionService, private cdRef: ChangeDetectorRef, private preloadService: PreloadService) { } // <-- Añade el servicio aquí

  ngOnInit(): void { }

  async analyzeTextInput() {  // <-- Hacemos esta función asíncrona
    console.log("this.textInput:", this.textInput);
    this.peticionService.analyzeText(this.textInput as string).subscribe(async response => { // <-- Hacemos la respuesta asíncrona
      this.tokensWithGifs = response.tokens;
      this.gifs = this.extractGifsFromTokens(this.tokensWithGifs);

      // Precargar las imágenes
      await Promise.all(this.gifs.map(gif => this.preloadService.preloadImage(gif)));

      this.gifsForSlider = [{ image: 'assets/transparente.gif', thumbImage: 'assets/transparente.gif' }].concat(
        this.gifs.map(g => ({
          image: g, 
          thumbImage: g,
          title: g.split('/').pop()?.split('.gif')[0] || ""
        }))
      );

      this.cdRef.detectChanges();  // <-- Esto asegura que las detecciones de cambios se ejecuten después de actualizar el array
    },
    error => {
      console.error("Hubo un error al analizar el texto", error);
    });
  }
  
  private extractGifsFromTokens(tokens: any[]): string[] {
    let allGifs: string[] = [];
    tokens.forEach(token => {
      if (Array.isArray(token.gif)) {
        allGifs.push(...token.gif);
      } else {
        allGifs.push(token.gif);
      }
    });
    return allGifs;
  }

  onImageClick(index: number) {
    this.setCurrentGifName(index);
  }

  setCurrentGifName(index: number) {
    let gifUrl = this.gifs[index];
    let gifName = gifUrl.split('/').pop()?.split('.gif')[0] || "";  
    this.currentGifName = gifName;
  }

  stopSlider() {
    this.gifsForSlider = [];
  }
}
