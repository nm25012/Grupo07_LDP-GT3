Proceso CineBoletos
	
	Definir pelicula, tipo, cantidad Como Entero
	Definir precio, total Como Real
	Definir continuar Como Caracter
	
	continuar <- "S"
	
	Mientras continuar = "S" o continuar = "s" Hacer
		
		pelicula <- seleccionarPelicula()
		tipo <- seleccionarTipoBoleto()
		
		Escribir "Ingrese cantidad de boletos:"
		Leer cantidad
		
		precio <- obtenerPrecio(tipo)
		total <- calcularTotal(precio, cantidad)
		
		mostrarFactura(pelicula, tipo, cantidad, precio, total)
		
		Escribir "Desea realizar otra compra? (S/N)"
		Leer continuar
		
	FinMientras
	
	Escribir "Gracias por usar el sistema del cine"
	
FinProceso


SubProceso pelicula <- seleccionarPelicula()
	
	Definir opcion Como Entero
	
	Escribir "===== CARTELERA ====="
	Escribir "1. Avengers"
	Escribir "2. Spiderman"
	Escribir "3. Batman"
	Escribir "Seleccione una pelicula:"
	Leer opcion
	
	pelicula <- opcion
	
FinSubProceso


SubProceso tipo <- seleccionarTipoBoleto()
	
	Definir opcion Como Entero
	
	Escribir "===== TIPO DE BOLETO ====="
	Escribir "1. Niño ($3)"
	Escribir "2. Adulto ($5)"
	Escribir "3. Tercera Edad ($4)"
	Escribir "Seleccione tipo de boleto:"
	Leer opcion
	
	tipo <- opcion
	
FinSubProceso


SubProceso precio <- obtenerPrecio(tipo)
	
	Segun tipo Hacer
		1:
			precio <- 3
		2:
			precio <- 5
		3:
			precio <- 4
		De Otro Modo:
			precio <- 5
	FinSegun
	
FinSubProceso


SubProceso total <- calcularTotal(precio, cantidad)
	
	total <- precio * cantidad
	
FinSubProceso


SubProceso mostrarFactura(pelicula, tipo, cantidad, precio, total)
	
	Escribir "===== FACTURA ====="
	
	Segun pelicula Hacer
		1:
			Escribir "Pelicula: Avengers"
		2:
			Escribir "Pelicula: Spiderman"
		3:
			Escribir "Pelicula: Batman"
	FinSegun
	
	Segun tipo Hacer
		1:
			Escribir "Tipo de boleto: Niño"
		2:
			Escribir "Tipo de boleto: Adulto"
		3:
			Escribir "Tipo de boleto: Tercera Edad"
	FinSegun
	
	Escribir "Cantidad: ", cantidad
	Escribir "Precio unitario: $", precio
	Escribir "Total a pagar: $", total
	Escribir "==================="
	
FinSubProceso