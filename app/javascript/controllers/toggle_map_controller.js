import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-map"
export default class extends Controller {
  static targets = ["map", "list", "button"]

  connect() {
    console.log("map toggle connected...")
  }

  toggleDisplay() {
    // on event: this.mapTarget --> add/delete or toggle d-none class
    // same for list, needs to be opposite each time, default: map active
    this.mapTarget.classList.toggle("d-none");
    this.listTarget.classList.toggle("d-none");
    if (this.buttonTarget.innerHTML == '<i class="fa-solid fa-map"></i> Map') {
      this.buttonTarget.innerHTML = '<i class="fa-solid fa-list"></i> List';
    } else if (this.buttonTarget.innerHTML == '<i class="fa-solid fa-list"></i> List') {
      this.buttonTarget.innerHTML = '<i class="fa-solid fa-map"></i> Map';
    }
  }
}
