import { Controller } from '@hotwired/stimulus'
import Rails from "@rails/ujs";

export default class extends Controller { 
  static targets = ["status"]
  connect() {
    console.log('in movie controller')
  }

  async updateStatus(event) {
    let statusParams = this.statusTarget.checked ? "watched" : "missed"
    console.log(event.params.id)

    Rails.ajax({
      type: "patch",
      url: `/movies/${event.params.id}?status=${statusParams}`,
    })
  }
  
}