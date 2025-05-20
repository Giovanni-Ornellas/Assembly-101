;---------------------------------------------------
; Programa: Hello World
; Autor: Giovanni Ornellas
; Data: 20-05-2025
; Descrição: Imprime duas mensagens ("HELLO WORLD" e "OLA MUNDO")
; usando a instrução TRAP para chamada de serviço no SAPIENS-8.
;---------------------------------------------------

      ORG 00           ; Define que o código (instruções) começa no endereço 0 da memória

INCIO:LDA #4           ; Carrega o valor 4 no acumulador (ACC)
                       ; 4 é o código do serviço de impressão de string no TRAP

      TRAP MSG1        ; Chamada de sistema: imprime a string armazenada a partir do rótulo MSG1
                       ; Resultado: imprime "HELLO WORLD" na tela

      TRAP MSG2        ; Outra chamada TRAP: imprime a string a partir do rótulo MSG2
                       ; Resultado: imprime "OLA MUNDO"

      HLT              ; Finaliza o programa (parada da CPU)

;------------------- Área de Dados -------------------

      ORG 100          ; A partir daqui os dados (mensagens) serão armazenados na memória

MSG1: STR "HELLO WORLD" ; Define a string "HELLO WORLD" no endereço 100h
      DB 0Ah            ; Adiciona uma quebra de linha (\n)
      DB 00h            ; Finaliza a string com byte nulo (null terminator)

      ORG 200          ; Outra área separada da memória para a segunda mensagem

MSG2: STR "OLA MUNDO"  ; Define a string "OLA MUNDO" no endereço 200h
      DB 0Ah            ; Adiciona nova linha
      DB 00h            ; Final da string

      END INICIO        ; Indica para o montador que o ponto inicial da execução é o rótulo INICIO
