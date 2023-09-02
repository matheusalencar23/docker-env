import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'lib-header',
  standalone: true,
  imports: [CommonModule],
  template: `
    <p>
      header works!
    </p>
  `,
  styles: [
  ]
})
export class HeaderComponent {

}
