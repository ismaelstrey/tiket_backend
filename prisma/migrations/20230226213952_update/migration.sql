/*
  Warnings:

  - You are about to drop the column `cliente` on the `tickets` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "clientes" DROP CONSTRAINT "clientes_empresaId_fkey";

-- DropForeignKey
ALTER TABLE "tecnicos" DROP CONSTRAINT "tecnicos_tecnicoTipoId_fkey";

-- DropForeignKey
ALTER TABLE "tickets" DROP CONSTRAINT "tickets_categoriaId_fkey";

-- DropForeignKey
ALTER TABLE "tickets" DROP CONSTRAINT "tickets_clienteId_fkey";

-- DropForeignKey
ALTER TABLE "tickets" DROP CONSTRAINT "tickets_prioridadeId_fkey";

-- DropForeignKey
ALTER TABLE "tickets" DROP CONSTRAINT "tickets_tiketStatusId_fkey";

-- AlterTable
ALTER TABLE "clientes" ALTER COLUMN "empresaId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "prioridades" ALTER COLUMN "name" DROP NOT NULL,
ALTER COLUMN "color" DROP NOT NULL,
ALTER COLUMN "icon" DROP NOT NULL;

-- AlterTable
ALTER TABLE "subcategorias" ALTER COLUMN "name" DROP NOT NULL,
ALTER COLUMN "color" DROP NOT NULL;

-- AlterTable
ALTER TABLE "tecnico_tipo" ALTER COLUMN "name" DROP NOT NULL;

-- AlterTable
ALTER TABLE "tecnicos" ALTER COLUMN "type" DROP NOT NULL,
ALTER COLUMN "userId" DROP NOT NULL,
ALTER COLUMN "tecnicoTipoId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "tickets" DROP COLUMN "cliente",
ALTER COLUMN "problema_informado" DROP NOT NULL,
ALTER COLUMN "clienteId" DROP NOT NULL,
ALTER COLUMN "categoriaId" DROP NOT NULL,
ALTER COLUMN "prioridadeId" DROP NOT NULL,
ALTER COLUMN "tiketStatusId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "tiket_status" ALTER COLUMN "name" DROP NOT NULL;

-- AlterTable
ALTER TABLE "users" ALTER COLUMN "userId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "clientes" ADD CONSTRAINT "clientes_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "empresas"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tecnicos" ADD CONSTRAINT "tecnicos_tecnicoTipoId_fkey" FOREIGN KEY ("tecnicoTipoId") REFERENCES "tecnico_tipo"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_categoriaId_fkey" FOREIGN KEY ("categoriaId") REFERENCES "categorias"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_tiketStatusId_fkey" FOREIGN KEY ("tiketStatusId") REFERENCES "tiket_status"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_prioridadeId_fkey" FOREIGN KEY ("prioridadeId") REFERENCES "prioridades"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "clientes"("id") ON DELETE SET NULL ON UPDATE CASCADE;
