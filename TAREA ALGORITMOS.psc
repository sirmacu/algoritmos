Algoritmo TAREA
	Definir NomEstudiante Como Caracter
	Definir Carrera Como Entero
	Definir conFecha Como Numero
	Definir Matricula, Mensualidad Como Entero
	Escribir "* --- Instituto Superior Tecnol�gico Jorge Bonilla ---*"
	Escribir "SISTEMA DE PAGOS DE MATRICULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante: " Sin Saltar
	Leer NomEstudiante
	Escribir "�Qu� carrera estudia?"
	Escribir "[1] Computaci�n e Inform�tica"
	Escribir "[2] Secretariado Ejecutivo" 
	Escribir "[3] Administraci�n"
	Escribir "Seleccione la opci�n: " Sin Saltar
	Leer Carrera
	Si (Carrera = 1) Entonces
		Matricula = 300
		Mensualidad = 450
	FinSi
	Si (Carrera = 2) Entonces
		Matricula = 200
		Mensualidad = 350
	FinSi	
	Si (Carrera = 3) Entonces
		Matricula = 250
		Mensualidad = 400
	FinSi	
	Escribir "�Est� en el rango de fecha permitido?" Sin Saltar
	Escribir "(1) = SI (0) = NO" Sin Saltar
	Leer conFecha
	Si (conFecha = 1) Entonces
		Definir concepto Como Entero
		Escribir "El estudiante esta dentro del rango de las fechas permitidas"
		Escribir "�Qu� concepto desea pagar?"
		Escribir "[1] Matricula o mensualidad"
		Escribir "[2] Matricula y mensualidades"
		Escribir "[3] Todo el semestre" 
		Escribir "[4] Toda la carrera"
		Escribir "Seleccione el concepto a pagar: " Sin Saltar
		Leer concepto
		Definir NroMensualidades Como Entero
		Definir NueMatricula, NueMensualidad, MontoPagar Como Real
		Si (concepto = 1) Entonces
			//Condici�n 1: Pago de matr�cula o mensualidad no hay descuento
			Definir OpcionMM Como Entero
			Escribir "Elige la opci�n para pagar: "
			Escribir "[1] Matricula"
			Escribir "[2] Mensualidad"
			Leer OpcionMM
			Si OpcionMM = 1 Entonces
				Escribir "Usted debe pagar: " Matricula
			SiNo
				Escribir "Usted debe pagar: " Mensualidad
			Fin Si
		Fin Si
		Si (concepto = 2) Entonces
			//Condici�n 2: Pago de matr�cula + 2 hasta 4 mensualidades 5% de descuento en la matricula y el 10% en las pensiones.
			Escribir "�Cuantas mensualidades desea pagar?"
			Leer NroMensualidades
			Si (NroMensualidades >= 2 )  Y (NroMensualidades <= 4 )  Entonces
				NueMatricula = Matricula * 0.05
				NueMensualidad = Mensualidad * 0.10
				MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)* NroMensualidades)
				Escribir "Usted debe pagar: " MontoPagar
			SiNo
				Escribir "Error!!! se puede realizar la operaci�n"
			Fin Si
		FinSi	
		Si (concepto = 3) Entonces
			NueMatricula = Matricula * 0.10
			NueMensualidad = Mensualidad * 0.20
			MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)* 5)
			Escribir "Usted debe pagar: " MontoPagar
		Fin Si
		SI (concepto = 4) Entonces
			NueMatricula = Matricula * 0.20
			NueMensualidad = Mensualidad * 0.40
			MontoPagar = ((Matricula-NueMatricula)*6) + ((Mensualidad - NueMensualidad) *30)
			Escribir "Usted debe pagar: " MontoPagar
		Fin Si
		//Condici�n 3: Todo un semestre + matr�cula; descuento del 20% al monto total de pensiones y el 10% a la matricula.
		//Condici�n 4: Toda la carrera descuento del 40% al monto total de pensiones y el 20% a las matr�culas.
	SiNo
		Escribir "El estudiante esta fuera del rango de las fechas permitidas"
		// si no est� dentro del rango
		//de las fechas de matricula y pago de pensiones (cuotas), 
		//el sistema le genera el 1% de multa por retraso a la mensualidad, 
	    //de lo contrario se le pueden aplicar las siguientes condiciones:
		Definir multa Como Real
		multa = Mensualidad * 0.01
		Mensualidad = Mensualidad + multa
		Escribir "la nueva mensualidad es: " Mensualidad
	FinSi
FinAlgoritmo
