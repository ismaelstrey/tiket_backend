import { Router } from "express";
import { tiketRoutes } from "./tiket.routes";

const routes = Router();

routes.use("/tikets", tiketRoutes);

export { routes };
