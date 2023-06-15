import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="activity"
export default class extends Controller {
  static targets = ['Div', 'noact']

  connect() {
    // console.log("coucou");
  }

  disablediv(event) {
    this.DivTarget.classList.add("d-none")
    this.noactTarget.classList.remove("d-none")
  }

}
