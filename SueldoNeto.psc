Algoritmo SueldoNeto
	Escribir "Ingresa el valor de horas trabajadas: "
	Leer Horas_trabajadas
	Escribir "Ingresa el valor de tarifa por hora: " 
	Leer tarifa 
	sueldo_bruto = Horas_trabajadas*tarifa
	impuesto = sueldo_bruto*0.9
	sueldo_neto= sueldo_bruto - impuesto;
	Escribir "valor de tasa: " impuesto
	Escribir "valor de sueldo bruto: " sueldo_bruto
	Escribir "Valor de sueldo neto: " sueldo_neto
	
FinAlgoritmo
