-- SELECCIONAMOS LA BASE DE DATOS A UTILIZAR
USE proyecto_platzi;

-- SE OBSERVAN LOS DISTINTOS PRODUCTOS 
SELECT DISTINCT nombre 
FROM Productos;

-- SE OBSERVAN LAS DISTINTAS CATEGORIAS DE PRODUCTOS
SELECT DISTINCT nombre
FROM Categorias;

-- OBSERVAMOS LOS DATOS DE LOS CLIENTES Y SUS PEDIDOS
SELECT c.cliente_id, c.nombre, c.email ,p.fecha, p.total
FROM Clientes as c
INNER JOIN Pedidos as p
	ON c.cliente_id = p.cliente_id;

-- AHORA SE OBSERVAN LOS MISMOS DATOS PERO ORDENADOS POR FECHA DE MANERA ASCENDENTE
SELECT c.cliente_id, c.nombre, c.email ,p.fecha, p.total
FROM Clientes as c
INNER JOIN Pedidos as p
	ON c.cliente_id = p.cliente_id
ORDER BY p.fecha ASC;

-- SE CALCULA EL PROMEDIO DE VENTAS TOTALES POR MES
SELECT DATE_FORMAT(fecha, '%Y-%m') AS mes, AVG(total) AS promedio_total
FROM Pedidos
GROUP BY mes
ORDER BY mes;

-- SE OBSERVA LOS DATOS DE LOS CLIENTES, MONTO DE COMPRAS Y DETALLE DE CADA PRODUCTO ORDENADO POR EL "CLIENTE_ID" DE MANERA ASCENDENTE
SELECT c.cliente_id, c.nombre, pr.nombre, cat.nombre, p.fecha, p.total
FROM Clientes AS c
INNER JOIN Pedidos AS p
	ON c.cliente_id = p.cliente_id
INNER JOIN DetallesPedidos AS dp
	ON p.pedido_id = dp.pedido_id
INNER JOIN Productos AS pr
	ON dp.producto_id = pr.producto_id
INNER JOIN Categorias AS cat
	ON pr.categoria_id = cat.categoria_id
ORDER BY c.cliente_id ASC;

-- SE OBSERVA QUIENES SON LOS 5 CLIENTES QUE MAS DINERO HAN GASTADO AGRUPADOS POR "CLIENTE_ID" Y ORDENADOS POR EL "TOTAL" DE MANERA DESCENTE
SELECT c.cliente_id, c.nombre, c.email, SUM(p.total) AS total
FROM Clientes as c
INNER JOIN Pedidos as p
	ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id
ORDER BY total DESC
LIMIT 5;

-- SE REUTILIZA LA CONSULTA EJECUTADA ANTERIORMENTE ESTA VEZ PARA OBSERVAR LOS DATOS, MONTO DE COMPRAS Y 
-- DETALLE DE CADA PRODUCTO DE LOS 5 CLIENTES QUE MAS DINERO HAN GASTADO ORDENADOS POR EL "TOTAL" DE MANERA DESCENDENTE
SELECT c.cliente_id, c.nombre AS nombre_cliente, CONCAT (pr.nombre, '-', cat.nombre) AS producto_categoria, p.fecha, p.total
FROM Clientes AS c
INNER JOIN Pedidos AS p
	ON c.cliente_id = p.cliente_id
INNER JOIN DetallesPedidos AS dp
	ON p.pedido_id = dp.pedido_id
INNER JOIN Productos AS pr
	ON dp.producto_id = pr.producto_id
INNER JOIN Categorias AS cat
	ON pr.categoria_id = cat.categoria_id
WHERE c.cliente_id IN (19,7,12,13,21)
ORDER BY total DESC;


-- SE OBSERVA LA DIFERENCIA TEMPORAL CON LA QUE CADA CLIENTE REALIZÓ LAS COMPRAS
SELECT c.cliente_id, c.nombre, p.fecha, p.total, TO_DAYS(fecha) - LAG(TO_DAYS(p.fecha), 1) OVER (PARTITION BY c.cliente_id ORDER BY p.fecha) AS diferencia_temporal_compras
FROM Clientes AS c
INNER JOIN Pedidos AS p
	ON c.cliente_id = p.cliente_id
ORDER BY c.cliente_id;


-- SE ACTUALIZAN DATOS DE LA TABLA CLIENTE
UPDATE Clientes 
SET email = 'juan_12_perez@hotmail.com', telefono = '555-2315' 
WHERE cliente_id = 1;

-- SE MODIFICA LA COLUMNA "NOMBRE" DE LA TABLA CATEGORIAS
ALTER TABLE Categorias
CHANGE nombre nombre_categoria VARCHAR(100);




