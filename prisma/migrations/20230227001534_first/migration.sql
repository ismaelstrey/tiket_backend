/*
  Warnings:

  - You are about to drop the column `tiketId` on the `prioridades` table. All the data in the column will be lost.
  - Added the required column `prioridadeId` to the `tickets` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "prioridades" DROP CONSTRAINT "prioridades_tiketId_fkey";

-- AlterTable
ALTER TABLE "prioridades" DROP COLUMN "tiketId";

-- AlterTable
ALTER TABLE "tickets" ADD COLUMN     "prioridadeId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_prioridadeId_fkey" FOREIGN KEY ("prioridadeId") REFERENCES "prioridades"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
