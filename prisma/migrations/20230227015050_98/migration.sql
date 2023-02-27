/*
  Warnings:

  - You are about to drop the column `categoriaId` on the `subcategorias` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "subcategorias" DROP CONSTRAINT "subcategorias_categoriaId_fkey";

-- AlterTable
ALTER TABLE "subcategorias" DROP COLUMN "categoriaId",
ADD COLUMN     "sub_categoriaId" INTEGER;

-- AddForeignKey
ALTER TABLE "subcategorias" ADD CONSTRAINT "subcategorias_sub_categoriaId_fkey" FOREIGN KEY ("sub_categoriaId") REFERENCES "categorias"("id") ON DELETE SET NULL ON UPDATE CASCADE;
