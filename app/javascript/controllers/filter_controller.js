import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["modal"]
  static values = { isOpen: Boolean };

  connect() {
    console.log("Filter controller connected...")
    this.closeOnOutsideClick = this.closeOnOutsideClick.bind(this);
  }

  disconnect() {
    window.removeEventListener("click", this.closeOnOutsideClick);
  }

  open() {
    if (!this.isOpenValue) {
      this.modalTarget.style.display = "block";
      this.isOpenValue = true;
      window.addEventListener("click", this.closeOnOutsideClick);
    }
  }

  close() {
    if (this.isOpenValue) {
      this.modalTarget.style.display = "none";
      this.isOpenValue = false;
      window.removeEventListener("click", this.closeOnOutsideClick);
    }
  }

  closeOnOutsideClick(event) {
    if (event.target === this.modalTarget) {
      this.close();
    }
  }
}
