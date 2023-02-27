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
exports.CreateTiketController = void 0;
const CreateTicketUseCase_1 = require("./CreateTicketUseCase");
class CreateTiketController {
    handle(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            const { problema_informado, observacao, prioridadeId, empresa, tecnico, categoriaId, empresaId, tecnicoId, tiketStatusId, } = req.body;
            const createTiketUseCase = new CreateTicketUseCase_1.CreateTiketUseCase();
            const result = yield createTiketUseCase.execute({
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
        });
    }
}
exports.CreateTiketController = CreateTiketController;
