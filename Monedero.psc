Algoritmo sin_titulo

	Definir precioA, precioB, precioC, vueltos10, vueltos50, vueltos100 Como Entero
	precioA = 270
	precioB = 340
	precioC = 390
	vueltos10 = 10
	vueltos50 = 50
	vueltos100 = 100
	Dimension Monedas[3]
	Monedas[0] = '1. $10'
	Monedas[1] = '2. $50'
	Monedas[2] = '3. $100'
	Dimension MenuProductos[3]
	Escribir "Seleccione el producto"
	MenuProductos[0] = '1. A'+ ' $270'
	MenuProductos[1] = '2. B' + ' $340'
	MenuProductos[2] = '3. C' + ' $390'
	para i = 0 Hasta 2 con paso 1 Hacer
		Escribir MenuProductos[i]
	FinPara
	leer opcionUsuario
	Segun opcionUsuario hacer
		1: // Para a
			Escribir MenuProductos[0]
			Mientras precioA > CantPagada
				Escribir "Ingrese monedas"
				para i = 0 Hasta 2 hacer 
					Escribir Monedas[i]
				FinPara
				leer opcionUsuario
				Segun opcionUsuario
					1://$10
						Cant10 = Cant10 + 10
					2://$50
						Cant50 = Cant50 + 50
					3://$100
						Cant100 = Cant100 + 100
				FinSegun
				CantPagada = Cant10 + Cant50 + Cant100
				Escribir CantPagada
			FinMientras
			Si precioA < CantPagada
				Variabletemp =  CantPagada - preciA
				
				Monedas50 = trunc(Variabletemp /  50)
				Entregados = Variabletemp mod 50
				Monedas10 = trunc(Entregados / 10 )
				Escribir "Su vuelto es de:"
				Escribir "Moneda de $50x", Monedas50
				Escribir "Moneda de $10x",Monedas10
				
			SiNo
				Escribir "No hay vuelto."
			FinSi
		
		2:
			Escribir MenuProductos[1]
			Mientras precioB > CantPagada
				Escribir "Ingrese monedas"
				para i = 0 Hasta 2 hacer 
					Escribir Monedas[i]
				FinPara
				leer opcionUsuario
				Segun opcionUsuario
					1://$10
						Cant10 = Cant10 + 10
					2://$50
						Cant50 = Cant50 + 50
					3://$100
						Cant100 = Cant100 + 100
				FinSegun
				CantPagada = Cant10 + Cant50 + Cant100
				Escribir "$ ",CantPagada
			FinMientras
			Si precioB < CantPagada
				Variabletemp =  CantPagada - precioB

				Monedas50 = trunc(Variabletemp /  50)
				Entregados = Variabletemp mod 50
				Monedas10 = trunc(Entregados / 10 )
				Escribir "Su vuelto es de:"
				Escribir "Moneda de $50x", Monedas50
				Escribir "Moneda de $10x",Monedas10
				
			SiNo
				Escribir "No hay vuelto."
			FinSi
		3:
			Escribir MenuProductos[2]
			Mientras precioC > CantPagada
				Escribir "Ingrese monedas"
				para i = 0 Hasta 2 hacer 
					Escribir Monedas[i]
				FinPara
				leer opcionUsuario
				Segun opcionUsuario
					1://$10
						Cant10 = Cant10 + 10
					2://$50
						Cant50 = Cant50 + 50
					3://$100
						Cant100 = Cant100 + 100
				FinSegun
				CantPagada = Cant10 + Cant50 + Cant100
				Escribir CantPagada
			FinMientras
			Si precioA < CantPagada
				Variabletemp =  CantPagada - precioC
				Monedas50 = trunc(Variabletemp / 50)
				Entregados = Variabletemp mod 50
				Monedas10 = trunc(Entregados / 10 )
				Escribir "Su vuelto es de:"
				Escribir "Moneda de $50x", Monedas50
				Escribir "Moneda de $10x",Monedas10
				
			SiNo
				Escribir "No hay vuelto."
			FinSi

	FinSegun

	
	

FinAlgoritmo
