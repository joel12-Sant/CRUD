use tienda_ropa;
INSERT INTO categorias (nombre_categoria) VALUES
('Blusas'), ('Pantalones'), ('Accesorios'), ('Zapatos'),
('Faldas'), ('Vestidos'), ('Bolsos'), ('Lentes de sol'),
('Abrigos'), ('Chaquetas'), ('Sudaderas'), ('Playeras'),
('Ropa interior'), ('Bufandas'), ('Sombreros'), ('Guantes'),
('Medias'), ('Joyas'), ('Cinturones'), ('Pijamas');

INSERT INTO proveedores (nombre, contacto, telefono) VALUES
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

INSERT INTO productos (nombre, descripcion, precio, stock, id_categoria, id_proveedor) VALUES
('Blusa encaje', 'Blanca, manga larga', 299.00, 15, 1, 1),
('Jeans skinny', 'Ajustado, azul', 399.00, 10, 2, 2),
('Aretes dorados', 'Circulares', 120.00, 20, 3, 3),
('Sandalias planas', 'Rojas, correa', 350.00, 8, 4, 4),
('Falda plisada', 'Azul marino', 280.00, 12, 5, 5),
('Vestido floral', 'Estampado primavera', 420.00, 10, 6, 6),
('Bolso cuero', 'Marrón, correa larga', 550.00, 5, 7, 7),
('Lentes sol retro', 'Marco dorado', 190.00, 18, 8, 8),
('Abrigo largo', 'Gris oscuro', 800.00, 6, 9, 9),
('Chaqueta denim', 'Azul claro', 450.00, 10, 10, 10),
('Sudadera básica', 'Gris jaspeado', 320.00, 20, 11, 11),
('Playera estampada', 'Diseño pop', 210.00, 25, 12, 12),
('Brasier encaje', 'Color vino', 250.00, 30, 13, 13),
('Bufanda lana', 'Color vino', 180.00, 15, 14, 14),
('Sombrero playa', 'De palma', 170.00, 10, 15, 15),
('Guantes de piel', 'Negros, talla M', 220.00, 8, 16, 16),
('Medias térmicas', 'Negras', 140.00, 20, 17, 17),
('Collar elegante', 'Con piedra azul', 280.00, 10, 18, 18),
('Cinturón cuero', 'Negro, hebilla plateada', 200.00, 12, 19, 19),
('Pijama algodón', 'Dos piezas, rosada', 300.00, 15, 20, 20);

INSERT INTO clientes (nombre, correo, telefono, direccion) VALUES
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

INSERT INTO ventas (fecha_venta, id_cliente) VALUES
('2025-05-01', 1), ('2025-05-01', 2), ('2025-05-02', 3), ('2025-05-02', 4),
('2025-05-03', 5), ('2025-05-03', 6), ('2025-05-04', 7), ('2025-05-04', 8),
('2025-05-05', 9), ('2025-05-05', 10), ('2025-05-06', 11), ('2025-05-06', 12),
('2025-05-07', 13), ('2025-05-07', 14), ('2025-05-08', 15), ('2025-05-08', 16),
('2025-05-09', 17), ('2025-05-09', 18), ('2025-05-10', 19), ('2025-05-10', 20);

INSERT INTO detalle_venta (id_venta, id_producto, cantidad, subtotal) VALUES
(1, 1, 1, 299.00), (1, 3, 2, 240.00), (2, 4, 1, 350.00), (2, 5, 1, 280.00),
(3, 6, 1, 420.00), (3, 2, 2, 798.00), (4, 8, 1, 190.00), (5, 9, 1, 800.00),
(6, 10, 1, 450.00), (7, 11, 2, 640.00), (8, 12, 1, 210.00), (9, 13, 1, 250.00),
(10, 14, 1, 180.00), (11, 15, 1, 170.00), (12, 16, 1, 220.00), (13, 17, 2, 280.00),
(14, 18, 1, 280.00), (15, 19, 1, 200.00), (16, 20, 1, 300.00), (17, 7, 1, 550.00);
