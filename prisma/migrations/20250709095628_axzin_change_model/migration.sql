/*
  Warnings:

  - You are about to drop the column `item_name` on the `activity` table. All the data in the column will be lost.
  - You are about to drop the column `item_price` on the `activity` table. All the data in the column will be lost.
  - You are about to drop the column `location` on the `activity` table. All the data in the column will be lost.
  - You are about to drop the `users` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `steps` to the `activity` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `activity` DROP FOREIGN KEY `activity_author_fkey`;

-- AlterTable
ALTER TABLE `activity` DROP COLUMN `item_name`,
    DROP COLUMN `item_price`,
    DROP COLUMN `location`,
    ADD COLUMN `steps` INTEGER NOT NULL;

-- DropTable
DROP TABLE `users`;

-- CreateTable
CREATE TABLE `buy` (
    `id` VARCHAR(191) NOT NULL,
    `author` VARCHAR(191) NOT NULL,
    `timestamp` DATETIME(3) NOT NULL,
    `item_name` VARCHAR(191) NOT NULL,
    `item_price` INTEGER NOT NULL,

    INDEX `buy_author_idx`(`author`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
