-- Shops --

insert into shops (id, name, created_at, in_vacations) values (1, 'Boutique 1', '2021-11-28', false);

insert into opening_hours (id, day, open_at, close_at) values (2, 1, '09:00:00', '18:00:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (1, 2);

insert into opening_hours (id, day, open_at, close_at) values (3, 2, '09:00:00', '18:00:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (1, 3);

insert into opening_hours (id, day, open_at, close_at) values (4, 5, '08:00:00', '17:00:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (1, 4);


insert into shops (id, name, created_at, in_vacations) values (5, 'Boutique 2', '2012-06-25', true);

insert into opening_hours (id, day, open_at, close_at) values (6, 1, '08:45:00', '17:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (5, 6);

insert into opening_hours (id, day, open_at, close_at) values (7, 2, '08:45:00', '17:00:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (5, 7);

insert into opening_hours (id, day, open_at, close_at) values (8, 3, '08:45:00', '18:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (5, 8);

insert into opening_hours (id, day, open_at, close_at) values (9, 4, '08:45:00', '12:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (5, 9);


insert into shops (id, name, created_at, in_vacations) values (10, 'Boutique 3', '2022-01-09', false);

insert into opening_hours (id, day, open_at, close_at) values (11, 6, '08:45:00', '20:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (10, 11);

insert into opening_hours (id, day, open_at, close_at) values (12, 7, '08:15:00', '20:00:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (10, 12);


insert into shops (id, name, created_at, in_vacations) values (13, 'Boutique 4', '2020-04-05', false);

insert into opening_hours (id, day, open_at, close_at) values (14, 4, '10:00:00', '20:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (13, 14);

insert into opening_hours (id, day, open_at, close_at) values (15, 6, '10:00:00', '20:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (13, 15);

insert into opening_hours (id, day, open_at, close_at) values (16, 7, '10:00:00', '20:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (13, 16);


insert into shops (id, name, created_at, in_vacations) values (17, 'Boutique 5', '2017-12-15', true);

insert into opening_hours (id, day, open_at, close_at) values (18, 1, '08:00:00', '21:00:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (17, 18);

insert into opening_hours (id, day, open_at, close_at) values (19, 3, '08:00:00', '21:00:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (17, 19);

insert into opening_hours (id, day, open_at, close_at) values (20, 6, '08:00:00', '21:00:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (17, 20);


insert into shops (id, name, created_at, in_vacations) values (21, 'Boutique 6', '2010-01-03', true);

insert into opening_hours (id, day, open_at, close_at) values (22, 1, '09:00:00', '17:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (21, 22);

insert into opening_hours (id, day, open_at, close_at) values (23, 2, '09:00:00', '17:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (21, 23);

insert into opening_hours (id, day, open_at, close_at) values (24, 3, '09:00:00', '17:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (21, 24);

insert into opening_hours (id, day, open_at, close_at) values (25, 4, '09:00:00', '17:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (21, 25);

insert into opening_hours (id, day, open_at, close_at) values (26, 5, '09:00:00', '17:30:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (21, 26);


insert into shops (id, name, created_at, in_vacations) values (27, 'Boutique 7', '2015-08-20', false);

insert into opening_hours (id, day, open_at, close_at) values (28, 1, '09:15:00', '17:45:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (27, 28);

insert into opening_hours (id, day, open_at, close_at) values (29, 5, '08:15:00', '21:45:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (27, 29);


insert into shops (id, name, created_at, in_vacations) values (30, 'Boutique 8', '2019-06-28', false);

insert into opening_hours (id, day, open_at, close_at) values (31, 2, '08:45:00', '17:45:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (30, 31);

insert into opening_hours (id, day, open_at, close_at) values (32, 3, '08:45:00', '17:45:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (30, 32);

insert into opening_hours (id, day, open_at, close_at) values (33, 6, '08:45:00', '17:45:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (30, 33);


insert into shops (id, name, created_at, in_vacations) values (34, 'Boutique 9', '2016-05-16', false);

insert into opening_hours (id, day, open_at, close_at) values (35, 2, '10:30:00', '16:45:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (34, 35);

insert into opening_hours (id, day, open_at, close_at) values (36, 3, '10:30:00', '16:45:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (34, 36);

insert into opening_hours (id, day, open_at, close_at) values (37, 5, '10:30:00', '16:45:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (34, 37);

insert into opening_hours (id, day, open_at, close_at) values (38, 6, '10:30:00', '16:45:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (34, 38);


insert into shops (id, name, created_at, in_vacations) values (39, 'Boutique 10', '2015-02-17', false);

insert into opening_hours (id, day, open_at, close_at) values (40, 7, '08:00:00', '22:00:00');
insert into shops_opening_hours (shop_id, opening_hours_id) values (39, 40);


-- Categories --

insert into categories (id, name) values (41, 'Nourriture');

insert into categories (id, name) values (42, 'Multimédia');

insert into categories (id, name) values (43, 'Vêtement');

insert into categories (id, name) values (44, 'Chaussure');

insert into categories (id, name) values (45, 'Electroménager');

insert into categories (id, name) values (46, 'Boisson');

insert into categories (id, name) values (47, 'Bio');

insert into categories (id, name) values (48, 'Cuisine');

insert into categories (id, name) values (49, 'Salle de bain');

insert into categories (id, name) values (50, 'Meuble');

insert into categories (id, name) values (51, 'Maquillage');

insert into categories (id, name) values (52, 'Parfum');


-- Produits --

-- 1 to 10 --
insert into products (id, price, shop_id) values (53, 10.99, 1);
insert into localized_product (id, locale, name, description) values (54, 'FR', 'Produit 1', 'Description produit 1');
insert into products_localized_product (product_id, localized_product_id) values (53, 54);
insert into localized_product (id, locale, name, description) values (55, 'EN', 'Product 1', 'Description product 1');
insert into products_localized_product (product_id, localized_product_id) values (53, 55);
insert into products_categories (product_id, category_id) values (53, 43);

insert into products (id, price, shop_id) values (56, 1.99, 1);
insert into localized_product (id, locale, name, description) values (57, 'FR', 'Produit 2', 'Description produit 2');
insert into products_localized_product (product_id, localized_product_id) values (56, 57);
insert into products_categories (product_id, category_id) values (56, 46);

insert into products (id, price, shop_id) values (58, 1.99, 5);
insert into localized_product (id, locale, name) values (59, 'FR', 'Produit 3');
insert into products_localized_product (product_id, localized_product_id) values (58, 59);

insert into products (id, price) values (60, 4.99);
insert into localized_product (id, locale, name) values (61, 'FR', 'Produit 4');
insert into products_localized_product (product_id, localized_product_id) values (60, 61);
insert into localized_product (id, locale, name) values (62, 'EN', 'Product 4');
insert into products_localized_product (product_id, localized_product_id) values (60, 62);
insert into products_categories (product_id, category_id) values (60, 48);
insert into products_categories (product_id, category_id) values (60, 49);

insert into products (id, price, shop_id) values (63, 100, 1);
insert into localized_product (id, locale, name, description) values (64, 'FR', 'Produit 5', 'Description produit 5');
insert into products_localized_product (product_id, localized_product_id) values (63, 64);
insert into localized_product (id, locale, name, description) values (65, 'EN', 'Product 5', 'Description product 5');
insert into products_localized_product (product_id, localized_product_id) values (63, 65);

insert into products (id, price, shop_id) values (66, 21.99, 34);
insert into localized_product (id, locale, name, description) values (67, 'FR', 'Produit 6', 'Description produit 6');
insert into products_localized_product (product_id, localized_product_id) values (66, 67);
insert into localized_product (id, locale, name, description) values (68, 'EN', 'Product 6', 'Description product 6');
insert into products_localized_product (product_id, localized_product_id) values (66, 68);

insert into products (id, price, shop_id) values (69, 9.99, 10);
insert into localized_product (id, locale, name) values (70, 'FR', 'Produit 7');
insert into products_localized_product (product_id, localized_product_id) values (69, 70);
insert into products_categories (product_id, category_id) values (69, 41);

insert into products (id, price, shop_id) values (71, 15, 27);
insert into localized_product (id, locale, name, description) values (72, 'FR', 'Produit 8', 'Description produit 8');
insert into products_localized_product (product_id, localized_product_id) values (71, 72);

insert into products (id, price) values (73, 50.09);
insert into localized_product (id, locale, name) values (74, 'FR', 'Produit 9');
insert into products_localized_product (product_id, localized_product_id) values (73, 74);
insert into products_categories (product_id, category_id) values (73, 41);

insert into products (id, price) values (75, 29.99);
insert into localized_product (id, locale, name) values (76, 'FR', 'Produit 10');
insert into products_localized_product (product_id, localized_product_id) values (75, 76);


-- 11 to 20 --
insert into products (id, price, shop_id) values (77, 100, 13);
insert into localized_product (id, locale, name, description) values (78, 'FR', 'Produit 11', 'Description produit 11');
insert into products_localized_product (product_id, localized_product_id) values (77, 78);
insert into localized_product (id, locale, name, description) values (79, 'EN', 'Product 11', 'Description product 11');
insert into products_localized_product (product_id, localized_product_id) values (77, 79);

insert into products (id, price, shop_id) values (80, 99.99, 27);
insert into localized_product (id, locale, name, description) values (81, 'FR', 'Produit 12', 'Description produit 12');
insert into products_localized_product (product_id, localized_product_id) values (80, 81);
insert into localized_product (id, locale, name, description) values (82, 'EN', 'Product 12', 'Description product 12');
insert into products_localized_product (product_id, localized_product_id) values (80, 82);
insert into products_categories (product_id, category_id) values (80, 43);
insert into products_categories (product_id, category_id) values (80, 44);

insert into products (id, price, shop_id) values (83, 19.99, 39);
insert into localized_product (id, locale, name) values (84, 'FR', 'Produit 13');
insert into products_localized_product (product_id, localized_product_id) values (83, 84);
insert into products_categories (product_id, category_id) values (83, 41);

insert into products (id, price, shop_id) values (85, 0.99, 1);
insert into localized_product (id, locale, name, description) values (86, 'FR', 'Produit 14', 'Description produit 14');
insert into products_localized_product (product_id, localized_product_id) values (85, 86);

insert into products (id, price) values (87, 89.99);
insert into localized_product (id, locale, name) values (88, 'FR', 'Produit 15');
insert into products_localized_product (product_id, localized_product_id) values (87, 88);

insert into products (id, price) values (89, 50.00);
insert into localized_product (id, locale, name, description) values (90, 'FR', 'Produit 16', 'Description produit 16');
insert into products_localized_product (product_id, localized_product_id) values (89, 90);
insert into products_categories (product_id, category_id) values (89, 52);
insert into products_categories (product_id, category_id) values (89, 45);

insert into products (id, price, shop_id) values (91, 1.99, 21);
insert into localized_product (id, locale, name) values (92, 'FR', 'Produit 17');
insert into products_localized_product (product_id, localized_product_id) values (91, 92);
insert into localized_product (id, locale, name) values (93, 'EN', 'Produit 17');
insert into products_localized_product (product_id, localized_product_id) values (91, 93);

insert into products (id, price, shop_id) values (94, 7, 5);
insert into localized_product (id, locale, name, description) values (95, 'FR', 'Produit 18', 'Description produit 18');
insert into products_localized_product (product_id, localized_product_id) values (94, 95);
insert into localized_product (id, locale, name, description) values (96, 'EN', 'Product 18', 'Description product 18');
insert into products_localized_product (product_id, localized_product_id) values (94, 96);
insert into products_categories (product_id, category_id) values (94, 43);

insert into products (id, price, shop_id) values (97, 5.99, 1);
insert into localized_product (id, locale, name, description) values (98, 'FR', 'Produit 19', 'Description produit 19');
insert into products_localized_product (product_id, localized_product_id) values (97, 98);
insert into products_categories (product_id, category_id) values (94, 47);

insert into products (id, price, shop_id) values (99, 9.99, 21);
insert into localized_product (id, locale, name, description) values (100, 'FR', 'Produit 20', 'Description produit 20');
insert into products_localized_product (product_id, localized_product_id) values (99, 100);


-- 21 to 30 --
insert into products (id, price, shop_id) values (101, 20.99, 10);
insert into localized_product (id, locale, name, description) values (102, 'FR', 'Produit 21', 'Description produit 21');
insert into products_localized_product (product_id, localized_product_id) values (101, 102);

insert into products (id, price, shop_id) values (103, 1, 39);
insert into localized_product (id, locale, name, description) values (104, 'FR', 'Produit 22', 'Description produit 22');
insert into products_localized_product (product_id, localized_product_id) values (103, 104);
insert into localized_product (id, locale, name, description) values (105, 'EN', 'Product 22', 'Description product 22');
insert into products_localized_product (product_id, localized_product_id) values (103, 105);

insert into products (id, price, shop_id) values (106, 17, 13);
insert into localized_product (id, locale, name, description) values (107, 'FR', 'Produit 23', 'Description produit 23');
insert into products_localized_product (product_id, localized_product_id) values (106, 107);
insert into localized_product (id, locale, name, description) values (108, 'EN', 'Product 23', 'Description product 23');
insert into products_localized_product (product_id, localized_product_id) values (106, 108);
insert into products_categories (product_id, category_id) values (106, 44);

insert into products (id, price, shop_id) values (109, 15.99, 27);
insert into localized_product (id, locale, name, description) values (110, 'FR', 'Produit 24', 'Description produit 24');
insert into products_localized_product (product_id, localized_product_id) values (109, 110);
insert into products_categories (product_id, category_id) values (109, 52);

insert into products (id, price) values (111, 21.99);
insert into localized_product (id, locale, name) values (112, 'FR', 'Produit 25');
insert into products_localized_product (product_id, localized_product_id) values (111, 112);

insert into products (id, price, shop_id) values (113, 8, 27);
insert into localized_product (id, locale, name, description) values (114, 'FR', 'Produit 26', 'Description produit 26');
insert into products_localized_product (product_id, localized_product_id) values (113, 114);
insert into products_categories (product_id, category_id) values (113, 43);
insert into products_categories (product_id, category_id) values (113, 47);

insert into products (id, price, shop_id) values (115, 9, 30);
insert into localized_product (id, locale, name, description) values (116, 'FR', 'Produit 27', 'Description produit 27');
insert into products_localized_product (product_id, localized_product_id) values (115, 116);

insert into products (id, price, shop_id) values (117, 14, 5);
insert into localized_product (id, locale, name, description) values (118, 'FR', 'Produit 28', 'Description produit 28');
insert into products_localized_product (product_id, localized_product_id) values (117, 118);

insert into products (id, price, shop_id) values (119, 1, 30);
insert into localized_product (id, locale, name, description) values (120, 'FR', 'Produit 29', 'Description produit 29');
insert into products_localized_product (product_id, localized_product_id) values (119, 120);
insert into localized_product (id, locale, name, description) values (121, 'EN', 'Product 29', 'Description product 29');
insert into products_localized_product (product_id, localized_product_id) values (119, 121);

insert into products (id, price) values (122, 1.99);
insert into localized_product (id, locale, name) values (123, 'FR', 'Produit 30');
insert into products_localized_product (product_id, localized_product_id) values (122, 123);
insert into products_categories (product_id, category_id) values (122, 41);


-- 31 to 40 --
insert into products (id, price, shop_id) values (123, 15.99, 5);
insert into localized_product (id, locale, name, description) values (124, 'FR', 'Produit 31', 'Description produit 31');
insert into products_localized_product (product_id, localized_product_id) values (123, 124);

insert into products (id, price, shop_id) values (125, 11.76, 30);
insert into localized_product (id, locale, name) values (126, 'FR', 'Produit 32');
insert into products_localized_product (product_id, localized_product_id) values (125, 126);
insert into products_categories (product_id, category_id) values (125, 41);

insert into products (id, price, shop_id) values (127, 0.90, 5);
insert into localized_product (id, locale, name, description) values (128, 'FR', 'Produit 33', 'Description produit 33');
insert into products_localized_product (product_id, localized_product_id) values (127, 128);
insert into localized_product (id, locale, name, description) values (129, 'EN', 'Product 33', 'Description product 33');
insert into products_localized_product (product_id, localized_product_id) values (127, 129);

insert into products (id, price, shop_id) values (130, 3.99, 27);
insert into localized_product (id, locale, name, description) values (131, 'FR', 'Produit 34', 'Description produit 34');
insert into products_localized_product (product_id, localized_product_id) values (130, 131);

insert into products (id, price, shop_id) values (132, 70, 27);
insert into localized_product (id, locale, name, description) values (133, 'FR', 'Produit 35', 'Description produit 35');
insert into products_localized_product (product_id, localized_product_id) values (132, 133);
insert into localized_product (id, locale, name, description) values (134, 'EN', 'Product 35', 'Description product 35');
insert into products_localized_product (product_id, localized_product_id) values (132, 134);
insert into products_categories (product_id, category_id) values (132, 43);
insert into products_categories (product_id, category_id) values (132, 46);
insert into products_categories (product_id, category_id) values (132, 49);

insert into products (id, price) values (135, 99.99);
insert into localized_product (id, locale, name) values (136, 'FR', 'Produit 36');
insert into products_localized_product (product_id, localized_product_id) values (135, 136);

insert into products (id, price, shop_id) values (137, 10, 17);
insert into localized_product (id, locale, name, description) values (138, 'FR', 'Produit 37', 'Description produit 37');
insert into products_localized_product (product_id, localized_product_id) values (137, 138);
insert into products_categories (product_id, category_id) values (137, 42);

insert into products (id, price) values (139, 5.99);
insert into localized_product (id, locale, name) values (140, 'FR', 'Produit 38');
insert into products_localized_product (product_id, localized_product_id) values (139, 140);

insert into products (id, price, shop_id) values (141, 10.01, 21);
insert into localized_product (id, locale, name) values (142, 'FR', 'Produit 39');
insert into products_localized_product (product_id, localized_product_id) values (141, 142);
insert into localized_product (id, locale, name) values (143, 'EN', 'Product 39');
insert into products_localized_product (product_id, localized_product_id) values (141, 143);
insert into products_categories (product_id, category_id) values (141, 42);
insert into products_categories (product_id, category_id) values (141, 52);

insert into products (id, price, shop_id) values (145, 35, 39);
insert into localized_product (id, locale, name, description) values (146, 'FR', 'Produit 40', 'Description produit 40');
insert into products_localized_product (product_id, localized_product_id) values (145, 146);
insert into localized_product (id, locale, name, description) values (147, 'EN', 'Product 40', 'Description product 40');
insert into products_localized_product (product_id, localized_product_id) values (145, 147);


-- 41 to 50 --
insert into products (id, price, shop_id) values (148, 1.50, 10);
insert into localized_product (id, locale, name) values (149, 'FR', 'Produit 41');
insert into products_localized_product (product_id, localized_product_id) values (148, 149);
insert into localized_product (id, locale, name) values (150, 'EN', 'Product 41');
insert into products_localized_product (product_id, localized_product_id) values (148, 150);
insert into products_categories (product_id, category_id) values (148, 44);

insert into products (id, price) values (151, 8.99);
insert into localized_product (id, locale, name) values (152, 'FR', 'Produit 42');
insert into products_localized_product (product_id, localized_product_id) values (151, 152);

insert into products (id, price, shop_id) values (153, 39.99, 1);
insert into localized_product (id, locale, name, description) values (154, 'FR', 'Produit 43', 'Description produit 43');
insert into products_localized_product (product_id, localized_product_id) values (153, 154);

insert into products (id, price, shop_id) values (155, 9.99, 10);
insert into localized_product (id, locale, name, description) values (156, 'FR', 'Produit 44', 'Description produit 44');
insert into products_localized_product (product_id, localized_product_id) values (155, 156);
insert into products_categories (product_id, category_id) values (155, 50);

insert into products (id, price, shop_id) values (157, 12.10, 34);
insert into localized_product (id, locale, name) values (158, 'FR', 'Produit 45');
insert into products_localized_product (product_id, localized_product_id) values (157, 158);
insert into localized_product (id, locale, name) values (159, 'EN', 'Product 45');
insert into products_localized_product (product_id, localized_product_id) values (157, 159);

insert into products (id, price, shop_id) values (160, 21.89, 30);
insert into localized_product (id, locale, name) values (161, 'FR', 'Produit 46');
insert into products_localized_product (product_id, localized_product_id) values (160, 161);
insert into products_categories (product_id, category_id) values (160, 42);
insert into products_categories (product_id, category_id) values (160, 49);

insert into products (id, price, shop_id) values (162, 67.01, 39);
insert into localized_product (id, locale, name, description) values (163, 'FR', 'Produit 47', 'Description produit 47');
insert into products_localized_product (product_id, localized_product_id) values (162, 163);
insert into localized_product (id, locale, name, description) values (164, 'EN', 'Product 47', 'Description product 47');
insert into products_localized_product (product_id, localized_product_id) values (162, 164);

insert into products (id, price, shop_id) values (165, 4.76, 34);
insert into localized_product (id, locale, name, description) values (166, 'FR', 'Produit 48', 'Description produit 48');
insert into products_localized_product (product_id, localized_product_id) values (165, 166);

insert into products (id, price) values (167, 2.99);
insert into localized_product (id, locale, name) values (168, 'FR', 'Produit 49');
insert into products_localized_product (product_id, localized_product_id) values (167, 168);
insert into products_categories (product_id, category_id) values (167, 44);

insert into products (id, price, shop_id) values (169, 1.98, 17);
insert into localized_product (id, locale, name, description) values (170, 'FR', 'Produit 50', 'Description produit 50');
insert into products_localized_product (product_id, localized_product_id) values (169, 170);
insert into localized_product (id, locale, name, description) values (171, 'EN', 'Product 50', 'Description product 50');
insert into products_localized_product (product_id, localized_product_id) values (169, 171);


-- 51 to 60 --
insert into products (id, price, shop_id) values (172, 2.99, 13);
insert into localized_product (id, locale, name, description) values (173, 'FR', 'Produit 51', 'Description produit 51');
insert into products_localized_product (product_id, localized_product_id) values (172, 173);
insert into localized_product (id, locale, name, description) values (174, 'EN', 'Product 51', 'Description product 51');
insert into products_localized_product (product_id, localized_product_id) values (172, 174);
insert into products_categories (product_id, category_id) values (172, 42);

insert into products (id, price, shop_id) values (175, 20.89, 5);
insert into localized_product (id, locale, name) values (176, 'FR', 'Produit 52');
insert into products_localized_product (product_id, localized_product_id) values (175, 176);

insert into products (id, price, shop_id) values (177, 19.99, 39);
insert into localized_product (id, locale, name, description) values (178, 'FR', 'Produit 53', 'Description produit 53');
insert into products_localized_product (product_id, localized_product_id) values (177, 178);

insert into products (id, price, shop_id) values (179, 65.87, 13);
insert into localized_product (id, locale, name) values (180, 'FR', 'Produit 54');
insert into products_localized_product (product_id, localized_product_id) values (179, 180);
insert into products_categories (product_id, category_id) values (179, 47);
insert into products_categories (product_id, category_id) values (179, 48);

insert into products (id, price, shop_id) values (181, 0.98, 17);
insert into localized_product (id, locale, name, description) values (182, 'FR', 'Produit 55', 'Description produit 55');
insert into products_localized_product (product_id, localized_product_id) values (181, 182);
insert into localized_product (id, locale, name, description) values (183, 'EN', 'Product 55', 'Description product 55');
insert into products_localized_product (product_id, localized_product_id) values (181, 183);
insert into products_categories (product_id, category_id) values (181, 49);
insert into products_categories (product_id, category_id) values (181, 51);

insert into products (id, price, shop_id) values (184, 4.60, 39);
insert into localized_product (id, locale, name, description) values (185, 'FR', 'Produit 56', 'Description produit 56');
insert into products_localized_product (product_id, localized_product_id) values (184, 185);
insert into localized_product (id, locale, name, description) values (186, 'EN', 'Product 56', 'Description product 56');
insert into products_localized_product (product_id, localized_product_id) values (184, 186);

insert into products (id, price, shop_id) values (187, 7.90, 27);
insert into localized_product (id, locale, name, description) values (188, 'FR', 'Produit 57', 'Description produit 57');
insert into products_localized_product (product_id, localized_product_id) values (187, 188);

insert into products (id, price, shop_id) values (189, 0.15, 1);
insert into localized_product (id, locale, name, description) values (190, 'FR', 'Produit 58', 'Description produit 58');
insert into products_localized_product (product_id, localized_product_id) values (189, 190);
insert into products_categories (product_id, category_id) values (189, 41);

insert into products (id, price, shop_id) values (191, 6.03, 27);
insert into localized_product (id, locale, name, description) values (192, 'FR', 'Produit 59', 'Description produit 59');
insert into products_localized_product (product_id, localized_product_id) values (191, 192);
insert into localized_product (id, locale, name, description) values (193, 'EN', 'Product 59', 'Description product 59');
insert into products_localized_product (product_id, localized_product_id) values (191, 193);
insert into products_categories (product_id, category_id) values (191, 42);

insert into products (id, price, shop_id) values (194, 10.10, 30);
insert into localized_product (id, locale, name) values (195, 'FR', 'Produit 60');
insert into products_localized_product (product_id, localized_product_id) values (194, 195);
insert into localized_product (id, locale, name) values (196, 'EN', 'Product 60');
insert into products_localized_product (product_id, localized_product_id) values (194, 196);

-- 61 to 70 --

insert into products (id, price, shop_id) values (197, 2.99, 17);
insert into localized_product (id, locale, name, description) values (198, 'FR', 'Produit 61', 'Description produit 61');
insert into products_localized_product (product_id, localized_product_id) values (197, 198);
insert into localized_product (id, locale, name, description) values (199, 'EN', 'Product 61', 'Description product 61');
insert into products_localized_product (product_id, localized_product_id) values (197, 199);

insert into products (id, price, shop_id) values (200, 7.99, 27);
insert into localized_product (id, locale, name, description) values (201, 'FR', 'Produit 62', 'Description produit 62');
insert into products_localized_product (product_id, localized_product_id) values (200, 201);
insert into localized_product (id, locale, name, description) values (202, 'EN', 'Product 62', 'Description product 62');
insert into products_localized_product (product_id, localized_product_id) values (200, 202);
insert into products_categories (product_id, category_id) values (200, 44);

insert into products (id, price, shop_id) values (203, 10.99, 17);
insert into localized_product (id, locale, name) values (204, 'FR', 'Produit 63');
insert into products_localized_product (product_id, localized_product_id) values (203, 204);
insert into products_categories (product_id, category_id) values (203, 46);

insert into products (id, price, shop_id) values (205, 1.10, 39);
insert into localized_product (id, locale, name, description) values (206, 'FR', 'Produit 64', 'Description produit 64');
insert into products_localized_product (product_id, localized_product_id) values (205, 206);

insert into products (id, price, shop_id) values (207, 37.52, 1);
insert into localized_product (id, locale, name) values (208, 'FR', 'Produit 65');
insert into products_localized_product (product_id, localized_product_id) values (207, 208);
insert into products_categories (product_id, category_id) values (207, 46);

insert into products (id, price, shop_id) values (209, 1.55, 5);
insert into localized_product (id, locale, name, description) values (210, 'FR', 'Produit 66', 'Description produit 66');
insert into products_localized_product (product_id, localized_product_id) values (209, 210);

insert into products (id, price, shop_id) values (211, 8.99, 5);
insert into localized_product (id, locale, name, description) values (212, 'FR', 'Produit 67', 'Description produit 67');
insert into products_localized_product (product_id, localized_product_id) values (211, 212);
insert into localized_product (id, locale, name, description) values (213, 'EN', 'Product 67', 'Description product 67');
insert into products_localized_product (product_id, localized_product_id) values (211, 213);
insert into products_categories (product_id, category_id) values (211, 42);
insert into products_categories (product_id, category_id) values (211, 50);

insert into products (id, price, shop_id) values (214, 16.99, 10);
insert into localized_product (id, locale, name) values (215, 'FR', 'Produit 68');
insert into products_localized_product (product_id, localized_product_id) values (214, 215);

insert into products (id, price, shop_id) values (216, 12.01, 30);
insert into localized_product (id, locale, name, description) values (217, 'FR', 'Produit 69', 'Description produit 69');
insert into products_localized_product (product_id, localized_product_id) values (216, 217);
insert into products_categories (product_id, category_id) values (216, 48);

insert into products (id, price, shop_id) values (218, 18.67, 39);
insert into localized_product (id, locale, name) values (219, 'FR', 'Produit 70');
insert into products_localized_product (product_id, localized_product_id) values (218, 219);
insert into products_categories (product_id, category_id) values (218, 46);

-- 71 to 80 --

insert into products (id, price, shop_id) values (220, 1.99, 1);
insert into localized_product (id, locale, name) values (221, 'FR', 'Produit 71');
insert into products_localized_product (product_id, localized_product_id) values (220, 221);
insert into localized_product (id, locale, name) values (222, 'EN', 'Product 71');
insert into products_localized_product (product_id, localized_product_id) values (220, 222);
insert into products_categories (product_id, category_id) values (220, 46);

insert into products (id, price, shop_id) values (223, 18.99, 13);
insert into localized_product (id, locale, name) values (224, 'FR', 'Produit 72');
insert into products_localized_product (product_id, localized_product_id) values (223, 224);

insert into products (id, price, shop_id) values (225, 3.99, 5);
insert into localized_product (id, locale, name, description) values (226, 'FR', 'Produit 73', 'Description produit 73');
insert into products_localized_product (product_id, localized_product_id) values (225, 226);
insert into localized_product (id, locale, name, description) values (227, 'EN', 'Product 73', 'Description product 73');
insert into products_localized_product (product_id, localized_product_id) values (225, 227);
insert into products_categories (product_id, category_id) values (225, 47);

insert into products (id, price, shop_id) values (228, 2.65, 39);
insert into localized_product (id, locale, name, description) values (229, 'FR', 'Produit 74', 'Description produit 74');
insert into products_localized_product (product_id, localized_product_id) values (228, 229);
insert into localized_product (id, locale, name, description) values (230, 'EN', 'Product 74', 'Description product 74');
insert into products_localized_product (product_id, localized_product_id) values (228, 230);

insert into products (id, price, shop_id) values (231, 76.19, 34);
insert into localized_product (id, locale, name, description) values (232, 'FR', 'Produit 75', 'Description produit 75');
insert into products_localized_product (product_id, localized_product_id) values (231, 232);
insert into products_categories (product_id, category_id) values (231, 49);

insert into products (id, price, shop_id) values (233, 7.01, 17);
insert into localized_product (id, locale, name) values (234, 'FR', 'Produit 76');
insert into products_localized_product (product_id, localized_product_id) values (233, 234);
insert into localized_product (id, locale, name) values (235, 'EN', 'Product 76');
insert into products_localized_product (product_id, localized_product_id) values (233, 235);
insert into products_categories (product_id, category_id) values (233, 50);

insert into products (id, price, shop_id) values (236, 22, 30);
insert into localized_product (id, locale, name, description) values (237, 'FR', 'Produit 77', 'Description produit 77');
insert into products_localized_product (product_id, localized_product_id) values (236, 237);
insert into products_categories (product_id, category_id) values (236, 45);

insert into products (id, price, shop_id) values (238, 14, 27);
insert into localized_product (id, locale, name, description) values (239, 'FR', 'Produit 78', 'Description produit 78');
insert into products_localized_product (product_id, localized_product_id) values (238, 239);

insert into products (id, price, shop_id) values (240, 3.99, 13);
insert into localized_product (id, locale, name, description) values (241, 'FR', 'Produit 79', 'Description produit 79');
insert into products_localized_product (product_id, localized_product_id) values (240, 241);
insert into localized_product (id, locale, name, description) values (242, 'EN', 'Product 79', 'Description product 79');
insert into products_localized_product (product_id, localized_product_id) values (240, 242);
insert into products_categories (product_id, category_id) values (240, 41);
insert into products_categories (product_id, category_id) values (240, 52);

insert into products (id, price, shop_id) values (243, 29, 13);
insert into localized_product (id, locale, name, description) values (244, 'FR', 'Produit 80', 'Description produit 80');
insert into products_localized_product (product_id, localized_product_id) values (243, 244);
insert into products_categories (product_id, category_id) values (243, 52);


-- 81 to 90 --
insert into products (id, price, shop_id) values (245, 5.18, 17);
insert into localized_product (id, locale, name, description) values (246, 'FR', 'Produit 81', 'Description produit 81');
insert into products_localized_product (product_id, localized_product_id) values (245, 246);
insert into localized_product (id, locale, name, description) values (247, 'EN', 'Product 81', 'Description product 81');
insert into products_localized_product (product_id, localized_product_id) values (245, 247);

insert into products (id, price, shop_id) values (248, 7.99, 17);
insert into localized_product (id, locale, name, description) values (249, 'FR', 'Produit 82', 'Description produit 82');
insert into products_localized_product (product_id, localized_product_id) values (248, 249);
insert into localized_product (id, locale, name, description) values (250, 'EN', 'Product 82', 'Description product 82');
insert into products_localized_product (product_id, localized_product_id) values (248, 250);
insert into products_categories (product_id, category_id) values (248, 51);

insert into products (id, price, shop_id) values (251, 2.99, 34);
insert into localized_product (id, locale, name) values (252, 'FR', 'Produit 83');
insert into products_localized_product (product_id, localized_product_id) values (251, 252);

insert into products (id, price, shop_id) values (253, 10.87, 5);
insert into localized_product (id, locale, name, description) values (254, 'FR', 'Produit 84', 'Description produit 84');
insert into products_localized_product (product_id, localized_product_id) values (253, 254);
insert into products_categories (product_id, category_id) values (253, 50);
insert into products_categories (product_id, category_id) values (253, 46);

insert into products (id, price) values (255, 12);
insert into localized_product (id, locale, name) values (256, 'FR', 'Produit 85');
insert into products_localized_product (product_id, localized_product_id) values (255, 256);

insert into products (id, price) values (257, 65);
insert into localized_product (id, locale, name, description) values (258, 'FR', 'Produit 86', 'Description produit 86');
insert into products_localized_product (product_id, localized_product_id) values (257, 258);

insert into products (id, price, shop_id) values (259, 1.99, 1);
insert into localized_product (id, locale, name) values (260, 'FR', 'Produit 87');
insert into products_localized_product (product_id, localized_product_id) values (259, 260);
insert into localized_product (id, locale, name) values (261, 'EN', 'Produit 87');
insert into products_localized_product (product_id, localized_product_id) values (259, 261);
insert into products_categories (product_id, category_id) values (259, 41);

insert into products (id, price, shop_id) values (262, 7, 21);
insert into localized_product (id, locale, name, description) values (263, 'FR', 'Produit 88', 'Description produit 88');
insert into products_localized_product (product_id, localized_product_id) values (262, 263);
insert into localized_product (id, locale, name, description) values (264, 'EN', 'Product 88', 'Description product 88');
insert into products_localized_product (product_id, localized_product_id) values (262, 264);
insert into products_categories (product_id, category_id) values (262, 43);

insert into products (id, price, shop_id) values (265, 9.99, 27);
insert into localized_product (id, locale, name, description) values (266, 'FR', 'Produit 89', 'Description produit 89');
insert into products_localized_product (product_id, localized_product_id) values (265, 266);
insert into products_categories (product_id, category_id) values (265, 49);

insert into products (id, price, shop_id) values (267, 99.99, 17);
insert into localized_product (id, locale, name, description) values (268, 'FR', 'Produit 90', 'Description produit 90');
insert into products_localized_product (product_id, localized_product_id) values (267, 268);


-- 91 to 100 --
insert into products (id, price, shop_id) values (269, 0.99, 1);
insert into localized_product (id, locale, name, description) values (270, 'FR', 'Produit 91', 'Description produit 91');
insert into products_localized_product (product_id, localized_product_id) values (269, 270);
insert into localized_product (id, locale, name, description) values (271, 'EN', 'Product 91', 'Description product 91');
insert into products_localized_product (product_id, localized_product_id) values (269, 271);
insert into products_categories (product_id, category_id) values (269, 50);

insert into products (id, price, shop_id) values (272, 3.89, 17);
insert into localized_product (id, locale, name) values (273, 'FR', 'Produit 92');
insert into products_localized_product (product_id, localized_product_id) values (272, 273);
insert into products_categories (product_id, category_id) values (272, 42);

insert into products (id, price, shop_id) values (274, 19.99, 13);
insert into localized_product (id, locale, name, description) values (275, 'FR', 'Produit 93', 'Description produit 93');
insert into products_localized_product (product_id, localized_product_id) values (274, 275);

insert into products (id, price, shop_id) values (277, 200, 17);
insert into localized_product (id, locale, name) values (278, 'FR', 'Produit 94');
insert into products_localized_product (product_id, localized_product_id) values (277, 278);
insert into products_categories (product_id, category_id) values (277, 46);

insert into products (id, price, shop_id) values (279, 55.10, 21);
insert into localized_product (id, locale, name, description) values (280, 'FR', 'Produit 95', 'Description produit 95');
insert into products_localized_product (product_id, localized_product_id) values (279, 280);
insert into localized_product (id, locale, name, description) values (281, 'EN', 'Product 95', 'Description product 95');
insert into products_localized_product (product_id, localized_product_id) values (279, 281);

insert into products (id, price, shop_id) values (282, 3.60, 34);
insert into localized_product (id, locale, name, description) values (283, 'FR', 'Produit 96', 'Description produit 96');
insert into products_localized_product (product_id, localized_product_id) values (282, 283);
insert into localized_product (id, locale, name, description) values (284, 'EN', 'Product 96', 'Description product 96');
insert into products_localized_product (product_id, localized_product_id) values (282, 284);
insert into products_categories (product_id, category_id) values (282, 43);
insert into products_categories (product_id, category_id) values (282, 47);

insert into products (id, price, shop_id) values (285, 2.90, 27);
insert into localized_product (id, locale, name, description) values (286, 'FR', 'Produit 97', 'Description produit 97');
insert into products_localized_product (product_id, localized_product_id) values (285, 286);

insert into products (id, price, shop_id) values (287, 0.95, 5);
insert into localized_product (id, locale, name, description) values (288, 'FR', 'Produit 98', 'Description produit 98');
insert into products_localized_product (product_id, localized_product_id) values (287, 288);

insert into products (id, price, shop_id) values (289, 9, 5);
insert into localized_product (id, locale, name, description) values (290, 'FR', 'Produit 99', 'Description produit 99');
insert into products_localized_product (product_id, localized_product_id) values (289, 290);
insert into localized_product (id, locale, name, description) values (291, 'EN', 'Product 99', 'Description product 99');
insert into products_localized_product (product_id, localized_product_id) values (289, 291);
insert into products_categories (product_id, category_id) values (289, 42);

insert into products (id, price, shop_id) values (292, 8.10, 27);
insert into localized_product (id, locale, name) values (293, 'FR', 'Produit 100');
insert into products_localized_product (product_id, localized_product_id) values (292, 293);
insert into localized_product (id, locale, name) values (294, 'EN', 'Product 100');
insert into products_localized_product (product_id, localized_product_id) values (292, 294);
insert into products_categories (product_id, category_id) values (292, 45);


-- Hibernate Sequence --

create sequence hibernate_sequence start 295 increment 1;