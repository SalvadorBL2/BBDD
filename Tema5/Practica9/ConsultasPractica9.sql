Consulta 1.

SELECT *
FROM Pedido
WHERE id_cliente=(
	SELECT Id
	FROM Cliente
	WHERE Cliente.Nombre='Adela Salas Díaz'
	);
	
Consulta 2.

SELECT Id_comercial
FROM Pedido
WHERE Id_comercial=(
	SELECT comercial.Id
	FROM Comercial
	WHERE Comercial.Nombre='Daniel Saéz Vega'
	);
	
Consulta 3.

SELECT *
FROM Cliente
WHERE Cliente.Id=(
	SELECT Id_Cliente
	FROM Pedido
	GROUP BY Id_Cliente
	HAVING MAX(Cantidad) AND YEAR='2019'
	);
	
Consulta 4.

SELECT Fecha, Cantidad
FROM Pedido
WHERE Id_Cliente=(
	SELECT Id
	FROM Cliente 
	WHERE Cliente.Nombre='Pepe Ruíz Santana'






















