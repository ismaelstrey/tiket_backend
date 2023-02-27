import express from "express";
import { routes } from "./routes";
const PORT = 4000
const app = express();
app.use(express.json());
app.use(routes);

app.listen(PORT, () => console.log("Server rodadno em http://localhost:4000"));
