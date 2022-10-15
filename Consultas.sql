SELECT Nombre, MAX(Cantidad)
FROM productoinventario

SELECT `IdProductoVenta`, SUM(`CantidadVenta`) FROM `productoventas` GROUP BY `IdProductoVenta` ORDER BY `SUM(``CantidadVenta``)` DESC LIMIT 1