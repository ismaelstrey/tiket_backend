-- AlterTable
ALTER TABLE "tickets" ADD COLUMN     "empresaId" INTEGER,
ADD COLUMN     "tecnicoId" INTEGER;

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "empresas"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_tecnicoId_fkey" FOREIGN KEY ("tecnicoId") REFERENCES "tecnicos"("id") ON DELETE SET NULL ON UPDATE CASCADE;
