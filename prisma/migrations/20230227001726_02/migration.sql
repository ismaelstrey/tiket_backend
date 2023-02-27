-- DropForeignKey
ALTER TABLE "tickets" DROP CONSTRAINT "tickets_prioridadeId_fkey";

-- AlterTable
ALTER TABLE "tickets" ALTER COLUMN "prioridadeId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_prioridadeId_fkey" FOREIGN KEY ("prioridadeId") REFERENCES "prioridades"("id") ON DELETE SET NULL ON UPDATE CASCADE;
