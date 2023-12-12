
//   Este problema apareció en el certamen recuperativo 1 del segundo semestre de 2011 en el campus Vitacura.
//
//   Un analista financiero lleva un registro del precio del dólar día a día, y desea saber cuál fue la mayor de las alzas en el precio diario a lo largo de ese período.
//
//   Escriba un programa que pida al usuario ingresar el número n de días, y luego el precio del dólar para cada uno de los n días.
//	
//	 El programa debe entregar como salida cuál fue la mayor de las alzas de un día para el otro.
//		
//	 Si en ningún día el precio subió, la salida debe decir: No hubo alzas.

Algoritmo sin_titulo
	Escribir "Ingrese el numero de dias a evaluar."
	leer n
//	Escribir "Numero de dias es: ", n
	Dimension PreciosDolar[n]
	para i = 0 Hasta n-1 Hacer
		Escribir "Ingrese dia: ",i+1
		leer precio
		PreciosDolar[i] = precio
	FinPara
	
	para i = 0 hasta n-2 Con Paso 1 Hacer
		Diferencia = PreciosDolar[i+1] - PreciosDolar[i]
		si Diferencia > Rango Entonces
			Rango = Diferencia
			dia = i+1
		FinSI
	FinPara
	
	Escribir "El alza fue de ", Rango, " puntos.", " en el dia ", dia, " al " dia+1
	si Diferencia = 0 Entonces
		Escribir "No hubo alza"
	FinSi
FinAlgoritmo

// funcion para evaluar el alza }
//Funcion CantidadDeAlza <- HallarCantidadDeAlza(PreciosDolar)
//	
//FinFuncion
	