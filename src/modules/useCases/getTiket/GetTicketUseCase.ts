import { prisma } from "../../../prisma/client";


export class GetTiketUseCase {
  async execute() {
    const getAllTiket = await prisma.tiket.findMany({
      select: {
        problema_informado: true,
        observacao: true,
        tiketStatusId: true,
        empresa: {
          select: {
            name: true,
            nome_fantasia: true,
          },
        },
        prioridade: {
          select: {
            name: true,
            color: true,
            icon: true,
          },
        },
        tecnico: {
          select: {
            name: true,
            type: true,
            TecnicoTipo: true,
          },
        },
        categoria: true,
      },
    });
    return getAllTiket;
  }
}
