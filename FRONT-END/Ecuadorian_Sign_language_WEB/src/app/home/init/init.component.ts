import { ChangeDetectorRef, Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { AuthService } from 'src/app/services/auth.service';
import { PopupComponent } from 'src/app/popup/popup.component';
import { PeticionService } from 'src/app/services/peticion.service';
import { PreloadService } from 'src/app/services/preload.service';


interface VideoInfo {
    url: string;
    duration: number;
}

@Component({
  selector: 'app-init',
  templateUrl: './init.component.html',
  styleUrls: ['./init.component.css']
})
export class InitComponent implements OnInit {

  loggedIn: boolean = false; 

  @ViewChild('videoPlayer') videoPlayer!: ElementRef;

  textInput: string = "";
  videos: VideoInfo[] = [{ url: '', duration: 0 }];
  currentVideoIndex: number = 0;
  private _slideSpeed: number = 1;
  public initialized: boolean = false;
  speedValues: number[] = [0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2];

  set slideSpeed(value: number) {
    this._slideSpeed = value;
    this.adjustPlaybackRate();
  }
   
  get slideSpeed(): number {
    return this._slideSpeed;
  }

  constructor(
    private peticionService: PeticionService, 
    private cdRef: ChangeDetectorRef, 
    private preloadService: PreloadService,
    private dialog: MatDialog, 
    private authService: AuthService) { }

  ngOnInit(): void {
    // Comprobar si el usuario ya está autenticado al cargar el componente
    this.loggedIn = this.authService.isLoggedIn();
  }
  
  
  onSlideSpeedChange(event: any) {
    this.slideSpeed = this.speedValues[event.target.value];
  }

  async analyzeTextInput() {
    this.initialized = true;
    this.stopVideos();  // Aseguramos que los videos se detengan antes de iniciar una nueva análisis
    this.peticionService.analyzeTextForVideos(this.textInput as string).subscribe(async response => {
      const newVideos = this.extractVideosFromTokens(response.tokens);
      if (newVideos.length > 0) {
        this.videos = newVideos;
        await this.playVideos();
      }
    },
    (error: any) => {
      console.error("Hubo un error al analizar el texto", error);
    });
  }

  private async playVideos() {
    await Promise.all(this.videos.map(video => this.preloadService.preloadVideo(video.url)));
    
    if (this.videoPlayer) {
        this.videoPlayer.nativeElement.playbackRate = this.slideSpeed; // Asegurándonos de que la velocidad se establezca aquí
    }

    const playPromise = this.videoPlayer?.nativeElement.play();
    if (playPromise !== undefined) {
        playPromise.catch((error: any) => {
            console.error("Error al reproducir el video: ", error);
        });
    }
  }


  videoEnded() {
    //console.log("El video", this.currentVideoIndex, "ha terminado.");
    //console.log("Velocidad de reproducción actual:", this._slideSpeed);

    if (this.currentVideoIndex + 1 < this.videos.length) {
        this.currentVideoIndex++;
        //console.log("Intentando reproducir el video", this.currentVideoIndex);

        // Introduzca un pequeño retraso antes de intentar reproducir el siguiente video
        setTimeout(() => {
            const playPromise = this.videoPlayer?.nativeElement.play();
            if (playPromise) {
                playPromise.then(() => {
                    //console.log("El video", this.currentVideoIndex, "ha comenzado a reproducirse.");
                    this.adjustPlaybackRate(); // Ajusta la velocidad de reproducción después de que el video comienza a reproducirse
                }).catch((error: any) => {
                    console.error("Error al reproducir el video: ", error);
                });
            }
        }, 200);
        
    } else {
        //console.log("Todos los videos han terminado.");
        // Detener y resetear en el último video
        this.stopVideos();
        this.initialized = false; // Establecer initialized como false al final del último video
    }
  }

  adjustPlaybackRate() {
      if (this.videoPlayer) {
          this.videoPlayer.nativeElement.playbackRate = this._slideSpeed;
          //console.log("Ajustando la velocidad de reproducción a:", this._slideSpeed);
      }
  }

  private extractVideosFromTokens(tokens: any[]): VideoInfo[] {
    let allVideos: VideoInfo[] = [];
    tokens.forEach(token => {
      if (token.video.urls && token.video.durations) {
        token.video.urls.forEach((url: string, index: number) => {
          allVideos.push({
            url: url,
            duration: token.video.durations[index] || 0 
          });
        });
      } else if (token.video.url && token.video.duration) {
        allVideos.push({
          url: token.video.url,
          duration: token.video.duration
        });
      }
    });
    return allVideos;
  }

  stopVideos() {
    
    if (this.videoPlayer) {
        this.videoPlayer.nativeElement.pause();
        this.videoPlayer.nativeElement.currentTime = 0;
    }
    this.currentVideoIndex = 0; 
  }

  Reset(){
    this.textInput = "";
    this.initialized = false;   
  }
 

  getVideoName(url: string | undefined): string {
    if (!url) return "";
    const name = url.split('/').pop()?.split('.mp4')[0];
    return name || "";
  }

  openLoginDialog(): void {
    const dialogRef = this.dialog.open(PopupComponent, {
      width: '400px',
      data: { 
        title: 'Inicio de sesión', 
        message: 'Por favor, ingrese sus credenciales',
        isLoginForm: true  // Indica que este diálogo es un formulario de inicio de sesión
      }
    });
  
    dialogRef.afterClosed().subscribe(result => {
      this.loggedIn = this.authService.isLoggedIn();
    });
  }

  logout() {
    this.authService.logout();
    this.loggedIn = false;
  }

}
