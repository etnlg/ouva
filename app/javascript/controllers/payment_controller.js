import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="payment"
export default class extends Controller {
  static targets = ["option"]


    connect() {
    }


  toggleClass(event) {
    this.optionTargets.forEach ((option) => {
      option === event.currentTarget
        ? option.classList.toggle("payment-selected")
        : option.classList.remove("payment-selected")
    })
  }
}
