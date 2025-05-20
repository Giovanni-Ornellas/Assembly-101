;---------------------------------------------------
; Programa: Soma Simples
; Autor: Giovanni Ornellas
; Data: 20-05-2025
; Descrição: Soma os valores de duas variáveis (A + B)
; e armazena o resultado em S. Em seguida, imprime
; uma mensagem fixa "RESULTADO" usando TRAP.
;---------------------------------------------------

        ORG 00              ; Define que o código (instruções) começa no endereço 0 da memória

INICIO: LDA A               ; Carrega o valor armazenado em A para o acumulador (ACC)
                            ; ACC ← A (10)

        ADD B               ; Soma o valor de B ao conteúdo do acumulador
                            ; ACC ← ACC + B → 10 + 20 = 30

        STA S               ; Armazena o resultado da soma na variável S
                            ; S ← ACC (30)

        TRAP MSG            ; Chamada de sistema: imprime a string iniciada em MSG
                            ; Resultado: imprime "RESULTADO" na tela

        HLT                 ; Finaliza o programa (parada da CPU)

;------------------- Área de Dados -------------------

        ORG 100             ; A partir daqui, os dados serão armazenados na memória a partir do endereço 100h

A:      DB 10               ; Variável A com valor inicial 10 (decimal)
B:      DB 20               ; Variável B com valor inicial 20 (decimal)

MSG:    STR "RESULTADO"     ; String literal que será impressa após a soma
S:      DS 1                ; Reserva 1 byte para armazenar o resultado da soma (S)

        DB 0Ah              ; Adiciona uma quebra de linha (\n) após a mensagem
        DB 00h              ; Finaliza a string com byte nulo (terminador)

        END INICIO          ; Indica para o montador que a execução do programa começa no rótulo INICIO
