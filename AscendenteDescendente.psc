//	Escribe un programa que genere una lista de 10 números aleatorios. 
//  Luego, ordena esta lista en orden ascendente y descendente, y finalmente imprime ambas versiones.
//	
// Instrucciones:	
//	1. Genera una lista de 10 números aleatorios.
//	2. Ordena la lista en orden ascendente y guárdala en una variable.
//	3. Ordena la lista en orden descendente y guárdala en otra variable.
//	4. Imprime la lista original y ambas listas ordenadas.



Algoritmo AscencenteDescendente
	// Lista con 10 nums
	Dimension ArrayNums[10]
	Arreglo = GenerarLista(ArrayNums)
	Escribir "Lista ordenada de mayor a menor: "
	Escribir GenerarListaOrdenadaAscendente(ArrayNums)
	Escribir "Lista ordenada de mayor a menor"
	Escribir GenerarListaOrdenadaDescendente(ArrayNums)
FinAlgoritmo
// Generar lista 
Funcion Lista <- GenerarLista(ArrayNums)
	para i = 0 hasta 9  hacer
		ArrayNums[i] = Aleatorio(1, 10)
		Escribir ArrayNums[i]
	FinPara
FinFuncion
// Ordenar ascendente y guardar en variable 
Funcion ListaOrdenadaAscendente <- GenerarListaOrdenadaAscendente(ArrayNums)
	para i = 0 Hasta 8 Con paso 1 Hacer
		para j = 0 hasta 8 Con Paso 1 Hacer
			si ArrayNums[j] > ArrayNums[j+1] Entonces
				aux = ArrayNums[j] 
				ArrayNums[j] = ArrayNums[j+1] 
				ArrayNums[j+1] = aux 
			FinSi
		FinPara
	FinPara	
	para i = 0 Hasta 9 con paso 1 hacer 
		Escribir ArrayNums[i]
	FinPara
FinFuncion
Funcion ListaOrdenadaDescendente <- GenerarListaOrdenadaDescendente(ArrayNums)
	para i = 0 Hasta 8 Con paso 1 Hacer
		para j = 0 hasta 8 Con Paso 1 Hacer
			si ArrayNums[j] < ArrayNums[j+1] Entonces
				aux = ArrayNums[j] 
				ArrayNums[j] = ArrayNums[j+1] 
				ArrayNums[j+1] = aux 
			FinSi
			
		FinPara
	FinPara	
	para i = 0 Hasta 9 con paso 1 hacer 
		Escribir ArrayNums[i]
	FinPara
FinFuncion
























		