import { Socket } from "phoenix";

let socket = new Socket("/user-socket", { params: { token: window.userToken } });

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

export default socket;
