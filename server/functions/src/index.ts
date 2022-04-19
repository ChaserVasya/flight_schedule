import * as app from "firebase-admin/app";

app.initializeApp();

export {sendNotifications} from "./functions/send-notifications.js";
