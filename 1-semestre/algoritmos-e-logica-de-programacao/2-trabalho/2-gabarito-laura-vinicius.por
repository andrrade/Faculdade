programa
{
	//Feito por Laura Andrade e Vin�cius Chiarelo
	funcao inicio(){
     	
		//fazer um programa que receba 50 provas(multipla escolha) de uma turma de 50 alunos
		//Cada prova tem 10 questoes(cada uma vale um ponto).Calcular e mostrar a menor nota
		//calcular e mostrar a maior nota, a media da turma, quantidade de alunos acima da media
		//e porcentagem de alunos aprovados, nota minima de aprova��o � 6,0!!!!
		// UTILIZAR MATRIZ PARA ARMAZENAR RESPOSTA DOS ALUNOS !!!	

		inteiro cont, i, j, Nota_Menor, Nota_Maior, acm_Notass[50], aprovados
		cadeia quest[10], nome[50], respostas[50][10]
		real media_turma, acm_Notas, percentual_aprov
		aprovados = 0
		Nota_Menor = 10
		Nota_Maior = 0
		acm_Notas = 0.0
		media_turma = 0.0

		escreva("GABARITO DA PROVA\nAlternativas v�lidas = A, B, C ou D (Letras MAI�SCULAS!)\n")
		escreva("Escreva as respostas do gabarito:\n\n")

		para (cont = 0; cont < 10; cont = cont + 1) {
			escreva("Gabarito da ", cont + 1, "� quest�o: ")
			leia(quest[cont])
			enquanto (quest[cont] != "A" e quest[cont] != "B" e quest[cont] != "C" e quest[cont] != "D") {
				limpa()
				escreva("Gabarito INV�LIDO!!!")
				escreva("\nRespostas possiveis = A, B, C ou D (Letras MAI�SCULAS!)\n")
				escreva("\nDigite o gabarito da ", cont + 1, "� quest�o novamente: ")
				leia(quest[cont])
				limpa()
			}
		}

		limpa()
		escreva("NOTAS DOS ALUNOS\n")

		para (i = 0; i < 50; i = i + 1) {
			acm_Notass[i] = 0 // Inicializa acm_Notass[i] com 0

			escreva("Informe o nome do(a) ", i + 1, "�(�) aluno(a): ")
			leia(nome[i])

			para (j = 0; j < 10; j = j + 1) {
				escreva("Gabarito de ", nome[i], " na ", j + 1, "� quest�o: ")
				leia(respostas[i][j])

				enquanto (respostas[i][j] != "A" e respostas[i][j] != "B" e respostas[i][j] != "C" e respostas[i][j] != "D") {
					limpa()
					escreva("Alternativa INV�LIDA!!!")
					escreva("\n(Respostas possiveis = A, B, C ou D) \n")
					escreva("\nInforme a alternativa da ", j + 1, "� quest�o: ")
					leia(respostas[i][j])
					limpa()
				}

				se (respostas[i][j] == quest[j]) {
					acm_Notass[i] = acm_Notass[i] + 1
				}
			}
		}

		para (cont = 0; cont < 50; cont = cont + 1) {
			se (acm_Notass[cont] < Nota_Menor) {
				Nota_Menor = acm_Notass[cont]
			}
			senao {
				se (acm_Notass[cont] > Nota_Maior) {
					Nota_Maior = acm_Notass[cont]
				}
			}
			se (acm_Notass[cont] >= 6) {
				aprovados = aprovados + 1
			}
			acm_Notas = acm_Notass[cont] + acm_Notas
		}

		limpa()
		media_turma = acm_Notas / 50
		percentual_aprov  = (aprovados * 100.0) / 50

		escreva("A menor nota foi: ", Nota_Menor)
		escreva("\nA maior nota foi: ", Nota_Maior)
		escreva("\nA m�dia da turma � = ", media_turma)
		escreva("\nA quatidade de alunos com nota acima da m�dia � = ", aprovados)
		escreva("\nO percentual de alunos aprovados � = ", percentual_aprov , " %\n\n")
	}
}
