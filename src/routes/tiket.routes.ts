import { Router } from "express";
import { CreateTiketController } from "../modules/useCases/createTiket/CreateTiketController";
import { GetTiketController } from "../modules/useCases/getTiket/GetTiketController";

const createTiketController = new CreateTiketController();
const getTiketController = new GetTiketController();

const tiketRoutes = Router();

tiketRoutes.post("/", createTiketController.handle);
tiketRoutes.get("/", getTiketController.handle);
export { tiketRoutes };
