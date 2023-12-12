Algoritmo NotasPromedios
	

	NumeroAprobados = 0
	NumeroDesaprobados = 0
	Dimension notas[30]
	Escribir "Notas: "
	arreglo = HallarNotas(notas)
	Escribir "Promedio de notas: ", HallarPromedio(notas,promedio)
	Escribir HallarNumMayorMenor(notas)
	Escribir "La cantidada de alumnos aprobados es: ", HallarNumAprobados(notas)
	Escribir "La cantidada de alumnos desaprobados es: ", HallarNumDesaprobados(notas)
	Escribir MostrarAlumnosAprobados(notas)
	Escribir MostrarAlumnosDesaprobados(notas)

FinAlgoritmo


// funcion para calcular el promedio
Funcion promedio <- HallarPromedio(notas,promedio)
	para i= 0 Hasta 29 Con Paso 1 Hacer
		sumatoria = sumatoria + notas[i]
	FinPara
	promedio = sumatoria/30
FinFuncion
// funcion para numero menor y mayor
Funcion NumMayorMenos <- HallarNumMayorMenor(notas)
	Numero_Max = 0
	Numero_Min = notas[1]
	para i = 0 Hasta 29 Con Paso 1 Hacer
		si notas[i] > Numero_Max Entonces
			Numero_Max = notas[i]
		FinSi
		si notas[i] <= Numero_Min Entonces
			Numero_Min = notas[i]
		FinSi
	FinPara 
Escribir "Numero mayor es: ", Numero_Max," Numero menor es: " Numero_Min
	
FinFuncion

// Definir funcion dimension de las notas indice es 30
Funcion notas <- HallarNotas(notas)
	para i = 0 Hasta 29  hacer 
		
		notas[i] = Aleatorio(1,10)
		Escribir "Alumno ",i+1,":"," Nota: ", notas[i]
	FinPara
FinFuncion
// Funcion para aprobados y desaprobados

Funcion NumeroAprobados <- HallarNumAprobados(notas)
	NumeroAprobados = 0
	para i = 0 Hasta 29 Con Paso 1 Hacer
		si notas[i] > 6 Entonces
			NumeroAprobados = NumeroAprobados + 1 
		FinSi
	FinPara
FinFuncion


Funcion NumeroDesaprobados <- HallarNumDesaprobados(notas)
	para i = 0 Hasta 29 Con Paso 1 Hacer
		si notas[i] <= 6 Entonces
			NumeroDesaprobados = NumeroDesaprobados + 1 
		FinSi
	FinPara
	
FinFuncion



 // Funcion para Imprimir que alumnos aprobaron
Funcion Aprobados <- MostrarAlumnosAprobados(notas)
	Escribir "Alumnos aprobados"
	para i = 0 Hasta 29  hacer 
		si notas[i] > 6 Entonces
			Escribir "Alumno ",i+1,":"," Nota: ", notas[i]
		FinSi
		
	FinPara
FinFuncion
// Funcion para Imprimir que alumnos desaprobaron
Funcion Desaprobados <- MostrarAlumnosDesaprobados(notas)
	Escribir "Alumnos desaprobados"
	para i = 0 Hasta 29  hacer 
		si notas[i] <= 6 Entonces
			Escribir "Alumno ",i+1,":"," Nota: ", notas[i]
		FinSi
		
	FinPara
FinFuncion



