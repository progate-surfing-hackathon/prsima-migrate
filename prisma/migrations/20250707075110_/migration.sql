-- CreateTable
CREATE TABLE `users` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `activity` (
    `id` VARCHAR(191) NOT NULL,
    `author` VARCHAR(191) NOT NULL,
    `timestamp` DATETIME(3) NOT NULL,
    `location` JSON NULL,
    `weather` JSON NULL,
    `health` JSON NULL,
    `item_name` VARCHAR(191) NOT NULL,

    INDEX `activity_author_idx`(`author`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `activity` ADD CONSTRAINT `activity_author_fkey` FOREIGN KEY (`author`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
