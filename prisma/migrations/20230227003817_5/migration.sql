/*
  Warnings:

  - You are about to drop the column `tiketId` on the `tiket_status` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "tiket_status" DROP CONSTRAINT "tiket_status_tiketId_fkey";

-- AlterTable
ALTER TABLE "tickets" ADD COLUMN     "tiketStatusId" INTEGER;

-- AlterTable
ALTER TABLE "tiket_status" DROP COLUMN "tiketId";

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_tiketStatusId_fkey" FOREIGN KEY ("tiketStatusId") REFERENCES "tiket_status"("id") ON DELETE SET NULL ON UPDATE CASCADE;
