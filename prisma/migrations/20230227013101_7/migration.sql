/*
  Warnings:

  - You are about to drop the column `tiketId` on the `categorias` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "categorias" DROP CONSTRAINT "categorias_tiketId_fkey";

-- AlterTable
ALTER TABLE "categorias" DROP COLUMN "tiketId";

-- AlterTable
ALTER TABLE "tickets" ADD COLUMN     "categoriaId" INTEGER;

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_categoriaId_fkey" FOREIGN KEY ("categoriaId") REFERENCES "categorias"("id") ON DELETE SET NULL ON UPDATE CASCADE;
