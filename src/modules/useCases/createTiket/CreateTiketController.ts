import { Request, Response } from "express";
import { CreateTiketUseCase } from "./CreateTicketUseCase";
export class CreateTiketController {
  async handle(req: Request, res: Response) {
    const {
      problema_informado,
      observacao,
      prioridadeId,
      empresa,
      tecnico,
      categoriaId,
      empresaId,
      tecnicoId,
      tiketStatusId,
    } = req.body;
    const createTiketUseCase = new CreateTiketUseCase();
    const result = await createTiketUseCase.execute({
      problema_informado,
      observacao,
      prioridadeId,
      empresa,
      tecnico,
      categoriaId,
      empresaId,
      tecnicoId,
      tiketStatusId,
    });
    return res.status(201).json(result);
  }
}
