import { Socket } from "phoenix";

let socket = new Socket("/user-socket", {
  params: { token: window.userToken },
});

const input = document.querySelector("#game_input");
const list = document.querySelector("#game_messages_container");

socket.connect();

let channel = socket.channel("game:common", {});
channel
  .join()
  .receive("ok", (resp) => {
    console.log("Joined successfully", resp);
  })
  .receive("error", (resp) => {
    console.log("Unable to join", resp);
  });

input.addEventListener("keypress", (event) => {
  if (event.key === "Enter" && input.value) {
    channel.push("message", { body: input.value });
    input.value = "";
  }
});

channel.on("message", (payload) => {
  let messageItem = document.createElement("li");
  messageItem.innerText = payload.body;
  list.appendChild(messageItem);
});

export default socket;
