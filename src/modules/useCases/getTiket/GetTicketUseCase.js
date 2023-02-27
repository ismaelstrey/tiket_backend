"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.GetTiketUseCase = void 0;
const client_1 = require("../../../prisma/client");
class GetTiketUseCase {
    execute() {
        return __awaiter(this, void 0, void 0, function* () {
            const getAllTiket = yield client_1.prisma.tiket.findMany({
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
        });
    }
}
exports.GetTiketUseCase = GetTiketUseCase;
