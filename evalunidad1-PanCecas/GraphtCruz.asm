(TECLADO)
            @KBD
            D=M
            @84
            D=D-A
            @DALEPIBE
            D;JEQ

            @KBD
            D=M
            @67
            D=D-A
            @BORRAR
            D;JEQ

            @TECLADO
            0;JMP
(BORRAR)
            @SCREEN
            D=A
            @BOX2
            M=D
            @contH
            M=D
            @pantalla2
            M=D
            @PAINT2
            M=0

            @LIMPIAR
            0;JMP

(LIMPIAR)
            @BOX2
            D=M
            @pantalla
            M=D

(LOOP3)
            @contH
            D=M
            @TECLADO
            D;JEQ

            @PAINT2
            D=M
            @pantalla
            A=M
            M=D

            @contH
            M=M-1

            @pantalla
            M=M+1

            @LOOP3
            0;JMP

(DALEPIBE)
            @16463      
            D=A
            @BOX1
            M=D

            @32     
            D=A 
            @PIXperPIX
            M=D

            @256     
            D=A 
            @PAINT
            M=D

            @253 
            D=A
            @contV
            M=D

            @INICIOVERTICAL
            0;JMP

(INICIOVERTICAL)
            @BOX1       //va utilizar el registro de la pantalla para poder desplazarse 
            D=M
            @pantalla
            M=D

(LOOP)
            @contV             //si el contador VERTICAL = cero, INICIOHORIZONTAL
            D=M
            @HORIZONTAL
            D;JEQ

            @PAINT      //lo que va a hacer es recoger la PINTURA y colocarla en la DIRECCION DE LA PANTALLA
            D=M
            @pantalla
            A=M
            M=D

            @contV      //Va a restar 1 al Contador Vertical
            M=M-1

            @PIXperPIX      //va a sumar el 32 por la direccion de la pantalla
            D=M
            @pantalla
            M=M+D

            @LOOP
            0;JMP           //CONTADOR; PANTALLA FUNCIONA

(HORIZONTAL)
            @20000
            D= A        
            @BOX2
            M=D
            
            @PAINT2
            M=-1

            @32
            D=A
            @contH
            M=D

(INICIOH)
            @BOX2
            D=M
            @pantalla2
            M=D
(LOOP2)
            @contH
            D=M
            @TECLADO
            D;JEQ

            @PAINT2
            D=M
            @pantalla2
            A=M
            M=D

            @contH
            M=M-1

            @pantalla2      //
            M=M+1

            @LOOP2
            0;JMP

