
![Banner](https://github.com/neonolb/BCUDD_NH/blob/main/banner.png) 
## PROYECTO 1: Algoritmo de Sistema de Costos
Botcamper : Nolberto Hernández A. -  Cohort 14



## Que se Pide?

Construir un algoritmo en pseudocódigo (PseInt) que simule un sistema para calcular el costo de un producto con base en su precio original y el porcentaje de descuento aplicado. El algoritmo debe cumplir con los siguientes requisitos:

- Leer el precio original del producto.
- Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
- Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
- Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
- Calcular el costo de envío basado en el destino y el peso del paquete.
- Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
- Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).



## Solución explicada paso a paso
1. Primero, se declaran las variables que se utilizarán en el programa:
- `precio` Es el precio original del producto.
- `dscto` Es el descuento que se aplicará al producto
- `iva` Impuesto del producto
- `cantidad` Es la cantidad de productos.
- `peso` El peso del paquete
- `costoEnvio` Precio establecido por el envío
- `costoFinal` Resultado final del producto.
- `precioDscto` precio del proudcto con el descuento aplicado
- `precioImpuestos` precio con el Impuesto del producto aplicado
todos estos se definieron como reales

```scss
Definir precio, dscto, iva, cantidad, peso, costoEnvio, costoFinal, precioDscto, precioImpuestos Como Real
```

2. Se crea un arreglo bidimencional para definir las variables de Ciudad:
```scss
Dimensionar ciudades(5,2)
	ciudades[1,1]<-'Nueva York'
	ciudades[1,2]<-'10'
	ciudades[2,1]<-'San Francisco' // costo fijo
	ciudades[2,2]<-'10'
	ciudades[3,1]<-'Los Angeles'
	ciudades[3,2]<-'10'
	ciudades[4,1]<-'Texas'
	ciudades[4,2]<-'10'
	ciudades[5,1]<-'Miami'
	ciudades[5,2]<-'10'
```
- El arreglo contiene 2 datos, la ciudad de destino y el costo fijo del envío


3. Se procede a completar con información todos los campos solicitados:
```scss
Escribir 'Ingrese el Precio del producto'
	Leer precio
	Escribir 'Ingrese el % de descuento (0 si no tiene)'
	Leer dscto
	Escribir 'Ingrese el % de impuesto (0 si no tiene)'
	Leer iva
	Escribir 'Ingrese la cantidad de productos'
	Leer cantidad
	Escribir 'Ingrese el peso del paquete en Kilos'
	Leer peso
	Escribir 'Seleccione la ciudad de destino'
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir i, '- ', ciudades[i,1]
	FinPara
	Leer ciudad
```
- En el caso de las ciudades se procede a desplegar una lista de selección para que el usuario ingrese del 1 al 5 las opciones.


4. Se procede a generar los cálculos dependiendo de las datos ingresados:
```scss

cadenaCostoEnvio <- ciudades[ciudad,2]
	costoEnvio <- ConvertirANumero(cadenaCostoEnvio)
	// Calcular
	Si dscto>0 Entonces
		precioDscto <- precio-(precio*(dscto/100))
	SiNo
		precioDscto <- precio
	FinSi
	precioImpuestos <- precioDscto*(1+(iva/100))
	Si cantidad>1 Entonces
		precioCantidad <- (precioImpuestos-(precioImpuestos*(5/100)))*cantidad
	SiNo
		precioCantidad <- precioImpuestos
	FinSi
	costoEnvioTotal <- costoEnvio+(peso*2)
	costoFinal <- precioCantidad+costoEnvioTotal
```

5. Finalmente se procede a mostrar los resultados en pantalla:
```scss

Escribir 'Costo Final del producto :'
	Escribir 'Precio original : $ ', precio
	Escribir 'Precio con descuento', ' del ', dscto, '% : ', '$ ', precioDscto
	Escribir 'Precio con impuestos', ' del ', iva, '% :', precioImpuestos
	Escribir 'Precio con descuento por cantidad: $ ', precioCantidad
	Escribir 'Costo de envío: $ ', costoEnvioTotal
	Escribir 'Costo Final: $ ', costoFinal
FinAlgoritmo

```
- Como evidencia de la ejecución se agrega el pantallazo del cálculo solicitado por el proyecto.

![Banner](https://github.com/neonolb/BCUDD_NH/blob/main/evidencia_resultado.png) 

## Entregables

Crea un repositorio en GitHub para este proyecto y añade un archivo de pseudocódigo que resuelva el problema propuesto. Al finalizar, comparte el enlace al repositorio con los instructores para su revisión.


- Diagrama de flujo del algoritmo (CalcularCostoProducto_Diagrama_Flujo.png)
- Archivo Readme.md
- Archivo con el pseudocódigo (CalcularCostoProducto.psc)
- Link de Github con toda la información https://github.com/neonolb/BCUDD_NH.git
- Pantallazo de la solución





