-- SELECCIONAMOS LA BASE DE DATOS A UTILIZAR
USE proyecto_platzi;
desc productos;

-- OBSERVAMOS LOS DATOS DE LOS CLIENTES Y SUS PEDIDOS
SELECT c.cliente_id, c.nombre, c.email ,p.fecha, p.total
FROM Clientes as c
INNER JOIN Pedidos as p
	ON c.cliente_id = p.cliente_id;

-- AHORA SE OBSERVAN LOS MISMOS DATOS PERO ORDENADOS POR FECHA
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

-- SE OBSERVA QUIENES SON LOS 5 CLIENTES QUE MAS DINERO HAN GASTADO
SELECT c.cliente_id, c.nombre, c.email, SUM(p.total) AS total
FROM Clientes as c
INNER JOIN Pedidos as p
	ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id
ORDER BY total DESC
LIMIT 5;

DESC DetallesPedidos;
DESC Productos;
DESC Categorias;
DESC Clientes;

-- SE OBSERVA LOS DATOS DE LOS CLIENTES, MONTO DE COMPRAS Y DETALLE DE CADA PRODUCTO
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


