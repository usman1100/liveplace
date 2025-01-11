import { Socket } from "phoenix";

let socket = new Socket("/user-socket", { params: { token: window.userToken } });

socket.connect();

let channel = socket.channel("room:lobby", {});
channel
  .join()
  .receive("ok", (resp) => {
    console.log("Joined successfully", resp);
  })
  .receive("error", (resp) => {
    console.log("Unable to join", resp);
  });

export default socket;
