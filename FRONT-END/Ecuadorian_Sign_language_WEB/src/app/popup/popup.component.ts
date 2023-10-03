import { Component, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';

@Component({
  selector: 'app-popup',
  templateUrl: './popup.component.html',
  styleUrls: ['./popup.component.css']
})
export class PopupComponent {

    constructor(
        public dialogRef: MatDialogRef<PopupComponent>,
        @Inject(MAT_DIALOG_DATA) public data: { title: string, message: string }
    ) {}

    closeDialog(): void {
        this.dialogRef.close();
    }
}
