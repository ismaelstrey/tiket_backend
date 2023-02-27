-- DropForeignKey
ALTER TABLE "empresas" DROP CONSTRAINT "empresas_clienteId_fkey";

-- AlterTable
ALTER TABLE "empresas" ALTER COLUMN "clienteId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "empresas" ADD CONSTRAINT "empresas_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "clientes"("id") ON DELETE SET NULL ON UPDATE CASCADE;
