import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("connected")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    appendMessage(data.username, data.body)
    clearForm()
  }
});

function appendMessage(username, message){
  const p = document.createElement("p")
  const messages = document.querySelector(".chat-messages")
  p.innerHTML = `<em>${username}<em> : ${message}`
  messages.append(p)
  messages.scrollTop = messages.scrollHeight
}

function clearForm(){
  document.querySelector("#chat-form").reset()
}
