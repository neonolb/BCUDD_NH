Algoritmo CalcularCostoProducto
	// definir variables
	Definir precio, dscto, iva, cantidad, peso, costoEnvio, costoFinal, precioDscto,precioImpuestos Como Real
	Dimensionar  ciudades[5,2]
	
	ciudades[1,1]="Nueva York"
	ciudades[1,2]="10" // costo fijo
	ciudades[2,1]="San Francisco"
	ciudades[2,2]="10"
	ciudades[3,1]="Los Angeles"
	ciudades[3,2]="10"
	ciudades[4,1]="Texas"
	ciudades[4,2]="10"
	ciudades[5,1]="Miami"
	ciudades[5,2]="10"
	
	
	// leer los datos
	Escribir "Ingrese el Precio del producto"
	leer precio
	
	Escribir "Ingrese el % de descuento (0 si no tiene)"
	leer dscto
	
	Escribir "Ingrese el % de impuesto (0 si no tiene)"
	leer iva	
	
	Escribir "Ingrese la cantidad de productos"
	leer cantidad
	
	Escribir "Ingrese el peso del paquete en Kilos"
	leer peso
	
	Escribir "Seleccione la ciudad de destino"
	Para i = 1 Hasta 5 Con Paso 1 Hacer
		Escribir i, "- ",ciudades[i,1]
	fin para
	Leer ciudad
		
	//convertir envio a números
	cadenaCostoEnvio <- ciudades[ciudad,2]
	costoEnvio <- ConvertirANumero(cadenaCostoEnvio)
	
	//Calcular
	Si dscto > 0 Entonces
		precioDscto= precio - (precio*(dscto / 100))
	SiNo
		precioDscto= precio
	FinSi
	
	precioImpuestos = precioDscto* (1 + (iva / 100))
	
	Si cantidad > 1 Entonces
		precioCantidad = (precioImpuestos - (precioImpuestos * (5 / 100))) * cantidad
	SiNo
		precioCantidad = precioImpuestos
	FinSi
	
	costoEnvioTotal = costoEnvio + (peso* 2)
	
	costoFinal = precioCantidad+ costoEnvioTotal
	
	// mostrar resultados
	Escribir "Costo Final del producto :"
	Escribir "Precio original : $ ", precio
	Escribir "Precio con descuento", " del ", dscto, "% : ", "$ ", precioDscto
	Escribir "Precio con impuestos", " del ",iva "% :", precioImpuestos
	Escribir "Precio con descuento por cantidad: $ ", precioCantidad
	Escribir "Costo de envío: $ ", costoEnvioTotal
	Escribir "Costo Final: $ ", costoFinal
FinAlgoritmo

