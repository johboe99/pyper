import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-recommendations"
export default class extends Controller {
  static targets = ["first", "button"]

  connect() {
    console.log("toggle-recommendations connected...")
  }

  toggleDisplay() {
    this.firstTarget.classList.toggle("d-none");
    if (this.buttonTarget.innerHTML == 'Show all your recommendations') {
      this.buttonTarget.innerHTML = 'Show less';
    } else if (this.buttonTarget.innerHTML == 'Show less') {
      this.buttonTarget.innerHTML = 'Show all your recommendations';
    }
  }
}
