Algoritmo aprueba_reprueba
	Definir Nota1, Nota2, Nota3, promedio Como Real
	Escribir "Ingrese las calificaciones : "
	Leer Nota1
	Leer Nota2
	Leer Nota3
	Promedio = redon(Nota1 + Nota2 + Nota3)/3
	Si promedio>=11 Entonces
		Escribir "El promedio es: " promedio ", el estudiante esta aprobado " 
	SiNo
		Escribir "El promedio es: " promedio ", el estudiante esta DESAPROBRADO " 
		
		
	FinSi
	
FinAlgoritmo
