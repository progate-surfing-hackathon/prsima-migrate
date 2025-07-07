/*
  Warnings:

  - Added the required column `item_price` to the `activity` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `activity` ADD COLUMN `item_price` INTEGER NOT NULL;
