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
exports.CreateTiketUseCase = void 0;
const client_1 = require("../../../prisma/client");
class CreateTiketUseCase {
    execute({ problema_informado, observacao, prioridadeId, empresa, tecnico, categoriaId, empresaId, tecnicoId, tiketStatusId, }) {
        return __awaiter(this, void 0, void 0, function* () {
            //verificar se o susario já exite
            //criar tiket
            const criarNewTiket = yield client_1.prisma.tiket.create({
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
        });
    }
}
exports.CreateTiketUseCase = CreateTiketUseCase;
