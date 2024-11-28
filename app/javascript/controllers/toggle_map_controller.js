import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-map"
export default class extends Controller {
  static targets = ["map", "list"]

  connect() {
    console.log("map toggle connected...")
  }

  toggleDisplay() {
    // on event: this.mapTarget --> add/delete or toggle d-none class
    // same for list, needs to be opposite each time, default: map active
    this.mapTarget.classList.toggle("d-none");
    this.listTarget.classList.toggle("d-none");
  }
}
