import { prisma } from "../../../prisma/client";
import { CreateTiketDTO } from "../dtos/CreateTicketDTO";
import { Tiket } from "@prisma/client";

export class CreateTiketUseCase {
  async execute({
    problema_informado,
    observacao,
    prioridadeId,
    empresa,
    tecnico,
    categoriaId,
    empresaId,
    tecnicoId,
    tiketStatusId,
  }: CreateTiketDTO): Promise<Tiket> {
    //verificar se o susario já exite
    //criar tiket
    const criarNewTiket = await prisma.tiket.create({
      data: {
        problema_informado,
        observacao,
        prioridadeId,
        empresa,
        tecnico,
        categoriaId,
        empresaId,
        tecnicoId,
        tiketStatusId,
      },
    });
    return criarNewTiket;
  }
}
