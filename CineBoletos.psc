Proceso CineBoletos
	
	Definir pelicula, tipo, cantidad Como Entero
	Definir precio, total Como Real
	Definir continuar Como Caracter
	Definir i, asiento Como Entero
	
	Dimension asientos[3,10]
	
	Para pelicula <- 1 Hasta 3 Hacer
		Para i <- 1 Hasta 10 Hacer
			asientos[pelicula,i] <- 0
		FinPara
	FinPara
	
	continuar <- "S"
	
	Mientras continuar = "S" o continuar = "s" Hacer
		
		pelicula <- seleccionarPelicula(0)
		tipo <- seleccionarTipoBoleto(0)
		
		Escribir "Ingrese cantidad de boletos:"
		Leer cantidad
		
		precio <- obtenerPrecio(tipo)
		total <- 0
		
		Para i <- 1 Hasta cantidad Hacer
			
			Repetir
				Escribir pelicula
				
				mostrarAsientos(asientos, pelicula)
				
				Escribir "Seleccione asiento (1-10):"
				Leer asiento
				
				Si asiento < 1 O asiento > 10 Entonces
					Escribir "Asiento invalido"
				SiNo
					Si asientos[pelicula, asiento] = 1 Entonces
						Escribir "Asiento ocupado"
					FinSi
				FinSi
				
			Hasta Que asiento >= 1 Y asiento <= 10 Y asientos[pelicula, asiento] = 0
			
			asientos[pelicula, asiento] <- 1
			total <- total + precio
			
		FinPara
		
		mostrarFactura(pelicula, tipo, cantidad, precio, total)
		
		Escribir "Desea realizar otra compra? (S/N)"
		Leer continuar
		
	FinMientras
	
	Escribir "Gracias por usar el sistema del cine"
	
FinProceso


Funcion rs <- seleccionarPelicula(0)
	Definir opcion Como Entero
	
	Repetir
		Escribir "===== CARTELERA ====="
		Escribir "1. Avengers"
		Escribir "2. Spiderman"
		Escribir "3. Batman"
		Escribir "Seleccione una pelicula (1-3):"
		Leer opcion
		
		Si opcion < 1 O opcion > 3 Entonces
			Escribir "Opcion invalida"
		FinSi
		
	Hasta Que opcion >= 1 Y opcion <= 3
	
	rs <- opcion
FinFuncion


Funcion rs <- seleccionarTipoBoleto(0)
	
	Definir opcion Como Entero
	
	Escribir "===== TIPO DE BOLETO ====="
	Escribir "1. Niño ($3)"
	Escribir "2. Adulto ($5)"
	Escribir "3. Tercera Edad ($4)"
	Escribir "Seleccione tipo de boleto:"
	Leer opcion
	
	rs <- opcion
	
FinFuncion



Funcion  rs <- obtenerPrecio(tipo)
	
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
	
FinFuncion


//
//Funcion rs <- calcularTotal(precio, cantidad)
//	
//	total <- precio * cantidad
//	
//FinFuncion


SubProceso mostrarFactura(pelicula, tipo, cantidad, precio, total)
	
	Escribir "===== FACTURA ====="
	
	Segun pelicula Hacer
		1: Escribir "Pelicula: Avengers"
		2: Escribir "Pelicula: Spiderman"
		3: Escribir "Pelicula: Batman"
	FinSegun
	
	Segun tipo Hacer
		1: Escribir "Tipo: Niño"
		2: Escribir "Tipo: Adulto"
		3: Escribir "Tipo: Tercera Edad"
	FinSegun
	
	Escribir "Cantidad de boletos: ", cantidad
	Escribir "Precio unitario: $", precio
	Escribir "Total a pagar: $", total
	Escribir "==========================="
	
FinSubProceso


SubProceso mostrarAsientos(asientos, pelicula)
	
	Definir i Como Entero
	
	
	Escribir "===== ASIENTOS DISPONIBLES ====="
	
	Para i <- 1 Hasta 10 Hacer
		Si asientos[pelicula, i] = 0 Entonces
			Escribir i, ": Libre"
		SiNo
			Escribir i, ": Ocupado"
		FinSi
	FinPara
	
FinSubProceso