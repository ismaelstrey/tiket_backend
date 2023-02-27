import { Request, Response } from "express";
import { GetTiketUseCase } from "./GetTicketUseCase";
export class GetTiketController {
  async handle(req: Request, res: Response) {
    const getTiketUseCase = new GetTiketUseCase();
    const result = await getTiketUseCase.execute();
    return res.status(201).json(result);
  }
}
