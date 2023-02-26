/*
  Warnings:

  - You are about to drop the column `subategoriaId` on the `categorias` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `clientes` table. All the data in the column will be lost.
  - You are about to drop the column `tecnicoTipoId` on the `tecnicos` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `tecnicos` table. All the data in the column will be lost.
  - You are about to drop the column `categoriaId` on the `tickets` table. All the data in the column will be lost.
  - You are about to drop the column `clienteId` on the `tickets` table. All the data in the column will be lost.
  - You are about to drop the column `prioridadeId` on the `tickets` table. All the data in the column will be lost.
  - You are about to drop the column `tiketStatusId` on the `tickets` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `users` table. All the data in the column will be lost.
  - Added the required column `clienteId` to the `empresas` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "categorias" DROP CONSTRAINT "categorias_subategoriaId_fkey";

-- DropForeignKey
ALTER TABLE "clientes" DROP CONSTRAINT "clientes_empresaId_fkey";

-- DropForeignKey
ALTER TABLE "clientes" DROP CONSTRAINT "clientes_userId_fkey";

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
ALTER TABLE "categorias" DROP COLUMN "subategoriaId",
ADD COLUMN     "tiketId" INTEGER;

-- AlterTable
ALTER TABLE "clientes" DROP COLUMN "userId";

-- AlterTable
ALTER TABLE "empresas" ADD COLUMN     "clienteId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "prioridades" ADD COLUMN     "tiketId" INTEGER;

-- AlterTable
ALTER TABLE "subcategorias" ADD COLUMN     "categoriaId" INTEGER;

-- AlterTable
ALTER TABLE "tecnico_tipo" ADD COLUMN     "tecnicoId" INTEGER;

-- AlterTable
ALTER TABLE "tecnicos" DROP COLUMN "tecnicoTipoId",
DROP COLUMN "userId",
ADD COLUMN     "empresaId" INTEGER;

-- AlterTable
ALTER TABLE "tickets" DROP COLUMN "categoriaId",
DROP COLUMN "clienteId",
DROP COLUMN "prioridadeId",
DROP COLUMN "tiketStatusId";

-- AlterTable
ALTER TABLE "tiket_status" ADD COLUMN     "tiketId" INTEGER;

-- AlterTable
ALTER TABLE "users" DROP COLUMN "userId",
ADD COLUMN     "empresaId" INTEGER;

-- AddForeignKey
ALTER TABLE "users" ADD CONSTRAINT "users_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "empresas"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "empresas" ADD CONSTRAINT "empresas_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "clientes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tecnicos" ADD CONSTRAINT "tecnicos_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "empresas"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "categorias" ADD CONSTRAINT "categorias_tiketId_fkey" FOREIGN KEY ("tiketId") REFERENCES "tickets"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "subcategorias" ADD CONSTRAINT "subcategorias_categoriaId_fkey" FOREIGN KEY ("categoriaId") REFERENCES "categorias"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "prioridades" ADD CONSTRAINT "prioridades_tiketId_fkey" FOREIGN KEY ("tiketId") REFERENCES "tickets"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tiket_status" ADD CONSTRAINT "tiket_status_tiketId_fkey" FOREIGN KEY ("tiketId") REFERENCES "tickets"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tecnico_tipo" ADD CONSTRAINT "tecnico_tipo_tecnicoId_fkey" FOREIGN KEY ("tecnicoId") REFERENCES "tecnicos"("id") ON DELETE SET NULL ON UPDATE CASCADE;
