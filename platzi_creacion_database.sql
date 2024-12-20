DROP DATABASE IF EXISTS proyecto_platzi;

-- CREAR LA BASE DE DATOS
CREATE DATABASE proyecto_platzi;
USE proyecto_platzi;


-- CREAR LAS TABLAS
CREATE TABLE Categorias (
	categoria_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Productos (
	producto_id INT UNSIGNED NOT NULL auto_increment PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria_id INT UNSIGNED,
    precio DECIMAL(10,2),
    stock INT,
	FOREIGN KEY (categoria_id) REFERENCES Categorias(categoria_id)
);

CREATE TABLE Clientes (
	cliente_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    direccion VARCHAR(200),
    telefono VARCHAR(30)
);

CREATE TABLE Pedidos (
	pedido_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT UNSIGNED,
    fecha DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id) 
);

CREATE TABLE DetallesPedidos (
	detalles_pedidos_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT UNSIGNED,
    producto_id INT UNSIGNED,
    cantidad INT,
    precio DECIMAL(10,2),
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(pedido_id),
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

-- INSERTAR LOS VALORES PARA CADA TABLA
INSERT INTO Categorias (nombre) VALUES
	('Electrónica'),
    ('Ropa'),
    ('Juguetes'),
    ('Hogar'),
    ('Deportes'),
    ('Libros'),
    ('Automóviles');

INSERT INTO Productos (nombre, categoria_id, precio, stock) VALUES
	('Teléfono', 1, 599.99, 50),
    ('Camiseta', 2, 19.99, 100), 
	('Sofá', 3, 899.99, 10),
	('Bicicleta', 4, 299.99, 20),
	('Muñeca', 5, 14.99, 200),
	('Novela', 6, 9.99, 150),
	('Coche', 7, 15000.00, 5),
	('Televisor', 1, 399.99, 30),
	('Pantalones', 2, 29.99, 80),
	('Mesa', 3, 199.99, 25),
	('Balón de fútbol', 4, 24.99, 60),
	('Puzzle', 5, 12.99, 120),
	('Enciclopedia', 6, 49.99, 70),
	('Moto', 7, 8000.00, 8);

INSERT INTO Clientes (nombre, email, direccion, telefono) VALUES 
	('Juan Pérez', 'perezjuan@gmail.com', 'Calle Falsa 123', '555-274'),
    ('Ana Gómez', 'ana@example.com', 'Avenida Siempre Viva 742', '555-5678'),
	('Carlos Martínez', 'carlos@example.com', 'Boulevard de los Sueños 33', '555-7890'),
	('Lucía Fernández', 'lucia@example.com', 'Calle del Sol 101', '555-2345'),
	('Pedro Sánchez', 'pedro@example.com', 'Avenida de la Paz 456', '555-3456'),
	('Marta López', 'marta@example.com', 'Plaza Mayor 7', '555-4567'),
	('Laura Ruiz', 'laura@example.com', 'Calle Luna 18', '555-5678'),
	('Jorge Ramírez', 'jorge@example.com', 'Paseo de la Castellana 99', '555-6789'),
	('María Torres', 'maria@example.com', 'Calle del Mar 22', '555-7890'),
	('Luis Hernández', 'luis@example.com', 'Avenida de las Estrellas 3', '555-8901'),
    ('John Smith', 'john.smith@example.com', '123 Elm Street', '555-1234'),
	('Jane Doe', 'jane.doe@example.com', '456 Oak Avenue', '555-5678'),
	('Michael Johnson', 'michael.johnson@example.com', '789 Pine Road', '555-9101'),
	('Emily Davis', 'emily.davis@example.com', '101 Maple Lane', '555-1123'),
	('Daniel Brown', 'daniel.brown@example.com', '202 Birch Boulevard', '555-1456'),
	('Laura Wilson', 'laura.wilson@example.com', '303 Cedar Drive', '555-1789'),
	('David Martinez', 'david.martinez@example.com', '404 Spruce Court', '555-2123'),
	('Sarah Anderson', 'sarah.anderson@example.com', '505 Aspen Way', '555-2456'),
	('Robert Thomas', 'robert.thomas@example.com', '606 Walnut Circle', '555-2789'),
	('Jessica Taylor', 'jessica.taylor@example.com', '707 Cherry Street', '555-3123'),
	('William Moore', 'william.moore@example.com', '808 Hickory Drive', '555-3456'),
	('Sophia Jackson', 'sophia.jackson@example.com', '909 Redwood Lane', '555-3789'),
	('James White', 'james.white@example.com', '1010 Ash Avenue', '555-4123'),
	('Olivia Harris', 'olivia.harris@example.com', '1111 Pinecone Boulevard', '555-4456'),
	('Alexander Clark', 'alexander.clark@example.com', '1212 Willow Road', '555-4789'),
	('Ava Lewis', 'ava.lewis@example.com', '1313 Fir Court', '555-5123'),
	('Benjamin Walker', 'benjamin.walker@example.com', '1414 Sequoia Drive', '555-5456'),
	('Isabella Hall', 'isabella.hall@example.com', '1515 Cypress Lane', '555-5789'),
	('Jacob Allen', 'jacob.allen@example.com', '1616 Redwood Way', '555-6123'),
	('Mia Young', 'mia.young@example.com', '1717 Elm Street', '555-6456'),
	('Ethan Hernandez', 'ethan.hernandez@example.com', '1818 Oak Avenue', '555-6789'),
	('Amelia King', 'amelia.king@example.com', '1919 Pine Road', '555-7123'),
	('Lucas Wright', 'lucas.wright@example.com', '2020 Maple Lane', '555-7456'),
	('Charlotte Lopez', 'charlotte.lopez@example.com', '2121 Birch Boulevard', '555-7789'),
	('Mason Scott', 'mason.scott@example.com', '2222 Cedar Drive', '555-8123'),
	('Harper Green', 'harper.green@example.com', '2323 Spruce Court', '555-8456'),
	('Logan Adams', 'logan.adams@example.com', '2424 Aspen Way', '555-8789'),
	('Lily Baker', 'lily.baker@example.com', '2525 Walnut Circle', '555-9123'),
	('Aiden Gonzalez', 'aiden.gonzalez@example.com', '2626 Cherry Street', '555-9456'),
	('Zoe Nelson', 'zoe.nelson@example.com', '2727 Hickory Drive', '555-9789'),
	('Jack Carter', 'jack.carter@example.com', '2828 Redwood Lane', '555-1012'),
	('Grace Mitchell', 'grace.mitchell@example.com', '2929 Ash Avenue', '555-1145'),
	('Noah Perez', 'noah.perez@example.com', '3030 Pinecone Boulevard', '555-1278'),
	('Chloe Roberts', 'chloe.roberts@example.com', '3131 Willow Road', '555-1412'),
	('Liam Turner', 'liam.turner@example.com', '3232 Fir Court', '555-1545'),
	('Ella Phillips', 'ella.phillips@example.com', '3333 Sequoia Drive', '555-1678'),
	('Jayden Campbell', 'jayden.campbell@example.com', '3434 Cypress Lane', '555-1812'),
	('Avery Parker', 'avery.parker@example.com', '3535 Redwood Way', '555-1945'),
	('Michael Evans', 'michael.evans@example.com', '3636 Elm Street', '555-2078'),
	('Abigail Edwards', 'abigail.edwards@example.com', '3737 Oak Avenue', '555-2212'),
	('Daniel Collins', 'daniel.collins@example.com', '3838 Pine Road', '555-2345'),
	('Sofia Stewart', 'sofia.stewart@example.com', '3939 Maple Lane', '555-2478'),
	('Jackson Morris', 'jackson.morris@example.com', '4040 Birch Boulevard', '555-2612'),
	('Layla Reed', 'layla.reed@example.com', '4141 Cedar Drive', '555-2745'),
	('Elijah Cook', 'elijah.cook@example.com', '4242 Spruce Court', '555-2878'),
	('Mila Murphy', 'mila.murphy@example.com', '4343 Aspen Way', '555-3012'),
	('Oliver Rogers', 'oliver.rogers@example.com', '4444 Walnut Circle', '555-3145'),
	('Scarlett Bell', 'scarlett.bell@example.com', '4545 Cherry Street', '555-3278'),
	('Lucas Cooper', 'lucas.cooper@example.com', '4646 Hickory Drive', '555-3412'),
	('Victoria Richardson', 'victoria.richardson@example.com', '4747 Redwood Lane', '555-3545'),
	('David Cox', 'david.cox@example.com', '4848 Ash Avenue', '555-3678'),
	('Aubrey Howard', 'aubrey.howard@example.com', '4949 Pinecone Boulevard', '555-3812'),
	('Mason Ward', 'mason.ward@example.com', '5050 Willow Road', '555-3945'),
	('Zoey Simmons', 'zoey.simmons@example.com', '5151 Fir Court', '555-4078'),
	('Sebastian Foster', 'sebastian.foster@example.com', '5252 Sequoia Drive', '555-4212'),
	('Aria Powell', 'aria.powell@example.com', '5353 Cypress Lane', '555-4345'),
	('Henry Russell', 'henry.russell@example.com', '5454 Redwood Way', '555-4478'),
	('Hannah Long', 'hannah.long@example.com', '5555 Elm Street', '555-4612'),
	('Mateo Griffin', 'mateo.griffin@example.com', '5656 Oak Avenue', '555-4745'),
	('Addison Diaz', 'addison.diaz@example.com', '5757 Pine Road', '555-4878'),
	('Liam Hayes', 'liam.hayes@example.com', '5858 Maple Lane', '555-5012'),
	('Aurora Hughes', 'aurora.hughes@example.com', '5959 Birch Boulevard', '555-5145'),
	('Ethan Bryant', 'ethan.bryant@example.com', '6060 Cedar Drive', '555-5278'),
	('Riley Lee', 'riley.lee@example.com', '6161 Spruce Court', '555-5412'),
	('James Kelly', 'james.kelly@example.com', '6262 Aspen Way', '555-5545'),
	('Evelyn King', 'evelyn.king@example.com', '6363 Walnut Circle', '555-5678'),
	('Alexander Turner', 'alexander.turner@example.com', '6464 Cherry Street', '555-5812'),
	('Lillian Martinez', 'lillian.martinez@example.com', '6565 Hickory Drive', '555-5945'),
	('Gabriel Clark', 'gabriel.clark@example.com', '6666 Redwood Lane', '555-6078'),
	('Avery Walker', 'avery.walker@example.com', '6767 Ash Avenue', '555-6212'),
	('Matthew Young', 'matthew.young@example.com', '6868 Pinecone Boulevard', '555-6345'),
	('Harper Hernandez', 'harper.hernandez@example.com', '6969 Willow Road', '555-6478'),
	('Sebastian Allen', 'sebastian.allen@example.com', '7070 Fir Court', '555-6612'),
	('Victoria Nelson', 'victoria.nelson@example.com', '7171 Sequoia Drive', '555-6745'),
	('Logan Wright', 'logan.wright@example.com', '7272 Cypress Lane', '555-6878'),
	('Elizabeth Hill', 'elizabeth.hill@example.com', '7373 Redwood Way', '555-7012'),
	('Aiden Scott', 'aiden.scott@example.com', '7474 Elm Street', '555-7145'),
	('Ella Green', 'ella.green@example.com', '7575 Oak Avenue', '555-7278'),
	('Mason Adams', 'mason.adams@example.com', '7676 Pine Road', '555-7412'),
	('Sofia Baker', 'sofia.baker@example.com', '7777 Maple Lane', '555-7545');


INSERT INTO Pedidos (cliente_id, fecha, total) VALUES
	(1, '2024-11-01', 120.50),
	(1, '2024-11-15', 95.30),
	(1, '2024-12-01', 140.75),
	(2, '2024-11-05', 60.20),
	(2, '2024-11-18', 85.40),
	(2, '2024-12-10', 99.99),
	(3, '2024-11-02', 110.00),
	(3, '2024-11-25', 115.50),
	(3, '2024-12-05', 125.00),
	(4, '2024-11-03', 45.00),
	(4, '2024-11-22', 55.00),
	(5, '2024-11-06', 200.00),
	(5, '2024-11-18', 175.50),
	(6, '2024-11-07', 90.30),
	(6, '2024-11-23', 120.00),
	(7, '2024-11-08', 150.00),
	(7, '2024-11-19', 170.25),
	(7, '2024-12-01', 180.00),
	(8, '2024-11-10', 95.60),
	(8, '2024-11-28', 140.50),
	(9, '2024-11-11', 85.00),
	(9, '2024-11-26', 80.75),
	(9, '2024-12-04', 95.90),
	(10, '2024-11-12', 120.00),
	(10, '2024-11-27', 130.40),
	(11, '2024-11-13', 60.80),
	(11, '2024-11-30', 95.30),
	(12, '2024-11-14', 220.00),
	(12, '2024-12-02', 250.40),
	(13, '2024-11-16', 130.00),
	(13, '2024-11-29', 145.60),
	(13, '2024-12-10', 160.50),
	(14, '2024-11-17', 85.90),
	(14, '2024-11-30', 110.25),
	(15, '2024-11-18', 200.60),
	(15, '2024-12-03', 190.75),
	(16, '2024-11-20', 175.50),
	(16, '2024-12-05', 160.30),
	(17, '2024-11-21', 95.00),
	(17, '2024-11-25', 110.40),
	(18, '2024-11-22', 120.60),
	(18, '2024-12-06', 130.00),
	(19, '2024-11-23', 170.00),
	(19, '2024-12-07', 180.50),
	(19, '2024-12-10', 150.00),
	(20, '2024-11-24', 110.20),
	(20, '2024-12-08', 120.90),
	(21, '2024-11-25', 130.40),
	(21, '2024-11-29', 135.00),
	(21, '2024-12-10', 145.60),
	(22, '2024-11-26', 105.00),
	(22, '2024-12-01', 95.50),
	(23, '2024-11-27', 100.30),
	(23, '2024-12-05', 110.00),
	(24, '2024-11-28', 150.80),
	(24, '2024-12-03', 170.50),
	(25, '2024-11-29', 90.00),
	(25, '2024-12-07', 125.50),
	(26, '2024-11-30', 85.00),
	(26, '2024-12-02', 95.30),
	(27, '2024-12-01', 180.00),
	(27, '2024-12-10', 170.75),
	(28, '2024-12-02', 110.00),
	(28, '2024-12-06', 100.50),
	(29, '2024-12-03', 125.00),
	(29, '2024-12-09', 135.20),
	(30, '2024-12-04', 140.00),
	(30, '2024-12-10', 160.40),
	(31, '2024-12-05', 180.30),
	(32, '2024-12-06', 170.20),
	(33, '2024-12-07', 150.00),
	(34, '2024-12-08', 125.50),
	(35, '2024-12-09', 140.00),
	(36, '2024-12-10', 160.00),
	(36, '2025-01-02', 175.30),
	(37, '2024-12-11', 100.00),
	(38, '2024-12-12', 85.40),
	(39, '2024-12-13', 120.00),
	(39, '2025-01-01', 130.50),
	(40, '2024-12-14', 175.80),
	(41, '2024-12-15', 95.70),
	(42, '2024-12-16', 110.50),
	(42, '2025-01-03', 120.00),
	(43, '2024-12-17', 130.20),
	(44, '2024-12-18', 140.00),
	(45, '2024-12-19', 120.30),
	(45, '2025-01-04', 110.50),
	(46, '2024-12-20', 125.00),
	(47, '2024-12-21', 150.40),
	(48, '2024-12-22', 135.00),
	(49, '2024-12-23', 160.00),
	(50, '2024-12-24', 170.60),
	(51, '2024-12-25', 110.90),
	(52, '2024-12-26', 120.00),
	(53, '2024-12-27', 130.50),
	(54, '2024-12-28', 140.00),
	(55, '2024-12-29', 125.00),
	(56, '2024-12-30', 150.00),
	(57, '2024-12-31', 160.50),
	(58, '2025-01-01', 170.00),
	(59, '2025-01-02', 180.00),
	(60, '2025-01-03', 150.00),
	(61, '2025-01-04', 110.30),
	(62, '2025-01-05', 120.00),
	(63, '2025-01-06', 130.00),
	(64, '2025-01-07', 135.50),
	(65, '2025-01-08', 145.00),
	(66, '2025-01-09', 155.30),
	(67, '2025-01-10', 165.00),
	(68, '2025-01-11', 175.00),
	(69, '2025-01-12', 185.50),
	(70, '2025-01-13', 195.00),
	(71, '2025-01-14', 205.50),
	(72, '2025-01-15', 215.00),
	(73, '2025-01-16', 225.30),
	(74, '2025-01-17', 235.00),
	(75, '2025-01-18', 245.00),
	(76, '2025-01-19', 255.00),
	(77, '2025-01-20', 265.00),
	(78, '2025-01-21', 275.00),
	(79, '2025-01-22', 285.00),
	(80, '2025-01-23', 295.00),
	(81, '2025-01-24', 305.00),
	(82, '2025-01-25', 315.00),
    (83, '2025-01-17', 235.00),
	(84, '2025-01-18', 245.00),
	(85, '2025-01-19', 255.00),
	(86, '2025-01-20', 265.00),
	(87, '2025-01-21', 275.00),
	(88, '2025-01-22', 285.00),
	(89, '2025-01-23', 295.00),
	(90, '2025-01-24', 305.00);


INSERT INTO DetallesPedidos (pedido_id, producto_id, cantidad, precio) VALUES
	(1, 1, 1, 599.99),
	(1, 2, 1, 19.99),
	(2, 3, 1, 899.99),
	(2, 2, 1, 19.99),
	(3, 7, 1, 15000.00),
	(3, 11, 2, 24.99),
	(4, 4, 1, 24.99),
	(5, 6, 1, 49.99),
	(5, 13, 1, 8000.00),
	(6, 5, 1, 14.99),
	(6, 2, 1, 19.99),
	(7, 10, 1, 199.99),
	(7, 2, 1, 29.99),
	(8, 9, 1, 29.99),
	(8, 14, 1, 8000.00),
	(9, 6, 1, 49.99),
	(9, 7, 1, 15000.00),
	(10, 8, 1, 399.99),
	(10, 3, 1, 899.99),
	(11, 1, 1, 599.99),
	(11, 4, 1, 24.99),
	(12, 5, 1, 14.99),
	(12, 12, 2, 19.99),
	(13, 3, 1, 899.99),
	(13, 6, 1, 49.99),
	(14, 10, 1, 199.99),
	(14, 2, 1, 29.99),
	(15, 7, 1, 15000.00),
	(15, 13, 1, 8000.00),
	(16, 1, 1, 599.99),
	(16, 9, 1, 29.99),
	(17, 3, 1, 899.99),
	(17, 2, 1, 19.99),
	(18, 5, 1, 14.99),
	(18, 4, 1, 24.99),
	(19, 6, 1, 49.99),
	(19, 7, 1, 15000.00),
	(20, 8, 1, 399.99),
	(20, 12, 1, 19.99),
	(21, 1, 1, 599.99),
	(21, 14, 1, 8000.00),
	(22, 9, 1, 29.99),
	(22, 13, 1, 8000.00),
	(23, 7, 1, 15000.00),
	(23, 5, 1, 14.99),
	(24, 3, 1, 899.99),
	(24, 4, 1, 24.99),
	(25, 6, 1, 49.99),
	(25, 10, 1, 199.99),
	(26, 2, 1, 19.99),
	(26, 3, 1, 899.99),
	(27, 5, 1, 14.99),
	(27, 1, 1, 599.99),
	(28, 2, 1, 19.99),
	(28, 12, 2, 19.99),
	(29, 6, 1, 49.99),
	(29, 10, 1, 199.99),
	(30, 7, 1, 15000.00),
	(30, 8, 1, 399.99),
	(31, 14, 1, 8000.00),
	(31, 2, 1, 29.99),
	(32, 4, 1, 24.99),
	(32, 1, 1, 599.99),
	(33, 13, 1, 8000.00),
	(33, 3, 1, 899.99),
	(34, 6, 1, 49.99),
	(34, 5, 1, 14.99),
	(35, 2, 1, 19.99),
	(35, 9, 1, 29.99),
	(36, 7, 1, 15000.00),
	(36, 1, 1, 599.99),
	(37, 3, 1, 899.99),
	(37, 10, 1, 199.99),
	(38, 4, 1, 24.99),
	(38, 13, 1, 8000.00),
	(39, 5, 1, 14.99),
	(39, 9, 1, 29.99),
	(40, 8, 1, 399.99),
	(40, 7, 1, 15000.00),
	(41, 1, 1, 599.99),
	(41, 6, 1, 49.99),
	(42, 10, 1, 199.99),
	(42, 5, 1, 14.99),
	(43, 2, 1, 19.99),
	(43, 6, 1, 49.99),
	(44, 4, 1, 24.99),
	(44, 7, 1, 15000.00),
	(45, 13, 1, 8000.00),
	(45, 3, 1, 899.99),
	(46, 1, 1, 599.99),
	(46, 2, 1, 29.99),
	(47, 3, 1, 899.99),
	(47, 6, 1, 49.99),
	(48, 8, 1, 399.99),
	(48, 7, 1, 15000.00),
	(49, 2, 1, 19.99),
	(49, 4, 1, 24.99),
	(50, 1, 1, 599.99),
	(50, 3, 1, 899.99),
	(51, 9, 1, 29.99),
	(51, 7, 1, 15000.00),
	(52, 5, 1, 14.99),
	(52, 8, 1, 399.99),
	(53, 2, 1, 19.99),
	(53, 6, 1, 49.99),
	(54, 10, 1, 199.99),
	(54, 1, 1, 599.99),
	(55, 3, 1, 899.99),
	(55, 4, 1, 24.99),
	(56, 7, 1, 15000.00),
	(56, 13, 1, 8000.00),
	(57, 9, 1, 29.99),
	(57, 8, 1, 399.99),
	(58, 2, 1, 19.99),
	(58, 5, 1, 14.99),
	(59, 10, 1, 199.99),
	(59, 1, 1, 599.99),
	(60, 6, 1, 49.99),
	(60, 2, 1, 29.99),
	(61, 7, 1, 15000.00),
	(61, 3, 1, 899.99),
	(62, 4, 1, 24.99),
	(62, 5, 1, 14.99),
	(63, 8, 1, 399.99),
	(63, 2, 1, 19.99),
	(64, 1, 1, 599.99),
	(64, 6, 1, 49.99),
	(65, 10, 1, 199.99),
	(65, 7, 1, 15000.00),
	(66, 5, 1, 14.99),
	(66, 13, 1, 8000.00),
	(67, 2, 1, 19.99),
	(67, 9, 1, 29.99),
	(68, 3, 1, 899.99),
	(68, 7, 1, 15000.00),
	(69, 6, 1, 49.99),
	(69, 4, 1, 24.99),
	(70, 1, 1, 599.99),
	(70, 12, 1, 19.99),
	(71, 8, 1, 399.99),
	(71, 10, 1, 199.99),
	(72, 5, 1, 14.99),
	(72, 3, 1, 899.99),
	(73, 6, 1, 49.99),
	(73, 9, 1, 29.99),
	(74, 2, 1, 19.99),
	(74, 13, 1, 8000.00),
	(75, 7, 1, 15000.00),
	(75, 4, 1, 24.99),
	(76, 10, 1, 199.99),
	(76, 5, 1, 14.99),
	(77, 3, 1, 899.99),
	(77, 9, 1, 29.99),
	(78, 6, 1, 49.99),
	(78, 2, 1, 19.99),
	(79, 4, 1, 24.99),
	(79, 7, 1, 15000.00),
	(80, 1, 1, 599.99),
	(80, 10, 1, 199.99),
	(81, 5, 1, 14.99),
	(81, 6, 1, 49.99),
	(82, 13, 1, 8000.00),
	(82, 1, 1, 599.99),
	(83, 2, 1, 19.99),
	(83, 8, 1, 399.99),
	(84, 4, 1, 24.99),
	(84, 7, 1, 15000.00),
	(85, 3, 1, 899.99),
	(85, 6, 1, 49.99),
	(86, 5, 1, 14.99),
	(86, 10, 1, 199.99),
	(87, 2, 1, 19.99),
	(87, 1, 1, 599.99),
	(88, 9, 1, 29.99),
	(88, 12, 1, 19.99),
	(89, 3, 1, 899.99),
	(89, 6, 1, 49.99),
	(90, 7, 1, 15000.00),
	(90, 5, 1, 14.99),
	(91, 10, 1, 199.99),
	(91, 13, 1, 8000.00),
	(92, 4, 1, 24.99),
	(92, 8, 1, 399.99),
	(93, 9, 1, 29.99),
	(93, 7, 1, 15000.00),
	(94, 2, 1, 19.99),
	(94, 3, 1, 899.99),
	(95, 6, 1, 49.99),
	(95, 5, 1, 14.99),
	(96, 1, 1, 599.99),
	(96, 13, 1, 8000.00),
	(97, 7, 1, 15000.00),
	(97, 10, 1, 199.99),
	(98, 2, 1, 19.99),
	(98, 3, 1, 899.99),
	(99, 8, 1, 399.99),
	(99, 5, 1, 14.99),
	(100, 9, 1, 29.99),
	(100, 13, 1, 8000.00),
	(101, 1, 1, 599.99),
	(101, 4, 1, 24.99),
	(102, 6, 1, 49.99),
	(102, 10, 1, 199.99),
	(103, 3, 1, 899.99),
	(103, 7, 1, 15000.00),
	(104, 2, 1, 19.99),
	(104, 12, 1, 19.99),
	(105, 5, 1, 14.99),
	(105, 8, 1, 399.99),
	(106, 4, 1, 24.99),
	(106, 6, 1, 49.99),
	(107, 2, 1, 19.99),
	(107, 7, 1, 15000.00),
	(108, 10, 1, 199.99),
	(108, 13, 1, 8000.00),
	(109, 6, 1, 49.99),
	(109, 9, 1, 29.99),
	(110, 2, 1, 19.99),
	(110, 8, 1, 399.99),
	(111, 4, 1, 24.99),
	(111, 5, 1, 14.99),
	(112, 3, 1, 899.99),
	(112, 10, 1, 199.99),
	(113, 7, 1, 15000.00),
	(113, 9, 1, 29.99),
	(114, 6, 1, 49.99),
	(114, 5, 1, 14.99),
	(115, 2, 1, 19.99),
	(115, 1, 1, 599.99),
	(116, 3, 1, 899.99),
	(116, 4, 1, 24.99),
	(117, 10, 1, 199.99),
	(117, 6, 1, 49.99),
	(118, 7, 1, 15000.00),
	(118, 1, 1, 599.99),
	(119, 9, 1, 29.99),
	(119, 3, 1, 899.99),
	(120, 8, 1, 399.99),
	(120, 5, 1, 14.99),
	(121, 10, 1, 199.99),
	(121, 13, 1, 8000.00),
	(122, 2, 1, 19.99),
	(122, 1, 1, 599.99),
	(123, 3, 1, 899.99),
	(123, 6, 1, 49.99),
	(124, 7, 1, 15000.00),
	(124, 4, 1, 24.99),
	(125, 2, 1, 19.99),
	(125, 13, 1, 8000.00),
	(126, 5, 1, 14.99),
	(126, 9, 1, 29.99),
	(127, 10, 1, 199.99),
	(127, 2, 1, 19.99),
	(128, 7, 1, 15000.00),
	(128, 5, 1, 14.99),
	(129, 1, 1, 599.99),
	(129, 6, 1, 49.99),
	(130, 9, 1, 29.99),
	(130, 4, 1, 24.99),
	(131, 10, 1, 199.99),
	(131, 7, 1, 15000.00),
	(132, 5, 1, 14.99),
	(132, 8, 1, 399.99);











