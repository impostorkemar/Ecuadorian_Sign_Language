import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class PreloadService {

  constructor() { }

  preloadImage(url: string): Promise<any> {
    return new Promise((resolve, reject) => {
      const image = new Image();
      image.src = url;
      image.onload = resolve;
      image.onerror = reject;
    });
  }
}
