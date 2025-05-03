INSERT INTO tienda_ropa.clientes (nombre, correo, telefono, direccion) VALUES
('Ana Martínez', 'ana@mail.com', '555-2000', 'Calle A #123'),
('Paola Ramírez', 'paola@mail.com', '555-2001', 'Av. B #456'),
('Lucía Herrera', 'lucia@mail.com', '555-2002', 'Blvd. C #789'),
('Claudia Díaz', 'claudia@mail.com', '555-2003', 'Calle D #321'),
('Fernanda Ruiz', 'fernanda@mail.com', '555-2004', 'Av. E #654'),
('Andrea Gómez', 'andrea@mail.com', '555-2005', 'Calle F #987'),
('Gabriela Soto', 'gabriela@mail.com', '555-2006', 'Blvd. G #147'),
('Camila Torres', 'camila@mail.com', '555-2007', 'Av. H #258'),
('Daniela Vega', 'daniela@mail.com', '555-2008', 'Calle I #369'),
('María López', 'maria@mail.com', '555-2009', 'Av. J #741'),
('Verónica León', 'veronica@mail.com', '555-2010', 'Calle K #852'),
('Laura Méndez', 'laura@mail.com', '555-2011', 'Blvd. L #963'),
('Rebeca Núñez', 'rebeca@mail.com', '555-2012', 'Av. M #159'),
('Patricia Gil', 'patricia@mail.com', '555-2013', 'Calle N #753'),
('Julia Campos', 'julia@mail.com', '555-2014', 'Av. O #456'),
('Alicia Mendoza', 'alicia@mail.com', '555-2015', 'Calle P #987'),
('Natalia Rivas', 'natalia@mail.com', '555-2016', 'Av. Q #321'),
('Liliana Franco', 'liliana@mail.com', '555-2017', 'Calle R #654'),
('Rosa Salas', 'rosa@mail.com', '555-2018', 'Av. S #987'),
('Cliente mostrador', NULL, NULL, NULL);
SHOW WARNINGS;
INSERT INTO tienda_ropa.proveedores (nombre, contacto, telefono) VALUES
('Moda Latina S.A.', 'Laura Gómez', '555-1000'),
('Estilo Chic', 'Carlos Pérez', '555-1001'),
('FashionExpress', 'Ana Torres', '555-1002'),
('Ropa&Más', 'Pedro Jiménez', '555-1003'),
('GlamourTex', 'María López', '555-1004'),
('Estilo MX', 'Sandra Cruz', '555-1005'),
('Textiles y Moda', 'Luis Herrera', '555-1006'),
('Chic Boutique', 'Carla Ortega', '555-1007'),
('Trendy Now', 'Daniel Romero', '555-1008'),
('Ropa Cool', 'Fernanda Díaz', '555-1009'),
('Estilo Urbano', 'Nadia Vela', '555-1010'),
('Moda Express', 'Patricia Solís', '555-1011'),
('Elegancia Total', 'Eduardo Ríos', '555-1012'),
('Urban Look', 'Sofía Gil', '555-1013'),
('Ropa Viva', 'Victor Guzmán', '555-1014'),
('Luxury Wear', 'Isabel Reyes', '555-1015'),
('Estilo Mujer', 'Carolina Vega', '555-1016'),
('Accesorios Bonitos', 'Gina Morales', '555-1017'),
('Calzado Total', 'Alfredo Gálvez', '555-1018'),
('La Boutique', 'Renata Salas', '555-1019');
SHOW WARNINGS;
INSERT INTO tienda_ropa.categorias (nombre_categoria) VALUES
('Ropa Dama'),
('Ropa Caballero'),
('Ropa Infantil'),
('Zapatos Dama'),
('Zapatos Caballero'),
('Zapatos Infantiles'),
('Accesorios Dama'),
('Accesorios Caballero'),
('Bolsas'),
('Relojes'),
('Lentes de Sol'),
('Bufandas'),
('Sombreros'),
('Gorras'),
('Ropa Deportiva'),
('Lencería'),
('Ropa Formal'),
('Pijamas'),
('Calcetines'),
('Trajes de Baño');
SHOW WARNINGS;
INSERT INTO tienda_ropa.productos 
(nombre, descripcion, precio, stock, id_categoria, id_proveedor) 
VALUES
('Blusa elegante', 'Blusa de seda para dama, color marfil', 399.99, 20, 1, 1),
('Pantalón de mezclilla', 'Pantalón de corte recto para caballero', 499.00, 30, 2, 2),
('Vestido floral', 'Vestido veraniego con estampado de flores', 599.50, 15, 1, 3),
('Camisa formal', 'Camisa blanca de vestir para caballero', 349.00, 25, 2, 1),
('Zapatos de tacón', 'Tacones color negro, talla 6-9', 799.99, 10, 4, 2),
('Zapatillas deportivas', 'Zapatillas unisex para correr', 699.90, 18, 5, 3),
('Sudadera con capucha', 'Sudadera gris unisex', 299.00, 22, 5, 4),
('Jeans rasgados', 'Pantalones rasgados estilo urbano', 449.99, 12, 2, 1),
('Blazer', 'Blazer azul marino entallado', 899.99, 5, 1, 5),
('Falda midi', 'Falda estampada con pliegues', 379.00, 8, 1, 2),
('Gorra deportiva', 'Gorra ajustable con logo bordado', 159.00, 35, 14, 3),
('Reloj análogo', 'Reloj metálico elegante', 1200.00, 7, 10, 4),
('Bolso de mano', 'Bolso de cuero sintético color café', 699.00, 10, 9, 1),
('Bufanda tejida', 'Bufanda de lana color vino', 149.99, 20, 12, 2),
('Sombrero de ala ancha', 'Sombrero estilo playa', 299.99, 12, 13, 3),
('Pijama de algodón', 'Conjunto de pijama estampada', 249.50, 18, 18, 5),
('Traje de baño', 'Bikini floral de dos piezas', 349.90, 14, 20, 4),
('Lentes de sol', 'Gafas polarizadas con marco negro', 399.00, 25, 11, 2),
('Camiseta básica', 'Playera de algodón 100%, varios colores', 129.99, 40, 1, 1),
('Calcetas deportivas', 'Pack de 3 pares, talla única', 99.00, 50, 19, 3);
SHOW WARNINGS;
INSERT INTO tienda_ropa.ventas (fecha_venta, id_cliente) VALUES
('2025-05-01', 1), ('2025-05-01', 2), ('2025-05-02', 3), ('2025-05-02', 4),
('2025-05-03', 5), ('2025-05-03', 6), ('2025-05-04', 7), ('2025-05-04', 8),
('2025-05-05', 9), ('2025-05-05', 10), ('2025-05-06', 11), ('2025-05-06', 12),
('2025-05-07', 13), ('2025-05-07', 14), ('2025-05-08', 15), ('2025-05-08', 16),
('2025-05-09', 17), ('2025-05-09', 18), ('2025-05-10', 19), ('2025-05-10', 20);
SHOW WARNINGS;
INSERT INTO tienda_ropa.detalle_venta (id_venta, id_producto, cantidad, subtotal) VALUES
(1, 1, 1, 399.99), (1, 3, 2, 1199.00), (2, 4, 1, 349.00), (2, 5, 1, 799.99),
(3, 6, 1, 699.90), (3, 2, 2, 998.00), (4, 8, 1, 449.99), (5, 9, 1, 899.99),
(6, 10, 1, 379.00), (7, 11, 2, 318.00), (8, 12, 1, 1200.00), (9, 13, 1, 699.00),
(10, 14, 1, 149.99), (11, 15, 1, 299.99), (12, 16, 1, 249.50), (13, 17, 2, 699.80),
(14, 18, 1, 399.00), (15, 19, 1, 129.99), (16, 20, 1, 99.00), (17, 7, 1, 299.00);
SHOW WARNINGS;