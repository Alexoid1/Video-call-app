import consumer from "./consumer"

document.addEventListener('turbolinks:load',()=>{

})

consumer.subscriptions.create({channel: "RoomChannel", room_id: 1},{
  connected() {
    // Called when the subscription is ready for use on the server
    console.log('logged')
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(dta) {
    // Called when there's incoming data on the websocket for this channel
    console.log('works')
    const messageContainer=document.getElementById('messages')
    messageContainer.innerHTML = messageContainer.innerHTML + dta.mine
  }
});
