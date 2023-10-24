import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class PreloadService {

  constructor() { }

  preloadImage(url: string): Promise<void> {
    return new Promise((resolve, reject) => {
      const image = new Image();
      image.src = url;
      image.onload = () => resolve();
      image.onerror = reject;
    });
  }

  preloadVideo(url: string): Promise<void> {
    return new Promise((resolve, reject) => {
      const video = document.createElement('video');
      const onVideoLoad = () => {
        video.removeEventListener('canplaythrough', onVideoLoad);
        resolve();
      };
      video.addEventListener('canplaythrough', onVideoLoad, false);
      video.onerror = reject;
      video.src = url;
    });
  }
}
