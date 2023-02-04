CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar (100) NOT NULL
);
  
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `products` AUTO_INCREMENT=100;