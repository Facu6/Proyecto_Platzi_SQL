# Sistema de Gestión de una Tienda en Línea

## Descripción
Este proyecto se desarrolla en un entorno académico, el cual se realiza para obtener la certificación del curso "SQL-MySQL" correspondiente a Platzi.
 
Consiste en la creación de una base de datos para gestionar una tienda en línea. La base de datos incluye tablas para productos, categorías, clientes, pedidos y detalles de pedidos.

Todos los datos insertados en las tablas son ficticios, siendo generados por Inteligencia Artificial.

## Archivos con los que te encontrarás
Teniendo en cuenta el presente README, hay dos archivos extras:
- [**platzi_creacion_database**:](platzi_creacion_database.sql) En dicho archivo se crea la base de datos en la que se trabajará. Asimismo, se crean las tablas y se le insertan los correspondientes datos a cada una.
- [**platzi_consulta**:](platzi_consultas.sql) En este segundo archivo se encuentran las distintas consultas realizadas a la base de datos, con el fin de extraer información relevante la cual ayude a tomar decisiones de negocio.

## Base de Datos
- **proyecto_platzi**: Contiene todas las tablas y datos 

## Estructura de la Base de Datos
- **Productos**: Información sobre los productos disponibles en la tienda.
- **Categorías**: Categorías a las que pertenecen los productos.
- **Clientes**: Información sobre los clientes registrados en la tienda.
- **Pedidos**: Información sobre los pedidos realizados por los clientes.
- **DetallesPedidos**: Información detallada sobre los productos incluidos en cada pedido.

## Estructura de las Tablas
- **Productos**: 
    * *producto_id*: INT / UNSIGNED / NOT NULL / AUTO_INCREMENT / PRIMARY kEY
    * *nombre*: VARCHAR(100) / NOT NULL
    * *categoria_id*: INT / UNSIGNED
    * *precio*: DECIMAL(10,2)
    * *stock*: INT
    * *FOREIGN KEY*: categoria_id / Categorias
- **Categorías**:
    * *categoria_id*: INT / UNSIGNED / NOT NULL / AUTO_INCREMENT / PRIMARY KEY
    * *nombre*: VARCHAR(100)
- **Clientes**:
    * *cliente_id*: INT / UNSIGNED / NOT NULL / AUTO_INCREMENT / PRIMARY KEY
    * *nombre*: VARCHAR(100) / NOT NULL
    * *email*: VARCHAR(100) / NOT NULL
    * *direccion*: VARCHAR(200)
    * *telefono*: VARCHAR(30) 
- **Pedidos**:
    * *pedido_id*: INT / UNSIGNED / NOT NULL / AUTO_INCREMENT / PRIMARY KEY
    * *cliente_id*: INT / UNSIGNED
    * *fecha*: DATE
    * *total*: DECIMAL(10,2)
    * *FOREIGN KEY*: cliente_id / Clientes
- **DetallesPedidos**:
    * *detalles_pedidos_id*: INT / UNSIGNED / NOT NULL / AUTO_INCREMENT / PRIMARY KEY
    * *pedido_id*: INT / UNSIGNED
    * *producto_id*: INT / UNSIGNED
    * *cantidad*: INT
    * *precio*: DECIMAL(10,2)
    * *FOREIGN KEY*: pedido_id / Pedidos --- producto_id / Productos