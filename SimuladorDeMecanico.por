programa
{
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
	cadeia carros_boss[2] = {"Marea", "Peugeot 206"}
	cadeia nome_clientes[20] = {"Maria", "José", "Ana", "João", "Antônio", "Francisca", "Carlos", "Paula", "Pedro", "Lucia", "Luiz", "Adriana", "Francisco", "Juliana", "Marcos", "Patrícia", "Fernando", "Aline", "Ricardo", "Sandra"}
	cadeia nome_mecanico, nome_oficina, continuar
	inteiro dinheiro = 1000, escolhas, dia = 1, erros_comuns = 0, erros_raros = 0, erros_ultra = 0, erros_evento = 0
	real horario = 0.0
	cadeia cores [10] = {"preto", "branco", "cinza", "prata", "vermelho", "rosa", "azul", "vermelho carmesim", "azul marinho", "verde palmeiras"}
	cadeia dias[5] = {"Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira"}
	cadeia frases_cliente[20] = {"Fala, mestre das ferramentas!", "E aí, doutor dos motores!", "Bom dia, chefe! Trouxe trabalho pra você.", "Salve, salve! Tem espaço pra mais um carro aí?", "Oi, tudo certo? Vim pedir socorro!", "Fala aí, parceiro! Meu carro tá pedindo ajuda.", "Bom dia! Trouxe um paciente pra você cuidar.", "E aí, campeão! Tá pronto pra mais um desafio?", "Oi, mecânico! Espero que você tenha dormido bem, porque esse carro não tá fácil.", "Fala, fera! Meu carro tá precisando de um milagre.", "Bom dia, rei da graxa!", "E aí, mestre! Trouxe uma bomba pra você desarmar.", "Oi! Vim ver se você consegue salvar meu carro hoje.", "Fala, chefe! Meu carro tá com sintomas estranhos.", "Bom dia! Trouxe um caso complicado pra você resolver.", "E aí, doutor! Meu carro tá doente de novo.", "Oi, tudo beleza? Vim trazer mais um desafio pra oficina.", "Fala, mecânico! Hoje é dia de missão impossível?", "Bom dia! Meu carro tá com crise existencial, ajuda ele aí.", "E aí, mestre dos parafusos! Tem solução pra mim hoje."}
	cadeia frases_mecanico [14] = {"E aí, parceiro! O que tá pegando com o carro? Me diz o modelo pra eu já ir pensando no conserto.", "Trouxe o bicho pra dar um trato? Qual o modelo dele, só pra eu saber com quem tô lidando.", "Esse aí tá com cara de que aprontou... Qual o modelo e ano pra eu começar o diagnóstico.", "Vamos ver se esse possante ainda tem salvação! Que modelo é ele?", "Chegou mais um paciente! Qual o modelo do carro pra eu preparar os instrumentos?", "Se o carro tá fazendo barulho estranho, é comigo mesmo. Mas antes, que modelo é esse?", "Esse aí é valente ou vive na oficina? Me diz o modelo que eu descubro rapidinho.", "Pode deixar que eu cuido dele. Só preciso saber: qual o modelo e o ano?", "Vamos dar um trato nesse carrão! Mas antes, que modelo estamos falando?", "Se ele tá tossindo, eu sou o doutor. Qual o modelo pra eu receitar o remédio certo?", "Esse motor tá mais cansado que segunda-feira... Qual o modelo pra eu animar ele?", "Chegou na oficina certa! Agora me diz: que modelo é esse guerreiro?", "Se ele tá com febre, eu curo. Mas preciso saber o modelo pra aplicar o remédio certo.", "Esse aí já é freguês ou tá estreando aqui? Qual o modelo pra eu puxar a ficha dele."}
	funcao inicio()
	{
		inteiro dinheiro_inicio_dia_anterior = 0
		
		escreva("*                    )             )  (              (    (       *            (                         )   (     \n")
		escreva(" (  `           (    ( /(   (      ( /(  )\\ )   (       )\\ ) )\\ )  (  `           )\\ )    (       *   )  ( /(   )\\ )  \n")
		escreva(" )\\))(   (      )\\   )\\())  )\\     )\\())(()/(   )\\     (()/((()/(  )\\))(      (  (()/(    )\\    ` )  /(  )\\()) (()/(  \n")
		escreva("((_)()\\  )\\   (((_) ((_)\\((((_)(  ((_)\\  /(_))(((_)     /(_))/(_))((_)()\\    )\\  /(_))((((_)(   ( )(_))((_)\\   /(_)) \n")
		escreva("(_()((_)((_)  )\\___  _((_))\\ _ )\\  _((_)(_))  )\\___    (_)) (_))  (_()((_) _ ((_)(_))   )\\ _ )\\ (_(_())   ((_) (_))   \n")
		escreva("|  \\/  || __|((/ __|| || |(_)_\\(_)| \\| ||_ _|((/ __|   / __||_ _| |  \\/  || | | || |    (_)_\\(_)|_   _|  / _ \\ | _ \\  \n")
		escreva("| |\\/| || _|  | (__ | __ | / _ \\  | .` | | |  | (__    \\__ \\ | |  | |\\/| || |_| || |__   / _ \\    | |   | (_) ||   /  \n")
		escreva("|_|  |_||___|  \\___||_||_|/_/ \\_\\ |_|\\_||___|  \\___|   |___/|___| |_|  |_| \\___/ |____| /_/ \\_\\   |_|    \\___/ |_|_\\  \n") 
		escreva("                                                                     (\n")
		escreva("         )                                                 )        )\\ )                \n")
		escreva("      ( /(          (        (  (      )  (             ( /(       (()/(    )  (   (    \n")
		escreva("      )\\())         )\\   (   )\\))(  ( /(  )(            )(_))       /(_))( /(  )\\  )(   \n")
		escreva(" __  ((_)\\   __    ((_)  )\\ ((_))\\  )(_))(()\\      __  ((_)    __  (_))  )(_))((_)(()\\  \n")
		escreva("| _|  / (_) |_ |  _ | | ((_) (()(_)((_)_  ((_)    | _| |_  )  |_ | / __|((_)_  (_) ((_) \n")
		escreva("| |   | |    | | | || |/ _ \\/ _` | / _` || '_|    | |   / /    | | \\__ \\/ _` | | || '_| \n")
		escreva("| |   |_|    | |  \\__/ \\___/\\__, | \\__,_||_|      | |  /___|   | | |___/\\__,_| |_||_|   \n")
		escreva("|__|        |__|            |___/                 |__|        |__|                      \n")
		leia(escolhas)

		escolha(escolhas){
			caso 1: 
			limpa()
			escreva("informe o nome do mecânico\n")
			leia(nome_mecanico)
			escreva("informe o nome da oficina mecânica\n")
			leia(nome_oficina)
			limpa()
			
			introducao()

			se(nome_mecanico == "Rodrigo Chave Inglesa"){
				dinheiro = 99999
				dia = 5
			}
			
			limpa()

			tutorial_boss()

			enquanto(dia < 5){
				se(dia != 1){
					limpa()
					se(erros_comuns + erros_evento + erros_raros + erros_ultra != 0){
						dinheiro = dinheiro - erros_comuns*400 - erros_evento*1000 - erros_raros*600 - erros_ultra*800
						escreva("Voce cometeu ", erros_comuns + erros_evento + erros_raros + erros_ultra, " erros e teve um prejuízo de R$ ", erros_comuns*400 + erros_evento*1000 + erros_raros*600 + erros_ultra*800, " por serviços mal feitos e por compensação à clientes insaitisfeitos.\n")
						erros_comuns = 0
						erros_evento = 0
						erros_raros = 0
						erros_ultra = 0
					}senao{
						escreva("Você teve um dia perfeito sem fazer cagadas em carros de clientes.\n")
					}
					escreva("Você teve uma dispesa por causas diversas(Exemplo: aluguel, luz, manutenção das ferramentas) de R$ ", 200*dia, "\n")
					dinheiro = dinheiro - 300*dia
					escreva("aperte [enter] para proseguir ")
					leia(continuar)
					enquanto(continuar != ""){
						escreva("\ntecla presionada errada aperte [enter] ")
						leia(continuar) 
			}
			limpa()
				}
				horario = 8.0
				enquanto(horario < 18){
					limpa()
					escreva("Dinheiro: R$", dinheiro, "           Dia: ", dia,"           Horario: ", horario, "h\n\n")
					sorteio_carro()
				}
				dia++
				se(dinheiro <= 0){
					falencia()
				}
			}
			batalha_boss()	
		}
	}
	funcao introducao(){
		limpa()
			
			
			
			//introduçao
			escreva("Você (", nome_mecanico, ") acaba de abrir sua própria oficina mecânica (",nome_oficina, ") com apenas R$1000 no bolso e uma reputação a construir.\n\n")
			escreva("Durante o dia, uma fila de carros com problemas variados vai aparecer na sua porta — e cabe a você decidir como lidar com cada um.\n\n")
			escreva("Você tem duas formas de consertar os veículos:\n\n")
			escreva("Modo Profissional\n\n")
			escreva("- Gasta mais tempo\n\n")
			escreva("- Menor chance do cliente voltar reclamando\n\n")
			escreva("- Mais confiável, mas pode atrasar o atendimento de outros carros\n\n")
			escreva("Modo Gambiarra\n\n")
			escreva("- Rápido e barato\n\n")
			escreva("- Alta chance do carro retornar com o mesmo problema\n\n")
			escreva("- Mesmo lucro, mas risco de prejuízo se o cliente voltar\n\n")
			escreva("Se um carro retornar, você terá que:\n\n")
			escreva("- Devolver o valor do serviço\n\n")
			escreva("- Pagar uma compensação ao cliente insatisfeito\n\n")
			escreva("Cuidado com o saldo!\n\n")
			escreva("Se terminar o dia com o caixa negativo, sua oficina fecha as portas instantaneamente.\n\n")
			escreva("Agora, mãos à graxa. Cada decisão conta — será que você consegue equilibrar velocidade, qualidade e lucro sem afundar no prejuízo?\n\n")
			escreva("aperte [enter] para proseguir ")
			leia(continuar)
			enquanto(continuar != ""){
				escreva("\ntecla presionada errada aperte [enter] ")
				leia(continuar) 
			}
	}
	funcao tutorial_boss(){
			escreva("Como resolver o problema de bater bielas de um carro.\n\n")
			escreva("1)Remover o motor do carro\n\n")
			escreva("Desconectar bateria, chicote elétrico, mangueiras e suportes.\n\n")
			escreva("2)Desmontar periféricos do motor.\n\n")
			escreva("Tirar alternador, compressor do ar-condicionado, bomba d’água, correia dentada/corrente.\n\n")
			escreva("3)Retirar o cabeçote.\n\n")
			escreva("Tirar tampa de válvulas, comandos, coletor de admissão e escape.\n\n")
			escreva("4)Remover o cárter.\n\n")
			escreva("Virar o motor de cabeça pra baixo e tirar todos os parafusos do cárter (parte de baixo).\n\n")
			escreva("5)Soltar bomba de óleo.\n\n")
			escreva("6)Desmontar o vira-brequim.\n\n")
			escreva("Tirar capas de mancais e bielas.\n\n")
			escreva("Verificar folgas, trincas e marcas no eixo.\n\n")
			escreva("7)Remover pistões e bielas.\n\n")
			escreva("Tirar pistões com bielas pelos cilindros.\n\n")
			escreva("Separar e identificar cada conjunto.\n\n")
			escreva("8)retificar o bloco, trocar bielas, pistões e o vira-brequim.\n\n")
			escreva("9)Montar tudo de volta na ordem inversa\n\n")
			escreva("Vira-brequim → pistões → bomba de óleo → cárter → cabeçote → periféricos → motor no carro.\n\n")
			escreva("aperte [enter] para proseguir ")
			leia(continuar)
			enquanto(continuar != ""){
				escreva("\ntecla presionada errada aperte [enter] ")
				leia(continuar) 
			}
			limpa()
	}
	funcao sorteio_carro(){
		logico loop = verdadeiro
		inteiro sorteio = u.sorteia(1, 30)
		se(sorteio == 30){
			evento_especial()
		} senao {
			sorteio = u.sorteia(1, 100)
			se(sorteio <= 80){
				sorteio = u.sorteia(1, 13)
				escolha(sorteio){
					caso 1:
					gol() 
					pare
					
					caso 2:
					voyage()
					pare
	
					caso 3:
					fox() 
					pare
				
					caso 4:
					fiat_uno() 
					pare

					caso 5:
					onix() 
					pare

					caso 6:
					palio() 
					pare

					caso 7:
					ford_ka() 
					pare

					caso 8:
					hb20() 
					pare
				
					caso 9:
					sandeiro() 
					pare

					caso 10:
					celta() 
					pare

					caso 11:
					fiesta() 
					pare

					caso 12:
					fit()
					pare

					caso 13:
					siena()
					pare
				}
				enquanto(loop){
						leia(escolhas)
						escolha(escolhas){
							caso 1:
							dinheiro = dinheiro + 200
							horario = horario + 3
							sorteio = u.sorteia(1, 10)
							se(sorteio == 3){
								erros_comuns++
							}
							loop = falso
							pare
	
							caso 2:
							dinheiro = dinheiro + 200
							horario = horario + 1.5
							sorteio = u.sorteia(1, 3)
							se(sorteio == 3){
								erros_comuns++
							}
							loop = falso
							pare

							caso 3: 
							horario++
							loop = falso
							pare

							caso contrario:
							escreva("Informe um comando valido ")
							pare
						}
					}
			}senao se(sorteio <= 95){
					sorteio = u.sorteia(1, 5)
					escolha(sorteio){
						caso 1:
						compass()
						pare

						caso 2:
						ranger()
						pare

						caso 3:
						Hilux()
						pare

						caso 4:
						civic()
						pare

						caso 5:
						corolla()
						pare
					}
					enquanto(loop){
						leia(escolhas)
						escolha(escolhas){
							caso 1:
							dinheiro = dinheiro + 300
							horario = horario + 3
							sorteio = u.sorteia(1, 10)
							se(sorteio == 3){
								erros_raros++
							}
							loop = falso
							pare
	
							caso 2:
							dinheiro = dinheiro + 300
							horario = horario + 1.5
							sorteio = u.sorteia(1, 3)
							se(sorteio == 3){
								erros_raros++
							}
							loop = falso
							pare

							caso 3: 
							horario++
							loop = falso
							pare

							caso contrario:
							escreva("Informe um comando valido ")
							retorne
						}
					}
				}senao{
					sorteio = u.sorteia(1, 3)
					escolha(sorteio){
						caso 1:
						mustang()
						pare

						caso 2:
						camaro()
						pare

						caso 3:
						porshe911()
						pare
					}
					enquanto(loop){
						leia(escolhas)
						escolha(escolhas){
							caso 1:
							dinheiro = dinheiro + 400
							horario = horario + 3
							sorteio = u.sorteia(1, 10)
							se(sorteio == 3){
								erros_ultra++
							}
							loop = falso
							pare
	
							caso 2:
							dinheiro = dinheiro + 400
							horario = horario + 1.5
							sorteio = u.sorteia(1, 3)
							se(sorteio == 3){
								erros_ultra++
							}
							loop = falso
								pare

							caso 3: 
							horario++
							loop = falso
							pare

							caso contrario:
							escreva("Informe um comando valido ")
							pare
						}
					}
				}
			}	
	}
	funcao batalha_boss(){
		logico repitir = verdadeiro
		inteiro ordem = 0, erros_boss = 0
		cadeia passos[20]
		inteiro sorteio

		
		limpa()
		escreva("Dinheiro: R$", dinheiro, "           Dia: ", dia,"\n\n")
		escreva("Rodrigo Chave Inglesa: Como voce sendo meu melhor cliente preciso de provas que voce eh um bom mecanico aceite o meu desafio (Voce sente que voce nao pode recusar esse desafio)\n\n")
		
		sorteio = u.sorteia(0, 1)
		escolha(sorteio){
			
			caso 0:
			marea()
			pare

			caso 1:
			peugeot()
			pare
		
		}

		escreva("\nRodrigo Chave Inglesa: meu ", carros_boss[sorteio], " esta batendo bileas voce poderia ver para mim\n\n")
		escreva("aperte [enter] para aceitar ")
		leia(continuar)
		limpa()

		escreva("Para concertar o ",  carros_boss[sorteio], " voce deve colocar os passos na ordem certa\n\n")
		escreva("1) Use cola quente para vedar o cabeçote.\n\n")
		escreva("2) Retificar o bloco, trocar bielas, pistões e o vira-brequim.\n\n")
		escreva("3) Instale um difusor de ar no escapamento antes de desmontar o cabeçote.\n\n")
		escreva("4) Remover pistões e bielas pelos cilindros, separar e identificar cada conjunto.\n\n")
		escreva("5) Verificar se o rádio ainda funciona.\n\n")
		escreva("6) Montar tudo de volta na ordem inversa.\n\n")
		escreva("7) Soltar bomba de óleo.\n\n")
		escreva("8) Coloque um amuleto dentro do cárter para afastar vibrações negativas.\n\n")
		escreva("9) Desconectar bateria, chicote elétrico, mangueiras e suportes para remover o motor.\n\n")
		escreva("10) Testar o motor com um cabo de vassoura no lugar do virabrequim.\n\n")
		escreva("11) Tirar o cabeçote: tampa de válvulas, comandos, coletor de admissão e escape.\n\n")
		escreva("12) Pinte os pistões com esmalte metálico para melhorar a aerodinâmica interna.\n\n")
		escreva("13) Remover o cárter virando o motor de cabeça pra baixo e tirando todos os parafusos.\n\n")
		escreva("14) Reinstalar o motor com os parafusos trocados de lugar.\n\n")
		escreva("15) Remover periféricos: alternador, compressor do ar-condicionado, bomba d’água, correia dentada/corrente.\n\n")
		escreva("16) Instalar um ventilador de mesa no compartimento do motor.\n\n")
		escreva("17) Tirar capas de mancais e bielas, verificar folgas, trincas e marcas no eixo.\n\n")
		escreva("18) Troque o óleo por suco de laranja para “limpeza natural”.\n\n")
		escreva("19) Coloque o motor no porta-malas para “descanso térmico”.\n\n")
		escreva("20) Grite “FORÇA, MOTOR!” antes de ligar o carro.\n\n")

		enquanto(repitir){
			escreva("informe o ", ordem+1, "º passo\n")
			leia(passos[ordem])
			escreva("Quer infomar mais um passo?\n\n [s] Sim           [n] Nao \n")
			leia(continuar)
			ordem++
			se(continuar == "n"){
				repitir = falso
			}
		}
		para(inteiro i=0; i < 20; i++){
			se(i == 0 e passos[i] != "9"){
				erros_boss++
			}
			se(i == 1 e passos[i] != "15"){
				erros_boss++
			}
			se(i == 2 e passos[i] != "11"){
				erros_boss++
			}
			se(i == 3 e passos[i] != "13"){
				erros_boss++
			}
			se(i == 4 e passos[i] != "7"){
				erros_boss++
			}
			se(i == 5 e passos[i] != "17"){
				erros_boss++
			}
			se(i == 6 e passos[i] != "4"){
				erros_boss++
			}
			se(i == 7 e passos[i] != "2"){
				erros_boss++
			}
			se(i == 8 e passos[i] != "6"){
				erros_boss++
			}
			se(i > 8 e passos[i] != ""){
				erros_boss++
			}
		}
		limpa()
		escreva("apos concerta o ",carros_boss[sorteio] , ", voce foi dar partida e ...\n\n")
		u.aguarde(10000)
		se(erros_boss != 0){
			
			explosao()

			escreva("\nVoce Cometeu ", erros_boss, " erros enquanto consertava o ",carros_boss[sorteio] , " e acabou explodindo toda a ", nome_oficina, " e acabou indo junto com a sua amada oficina")
			
		} senao {

			final_bom()

			escreva("\nParabens, apos ", nome_mecanico, " passar o seu maior desafio (concertar o ",carros_boss[sorteio] , " ) ", nome_mecanico, " acabou consolidando a sua fama e se tornou me melhor mecanico da cidade") 
		}
	}
	funcao camaro(){
          cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": Meu Camaro ", cores[u.sorteia(0, 9)], " tá gastando combustível demais, do nada.\n\n")

  		escreva("                                                        ....,,,,,***///((/((/(/(\n")
		escreva("                                            .   ..... .(*,,,//**,*,,***,******//\n")
		escreva("                               .... ....*//*,   ...,,, *(.#/*.. ,,..,.*&**,*/*//\n")
		escreva("                    ...............*.*..........   ,,,,,...*///((((((/#,,,,,..,,\n")
		escreva("          ..................... ,....          .....,..     ..,/,..###%%****,*,*\n")
		escreva("   .... .................... /,..          ..     .      .. ,/.(((((#%,.,,,*,*/*\n")
		escreva("  . .................//////.*#**......           / ..,...((*,#((/(, . .,*,...,,,\n")
		escreva("................*/***/..,**,,,......   .       .  .  ,(###*...... . *.#..,,.,,,,\n")
		escreva("   .........,#%///(#( ,..      ../  .,**,,,.../((((((/..          ,., ...,,,,,**\n")
		escreva("...........*/(*%#(((/***,,......*****,...**/((((,.        ((.     (%..,.......,,\n")
		escreva("..... .....(.*/*,*,,*,...,,***,.  ....,,,*(#(.       (#/., ,     .  ......,**,,*\n")
		escreva("........... // ,.,,,,,,.......   .....*.     .   ((. ,,            . . ........ \n")
		escreva("...........    .,,,..    %@@/**%.,,..., ,   . .  .             . ...........,...\n")
		escreva("......,..  .,        .         .  .. . ... . *               .................  \n")
		escreva(".....,... .  *,,.            .@,  .*.,/ ,(.                   ................. \n")
		escreva(".........        .....     ...,*.   &, .,               ... ................    \n")
		escreva(" ..........               .....                       ......... .........       \n")
		escreva("............                                  .........................         \n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")			
	}
	funcao fiat_uno(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É um Fiat uno ", cores[u.sorteia(0, 9)], " tá com um chiado que não sai nem com reza.\n\n")
		escreva("********************************************************************************\n")
		escreva("******************************************/*************************************\n")
		escreva("***************************************/****************************************\n")
		escreva("***************************,,,/#%%%&&&@@@@@@@@&&&%&,,#,,&&%((*,,,***************\n")
		escreva("***********************,&(,,,,,,,%%&,,,,,,*##%&%((/,,,,,%,,,,,,,((***..%********\n")
		escreva("********************,%/,,,,,,,,,%%#,/###(*(#,&&,#%,&,,/,,%,,,,,,,#(,,,,. %******\n")
		escreva("***************#*&#@,,.,,(,((/*%%(,,(((((((,,%&(((((,,,,,,(,,%%%%%##,,,,*,.#****\n")
		escreva("************,.., (%#(///***/////((((((((((((#(#####,.,,,,*,&%%%%%%%%%*#*/(/#%.**\n")
		escreva("***.   ./                  /..            /*/        ..*,*..,/..,,,,,,*,,,,,,,,*\n")
		escreva("*    ,((##                                   ##.      .&,/*./(.....,,,,,,,,,,,(/\n")
		escreva("**/*#@@&@@%&,,/,,,,,,,,,,,,,/,,,,*,,,,,***#@%%&&&&****/%%%###(*******,,,,,,,,(..\n")
		escreva("*###@(%&%%&%*,/,,,,,,,,,,,,,(*,,,,,,,,,,#%@@@@@@&@@@@&&@@&&%%////////////////##*\n")
		escreva("**#(&.(,,@&&&///***,********%**********(&@@@&&&@@@@@@@@@@@@&&&&&&&&&&&&&&&&&&&&&\n")
		escreva("***%%@/,/,#&&@&&&&&&&&&&&&&&&%(*,/%&#**%@@&@,,@#&&@@@@@@@@@@@@@@@&,(%/#(*,@&&%%%\n")
		escreva("***(&(%,*,&@&@%**********%@%%%&&&@@@@@@@@&@***%*@@@@@@@@@@@@@@@&&&&&&&&&&&&&&%,,\n")
		escreva("***//&&%&&@@@**************@@@@@@@@,,,,,,&@@*(@**&@@&@&,,,,,,,,@@@@@@@@@@@&@,,,,\n")
		escreva(",,,,,,,,,,,**********//////////((((((///*(&@%@*#%@@&&*,,,,,,,,,,@@@@@@@@@&&*,,,,\n")
		escreva(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*******//(@@@@@@@@@//////////****@@@@@@&(,,,,,,\n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao corolla(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É um Corolla ", cores[u.sorteia(0, 9)], " tá puxando pra esquerda sozinho.\n\n")


		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@(%#(((////**********&@ ****/.///,*@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@/((/////*******,,,,,,,/@.********,//////*&@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@*//********,,,,,,,,,,,,,.@&.**(&&&@&*..////*/(,*@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&&&@&&%..&@@&@@@@@@@@@&@@@@@*%@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&(*.@&&&&&@@&&%%%%%%&&%&&&&&&&&&&@@@@@@@@@@@\n")
		escreva("@@@@@@@@,@#%..,.(/.#*.  ./%& *#%#./&,@&&&@&&  %&%%%%%%%%%%%%%%%%%%&&%. &&&@@@@@@\n")
		escreva("@@@@@@ @@@/%&&&&&&&&&&&&%@&&@@@%,.*&&&&&&%. .   %%%%%%%%%%%%%%%%%%%(*** &%@@@@@@\n")	
		escreva("@@@@@@,%*.   /@@@@@&     .  #%%%%%#.%%%%&.***/( (%%%%#%%%%%%%%%%%%%.,*(,#%@@@@@@\n")
		escreva("@@@@@@ .                  .   &%%%. *%%% .*(/** *#%%%%#####(((((##( *,.,#&@@@@@@\n")
		escreva("@@@@@@&(.......,***//(((###&%%#*///(%%%%  .,*(% .((//(#%&@@@@@@@*    //#@@@@@@@@\n")
		escreva("@@@@@@@@@@@       (@@@@@@@@&%#(/,..        //*              ..,/(#%&&@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@&%#(/*,,..                     .*(#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")	
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")
		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao celta(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ":Tenho um Celta ", cores[u.sorteia(0, 9)], ", começou a falhar do nada.\n\n")


		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/&%##(/*,,,......%%........... &%#@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@ %##((//*,.***...,.&(..,..., ,****///&&&@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@/#((//*****...*,....%&,,&&%****/,,(((### ,&&&@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@&@@@@@@@@@@@&&&&&%%%%%&&@. .  ./,.,*,*#&&&&&&@@@&&#@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@&%%%%%%%%%%%@&%%%%%%%%%&&&&&&&&&&&&@@@@@@@&&@@@@@@@@@(&@@@@@@@@@@@\n")
		escreva("@@@@@@@@/% .. . .   &@(,,./,/&&&&&@@&&@@&@@@@@@@@@@@@@@@@@@@@@@@@@@&&&%@@@@@@@@\n")
		escreva("@@@@@@@/%/,    . ,@%#*((/**,%@@&&&%       %%%%%%%%%%%%%%%%%%%%%%%%%     &@@@@@@\n")
		escreva("@@@@@@//#(*@*(@/%%%########(//(((* /*. ./  ####((((((((((/#######(.,%#  @@@@@@@\n")
		escreva("@@@@@@@**/#%%&&%%%//%&&&(,**,**/* . .%%&/, (/((((///***/#%#(///// .&%&& @@@@@@@\n")
		escreva("@@@@@@@..          ....,,,...,,*  .#% %%&.        &@@@@@@@@@@@* *..(%%@.@@@@@@@\n")
		escreva("@@@@@@@@@@,,    .  @@@@@@@@@@@@(.,  (##(, #((,  ,**//////((###%%%*..,, @@@@@@@@\n")
		escreva("@@@@@@@@@@&%(*,,,,,*************,, .,* //////(((###%%%&&&&@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")
		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao civic(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": Tenho um Civic ", cores[u.sorteia(0, 9)], ", tá vazando algum líquido e não sei de onde.\n\n")
	
		escreva("                                     ./(#&&&&&&&&&&&&&(//                       \n")
		escreva("                            ,,///*********,,,,,,,,,,,,*&#****//,%%              \n")
		escreva("                         *,*****,,,,**,,,,,,,,,,,,,,,,%#*****,*////*%           \n")
		escreva("                   .% * *******,,,,,,,,,,,...........*#***/(*****///*(,#        \n")
		escreva("                    ,/****,,,,,,,,,,,,...............%/*/#(*..,.,/#&&&&&&&      \n")
		escreva("           /&%&%&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##((####%#%%%%%%#%&%%/    \n")
		escreva("       *%((#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(%%%%%%%%#%%%%%%%%%%#############    \n")
		escreva("      &/#%&(#%%%%%&&&&&&&&&&&&%#(/..(@@#////(%(%%#######################** #,   \n")
		escreva("     /%%(,   .    .,.  .    .,.*,,**,. .*#&&%#### *   #(###############,*,./,   \n")
		escreva("    ,%%%%%%%%&%#(/*,,.....*%&&&&%%%%%%%%%%%#####,,./. #(##############(,,/,#*   \n")
		escreva("    ,  ##     .**,......      #####(.... .,###(.,,,*(./(#######((#((## ,/*/     \n")
		escreva("    *..#*.        ......  ......(#### ..**..(((.(** .,#(/((###%%#*.    ./*,     \n")
		escreva("     /(#*..............   .    .*/*..*#%%%#((( .,#../.                   .      \n")
		escreva("         ,...                          ....  .  .//#,                           \n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	} 
		funcao fiesta(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É um Fiesta ", cores[u.sorteia(0, 9)], " o motor tá esquentando muito rápido.\n\n")
	
		escreva("            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&&&&&&&@@@@@@@@@@@@@           \n")
		escreva("            @@@@@@@@@@@@@@@@@@@@@@@,%&@@&&&%%##((((((/&#&&#&% (@@@@@@           \n")
		escreva("            @@@@@@@@@@@@@@@@@@@@/@&&&%%#(((////******#%##((,((.(@@@@@           \n")
		escreva("            @@@@@@@@@@@@@@@@@.%&&%%#((///***********##/((// ,/*&&@@@@           \n")
		escreva("            @@@@@@@@@@@@@@**// /.,,.  .***********,.%*  %&&@&&&(%(@@@           \n")
		escreva("            @@@@@@@@@####%%&&&&&@@@@@@@@&&&&&#####(#%,.&&&&#.//**( @@           \n")
		escreva("            @@@@@%@((######%%%%%%%%%%%%%%######%#%&&&&&#((//***,,(#@@           \n")
		escreva("            @@@&@%%#%%%%%%%%%%%%%%%%%%%%%%%, #%&&&&&&(///***,,,, #.@@           \n")
		escreva("            @@/,%#.    @@@@@@@@&&&&&.&&/###%/&&&&&&&/*/**,,,,,.  ,@@@           \n")
		escreva("            @@#%%&&@@&*&@@*     *&&*((((/**/&%#%&&    ,,,,,. ,/#&@@@@           \n")
		escreva("            @@(%&&*@@@%&&&&&@@@@@&&&&%##((((//#%*.#%%  ,.,*(%&@@@@@@@           \n")
		escreva("            @@%(#.(@@@,,/@@&&&&&%##((//////**(#,  %&,& .(#&@@@@@@@@@@           \n")
		escreva("            @@@&(.  /. **. /.(%%##(//////***/((#&&%(.* /&@@@@@@@@@@@@           \n")
		escreva("            @@@&%#((/**%*% .   .%//*,,/&#(****,* #% (/ &@@@@@@@@@@@@@           \n")
		escreva("            @@@@@@&&%##(//***,,,.,******,.       .%  *&@@@@@@@@@@@@@@           \n")
		escreva("            @@@@@@@@@@@@@@&&%%###(((///****,,....*#&@@@@@@@@@@@@@@@@@           \n\n")
		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	} 
	funcao gol(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É um Gol ", cores[u.sorteia(0, 9)], ", tá fazendo uns barulhos estranhos quando acelero.\n\n")
		
		escreva("......                                                                ..........\n")
		escreva("....                          .*##(/////////////#((%%%%%%&%%&#/,        ........\n")
		escreva("....                     &,******/(((##((#%%%%%*##%&&&@&%%&&&&%%%%(*     .......\n")
		escreva("...                   ,*/**///(((%%%(#%%%%%#%*/(%%%&&&&%#%%%###((((&&/   .......\n")
		escreva("...               &.(***//(#%@&&&%&&%#%%##&*/#&@@%%%&&%%##&%%%%&@@@@@@((*   ....\n")
		escreva("...        ,,,,,,,,,,,,******(////////////((##&@%%#(#(##########%%%######%%%(...\n")
		escreva("...  /####%%%%%%%%%%%%%###((/#@@&%#########%%%%%%%%%%%%%%%%%%##%%%%%&%%#####(/..\n")
		escreva(".. .#&&%&&&/%&&&&@@@@&&#@&&(/%%%*%&##########%%%%%%%%%%%%%%%#########%&%%##//#..\n")
		escreva("..*#@@@@@@& @@&@@@@@@&&%%&&&&@%(/&&%%%#@@@@@(###########((((((((####&&/@@@#%%/..\n")
		escreva(" ./****,..,*//****//##%%%%%&&&&%&&&&&&@@@@@@&@((((((##%%&&&&%#(#((((#@&&#&@(/( .\n")
		escreva(" .(####.......*&&&&&&(%&&@&&@&@@%%%%%#(*@(((#@&(###((((((((((((####(%&(@*/&#%/..\n")
		escreva("  &@@@@@@@@@&@@@@@%@&&@@(#&##%%%%%%%(&(/#//&((@#((((((///(/(&@&###%%@&%(//@     \n")
		escreva("  @&&@&@&&%&&&&%%%%##%%&&&&&&&&&&&&&(#*##,/#//@#%%%&&.............&@&&&(#/%.....\n")
		escreva("    .&&@@@@@@&@@%.........,,,,,,&@%@@(((@/(.@@%######%%%%%%######((@@@&##(,.....\n")
		escreva(",*//(#%%&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@&&&&%%##((///***,,,,,,...........\n")
		escreva("......,,,,,,,,*****************************,,,,,,,,,,,,,,,,..................   \n\n")
		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	} 
	funcao ford_ka(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": Tenho um Ford ka ", cores[u.sorteia(0, 9)], " tá vibrando demais quando passo dos 60.\n\n")

		escreva("                                                                                \n")
		escreva("                                         .     .....  .                         \n")
		escreva("                                .//#%%%%%%%%%#/* ,.,&&@&&&%&&@@,...             \n")
		escreva("                            ,/##(%#%%%&%%%#%%.,,&@@@@@&&&%%&#%&%#%(,..          \n")
		escreva("                         (###/(######&%#//(./*&@&%#%&&%%&&%&&@@%#%,.  #%        \n")
		escreva("                     *(@%#%(%%%####(#(((#.,*/,,,,/@&%&%%*......,,,,*****&       \n")
		escreva("                ...     .     . ... ,,****&%((.....,,,,***/***********,*,       \n")
		escreva("           *........      ....,(((#..,,,,,,*************************/*****      \n")
		escreva("          ##(*,.....,,#%%%&/##&&***,,,,*****************************@@@@@/      \n")
		escreva("         /@@@@@@@@@@%///**,**********#@&/***/*************/********@&#/(&/      \n")
		escreva("         */////#%%%%/////#/*%@//**@@@@@@#@@/(*//////*********(/***@@((/#&       \n")
		escreva("         (@%%%&##/////(%@@@@@****&%/(/(/@@@///**/(/***,           @@@@%@        \n")
		escreva("            %&#((((###%%(////***@////(/@/@&                                     \n")
		escreva("                    ./#&@@@@@@&@@@/@/#/%@#                                      \n")
		escreva("                                  (@@@*                                         \n")
		escreva("                                                                                \n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao hb20(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": Meu HB20 ", cores[u.sorteia(0, 9)], " tá tremendo demais quando paro no sinal.\n\n")

		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@(&%%&&&&&&#/%####%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@%#%*......*........*&% ...    .....,***%@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@,,.,,***,,,**,,,,,.....,/%#.,,,...,,,,*******/&@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@#&&&%*****,*,.,*****(/%%%%*,,&&/,,,,,,,,.,,,***/*/*/&@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@&(#%%&&&&&&&&&&&&&&&&&&&%%%#(*//*,%#&&&&&&&%%%####%%%%%&&&@@@&&@@@@@@@@@@@\n")
		escreva("@@@@@&*%&%%(#%%%%%%%%(((#&&%%%%%%%%%%%##&&&&%%%/*/((**%&&%&&&&&%%%%%%%%%&&&@@@@@\n")
		escreva("@@@@@####%##(((((((((#############%#%%%####%%%%##( . *.//(**.**,*,,*,,..(//%@@@@\n")
		escreva("@@@@%( .,,.(((((((((((((((((((((((####  *,. .###((((%&%%%%###(((((((((((((##%@@@\n")
		escreva("@@@@% ,(/*  (#%%%%%####(((((((((((((*  (.&/   (((((/ *((/....* *,.(.,#*/(*.,.@@@\n")
		escreva("@@@@# %*,*.  ///////////(((###%%%%%#  ,*,/ (,  (((/  .///(/   . , .......,,.(@@@\n")
		escreva("@@@@@(///(*    .,,,,,,*********/////. ./*,,//  *//(#%%%%%%#(.*////(((((((##*(@@@\n")
		escreva("@@@@@@(  .   /@@@@@@@@@@@@@@@@%    .@*... .%    ,#%&&@@@@@@@@@*  ,(     &@@@@@@@\n")
		escreva("@@@@@@@@@@&&&&&&&&&&%%%#(//*,.           .                 .....,    *#%%&&&&@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")
	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao Hilux(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É uma Hilux ", cores[u.sorteia(0, 9)], " tem um chiado estranho quando acelero.\n\n")

		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%*#&      .     *,//(@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@/#%%%&&&&&&&&&&&&&&&. %###%%##&%&. @@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@(#&&&&&&&&&&&&&&&&&&&@. %%%&&&%&&&&& @ @@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@/.##&&&&&&&&&&&&&&&&&&&&& .&/%%#/(%%((//  /#(%##&%&@,@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@    ........................  ....   .. ...... ,  ......    @@@@@@@@\n")
		escreva("@@@@@@@@@&%.,*/(((((((((((...   ,#*##& ...... ,       .........  ...... (@@@@@@@@\n")
		escreva("@@@@@@@@@ #%&@&,(%@@@&@# #*&#/,,**/&. .........................   ##(.,,@@@@@@@@@\n")
		escreva("@@@@@@@%. %%%%%%%%%%%#####.       (       @@%#...,,,,,,........   @#(//*%@@@@@@@@\n")
		escreva("@@@@@@@&,&%%%%%%%%%%&&&@@%%%.....&% ..  @@&%&((............... ,@&#(@&@@@@@@@@@@@\n")
		escreva("@@@@@@@. .,@@*   ..@@@@   .... %%&&... @&#&@/&@,,,,,,../%%@@@&@@&&,&@#@@@@@@@@@@@\n")
		escreva("@@@@@@@@./((###%%#(///**./*   ....,...@&#*/@@@%@@&&%&&&@@@@@@@@@@@%@@%@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&#@@@@&%@@@@@@@@@@@@@@@@@@@&%%@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&%%@@#&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&#%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
		funcao mustang(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É um Mustang ", cores[u.sorteia(0, 9)], " a embreagem tá alta demais, parece que tá escapando.\n\n")

		escreva("                                                      ///////////////           \n")
		escreva("                                **&#((((((///*///////*** .%%,*/    (#%%#        \n")
		escreva("                            ,        (((#(/@&%//&&&@@&&%%%&&#///*,.,#%%%%       \n")
		escreva("                         ,*///*(##(#####(((//@@&@@@@@&@#%%%%@((//,*//////       \n")
		escreva("               .,,..../,,,,,,((//((((/////&%@@@@@@@@%(((/(((((((((//////**      \n")
		escreva("         /,,,,*###%(%%%%#////////////////(#@&&&%(((((((//#(((((/&&&&@//**,      \n")
		escreva("       ***//////(/**//****////**(/(((((((((////((////////////#&@@@@&&&*//,      \n")
		escreva("      *&#(/((/((//,/////*/(((((((((((((/////////////////#///@&@@&&@@&%*%#       \n")
		escreva("      /%@&%&&&&/((#&&&%&&%@,((@&&&&&///////////((((////(////&&&@@@@%%           \n")
		escreva("      (&@#%%&&&&@((##(((((((@&&@@@@&&&//(///////%#@&&&%,..,&%%&&&&%             \n")
		escreva("      &/%%&&&&&&(%&@@@@&(((&&@@&&&@@&&%%@&&&&%,,,,........                      \n")
		escreva("      ..,,&&&@(@@@@@&@@((%%@&@@&@&#&,,,,,.......                                \n")
		escreva("          ..,,,*,**,,(&#/,,**%&&&%...                                           \n\n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
		funcao onix(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": Meu Onix ", cores[u.sorteia(0, 9)], " tá dando uns trancos quando troca de marcha.\n\n")

		escreva("                                                       (                      \n")
		escreva("                          .(&%#(///*****,,,,,,*/%%(......,...,#%##*           \n")
		escreva("                      (/#(//(//***,,,,,,,*,,,,&&,,,,,**,,,******* &&/         \n")
		escreva("                  (/((/((/////*,,,***,,,,,,,%&,**/***///.,/(((((*/./&&/       \n")
		escreva("              %(,(//((///****,,,,,,,,,,,,,%@(,(@@&@&(.((/**#####%#&&&&&&/     \n")
		escreva("       #@@@@@@@@@@@&&&&&&&&&&%%%&&&&@&&&&&&&%#(%&&&@@@@@%%&&@@@@@&%%#&&&&.    \n")
		escreva("   (&&&&&&&&&&%%%%%%%%%%%##%%%#///(#@@@@@@@@@@&@@@@@@@@&&&&&&&&&%&&&@@@@&&&*  \n")
		escreva("  .*,/       .......  ,%****. .../*&@@&%%%%%&/#%%%%%%%%%%%%%%%%%%%%%%%%%%%&%, \n")
		escreva("  @@              ..   @@&&&&&%%%%%%%% .,   %%%%%%%%%%%%%%%%%%%%%%%%#.    /#/ \n")
		escreva(" .(&..  ,*/(((((  ..../@@&&%%*.,(%%%/.,/,/., %%%%%%&&&%##%%#%%%####% ,/.*. ## \n")
		escreva("  /&&              ..#@&&%%%  .* ##%.,, * /. /(##%&&@@@@@&%##((####/,  *,,.#* \n")
		escreva(" /&@&%%%%%%%%%%%%%%%&&&&&&&&&&&%%##..., /  ,.#((((((((((((((((((((( , ..  ./  \n")
		escreva("                                    ..#, ,/.                        .,  *,    \n")
		escreva("                                      ..*,.                            ..     \n")
		escreva("                                                                               \n")

		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}

	funcao palio(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": Trouxe meu Palio ", cores[u.sorteia(0, 9)], ", o painel acendeu umas luzes esquisitas.\n\n")

		escreva("                                            ./#%&%%#/.  (%%#%%#%                \n")
		escreva("                                 #%##%&&@@&@@&%%(%(#(((((/((//##(/%#&/          \n")
		escreva("                           (.,,*//((((//#((((((%%#/((((//##/////*##(##%%,       \n")
		escreva("                        %.,*/((((((########(##%##(*****,,,(#,,,,,,.&*,,*/#(     \n")
		escreva("                   &&%&((/(((#&@##%####((###%@###*&..***,,%#,,,,...@/#*.,**%.   \n")
		escreva("               ,*/////((((#######(,.,*(((#%##%&@&@&,,,,,,,@(@(&&#/*,,,,,*,,,*(  \n")
		escreva("        *#%&%. .,*//(((((###%%#####%%%%#%%####(((((((*(**,&,*,,,,***&*////((##  \n")
		escreva("    (.(%%%%#########%#%%###%%&%%%%%%%%#,###%%....,,****/////((((((((##(*****##  \n")
		escreva("    */ /&/%/%%%%&/%%#%/ *.,.(/ ,/%%#######*//,#&##########%#,.,,,,**#((@@@@@/## \n")
		escreva("  **////#&&&######/#%&(&%%%%%%&%%#%%(@@@@@@@@&/(//(#%%#############&#(((%%#@((# \n")
		escreva(" &%/#&&&&&&@@@@&&&#(/*../%##%%%&,(##@&%%&%%#@@#&#%%%%#%#%&/*%%#####%#/&.**&%##  \n")
		escreva(" *#@%********#((((/&(&&,*#%%%%%%,(#&%/*. ,(&&%&%&%%%%&@&%(,......%&%%%( / *%    \n")
		escreva("  #%%&@@#%&@%@@%&@%#/**%%%(((###(#&,%&,.*&/,&&#%**/,              @&&&,#**&     \n")
		escreva("    (&@&*,... ./%%.//(///((###%/#&%//.,,&,/,&&%@&#/////////////////&@@&##&%,....\n")
		escreva("      @@@@@@@@@@@,,,,***///(((&%#&&,*/&.#,/&&%&%%%%%######(((((///****,,,....   \n")
		escreva("  ...,,*/(#####%%%%%%%%&&&&&&&&%&&&&%%&&&&&&&//**,,,.........                   \n")
		escreva("  .......,,,,,,*******************(%@@@@%,.....                                 \n\n")

		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao porshe911(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É uma Porshe 911 ", cores[u.sorteia(0, 9)], " o velocímetro tá marcando tudo errado.\n\n")

		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&%%###(((((((((((((((##,  &#@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#((//(///***/**,,.       .*,*.,,,,./#%@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%###%&&&%&%**,,,.     ...##( *,./(#((.,.,,(.%@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@%%%#&&&&&%%%*,  &..... .,.... .*%.........,.,,,,*#%@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/, %%%%@&&///,,. .. ....  .,,,*  ,   ,*  (*,,,*///##########%&@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@&%%%&&&%##%%%%%%%%%%%%%%%########(/*,,,(*,,//(,..*//**/****,*,,(,,(,,,/@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@#/**//##%%%%#%%%%%#######(#%(((((######(/***/((##,,,,*,,,,,,,(##*,/(*,,,,,,.,. *@@@@@@@\n")
		escreva("@@@@@@@@@@@#//(&*(#%%%(########(((((((/**//(#*, . ./,,,,,,,,/***(*#,//***,,,,,,,,*,,*,,,, /,( &@@@@@@\n")
		escreva("@@@@@@@@@@##*/((###(((/////****************..** (/ (,#**,,, ..   ,*,,,,,,,,,,,,,,,,,,*,./,(*&*@@@@@@@\n")
		escreva("@@@@@@@@######(///*****&*/@&****************.,,,..,**,,*%#%./,//, ,*((((((((((((((/,,,,../. ,&&@@@@@@\n")
		escreva("@@@@@@#(###((//*************//#@***,**,***,,*,*,,,,,*/,,*,%*.(#,/* ((/////(((/((/,,,,*/.%.,.*/@@@@@@@\n")
		escreva("@&&@&& %/. /********///////////**#**///,,,,,,,,,**,*,,,,.. ,.*,,/. *(/////,,,,,,*//////.,,**#@@@@@@@@\n")
		escreva("@@@@@@#/  .(////,,@&@@@@&,*****,,,,,**,....,,,,,.******/.* .%*../* (,*,*///(/,,**#    .. *,,@@@@@@@@@\n")
		escreva("@@@@@@* . .*,.  ..,*****. ,,.*,,    .....,,,,,,*****/(., ,.*, .,/(**********///(#/##%%%%&&@@@@@@@@@@@\n")
		escreva("@@@@@@@((/*/*,,,,,,,..     ...  ,,,,. ..........*****/*.*/.#. *# ...,,*/(#%%%&&&&&&&&&&&&&&@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@&%/......*////*****#/,,***,*************...,.*@,.#,/(##%%%%%%&&&&&&&&&&@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@%%%%#*,,,,,.*,......,................ ..          ..,.%%&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@&&&&%%##(////////*******/*///////(((##%&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")


		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
		funcao ranger(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ":  É um  Ranger ", cores[u.sorteia(0, 9)], " o freio tá meio mole, demora pra responder.\n\n")

		escreva("@@@@@@@&&&&&&%%%%%%%%%%%&&&&&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@&&&&&&%%%%%%%%%%%&&&&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@&&&&&&%%%%%%%%%%%%%&&&&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@&&&&&&&%%%%%%%%%%%%&&&&&&&&&&@@%#(*,,....*,.,,*(&@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@&&&&&&&%%%%%%%%%%%%&%%%%%%%%%%%######## *////#(///%,(#@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@&&&&&&&%%%%%%%&%%#%&&%%%%%%%%%%####*,%%%&@@*(,*,*%.%&@&&@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@&&&&&&&&&%((*/**,,,,,,.....,,......,@@@#(/*,... . .... ...@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@%,.................... ., .. .. ..*@&..,,,.&#,,,,,,,,,,,,,#@@@@@@@@@\n")
		escreva("@@@@@@@@@@@&@&%%%&&&&&&&@@/@@&@&@@@., ..#####%,.,,,,,,,,,*,,,,,,.&@@@,(@@@@@@@@@\n")
		escreva("@@@@@@@@@@@#@&&%%#%&&&&%&&@(,,,,,,,,,.%%&@@@@@&&,***********,,,,@@&@@*(@@@@@@@@@\n")
		escreva("@@@@@@@@@@,....,***/(((((, .. ....,,,/@&@@#(@@@@@,,,,**((####(/#@%%%@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@(&&%//////,,**,**//(%#%&&/*@@@#%#&&&@@@/%/(#%((%&@@@@@@%#%&@@@@@@@@@@@\n")
		escreva("@@@@@@@&&@#@@@@&&&@@@@@&@@@##//#/*##@@@%#&%&%&&@@@&&%#((&&&&&&@@@%%&&%%%%%%%%%%%\n")
		escreva("@@&&&@&&&&&&&@@@@@@@@@@@@@@@@%%%%%%@@@@@@&@&%#&@@@@@@@@@@@@@@@@@@&%##((((((((((\n")
		escreva("@@@@@@@&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@#%@&%&@@@@@@@&&%##((((((///((((((((((((\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@(@@@&%%###(((((/////////((((((((/(((\n")
		escreva("@@@@@@@@@@@@@@@&&&&&&@@@@@@@@@@@@@@@@@@&&&%%%#######(((((((((((((((((((((((((((#\n")
		escreva("@@@@@@@@@@@@@@@@@&&&&&&&&&&&%%&&&&&&&%%%%%%%%#################################%\n\n")

		
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao sandeiro(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É um Sandero ", cores[u.sorteia(0, 9)], " o ar-condicionado parou de funcionar do nada.\n\n")

		escreva(".                                ...&*,*/(#%%%##((/*(.    .  .                                   \n")
		escreva("                           .*.,,*/(##%%%%%&&&&&&&&&&&&&&%%&&, %*,,@.,,,&#                                \n")
		escreva("                        ///(///(%&&&%####&@@@&&@@@@((((//&@, ,,,,*,@....#(.                              \n")
		escreva("                      #(#(((((#&&&&@####@@@@@@@@@@@@&((/@@#. #***//*% ...@@                              \n")
		escreva("                ,*/@%#%(%%###%%@@@@@@@@@@@@@@@@@@@@@@@@@@../(%(**(#&&..*,,*                              \n")
		escreva("                                           ..     . ..   #%&@&#&,             .                         \n")
		escreva("              .....................   . .......,.        &(.,.       ..    .,                           \n")
		escreva("     ,*#............*#*............ %&@*.#*((//*%,           ........      ..,                          \n")
		escreva("   ,././@@&&&%%&&&,%.,%%%%%&%(//#%&(&%#%*&*,./ &........... ,..........    ../,                        \n")
		escreva("   %&,*@(&&&&&&@@&(@,@@&%%&@@@*. &@,@@%%%%   ....,,,,..@@@@.................%/@                        \n")
		escreva("           .&@@@@@@@@@@@@@&....       ...........,,,.#&@&#@&..,,,....... ../%(&                        \n")
		escreva(".&/,,.                   ..... .. .,,,,.,#%&(*......(/(#/%@&,..............&(. /                       \n")
		escreva("%@@@@@@@@@@@% . ,..  * * &@@@&@@@@@@@@@@@@@@@@@*....@@&%@@@@%.,,,,.... ,(..@&,/&                       \n")
		escreva(" @& @&&#@@&@&&&&&&&&&&&&&&&%%&@.,*&&&&&@@**@@@@**..((*(&#(#/&,/*/...,,,@@@@@#/((                       \n")
		escreva("  (&&&,@@@@@@&@@@@@@@@@@@@@@@@@@@@@,/%&@@@@@@&%*//,,#@%/#(@%%&/.        .@&%&@#*                        \n")
		escreva("  ..                           .,,,,.....     ....,&@@%@#%,&&(((((###%%%%@@@@&.                        \n")
		escreva("    %&&@@@@@@@@@@..,,**/((###%%%&&&&@@@@@@@@@@@@%&@@&(/&((#&@@@@@@&%#(/*//***,.                        \n")
		escreva("   .*(#@@@@@@@@&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@@&&@&&@&&&%%&%#(/***,,,,,,,,,,...                        \n")
		escreva("     .......,,,,,,*****////((((((((((#######(((((((///***,,,,,,,,,...........                          \n\n")
	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao fox(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É um Fox ", cores[u.sorteia(0, 9)], " a direção tá dura, parece que travou.\n\n")

		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&%###%@@*@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&*,,,...         ,@&(    ,,    //@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@*(*//****   **   *.@@& *    * ,****, /*@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@##(//*******   ***   @@@//.%%(/./.,,  .*..%/@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@/////////((((((#####@@@@@@//,.  . ,(%&%%%%###(((/@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@///////((((((#####@@@%&&@@@@@@@@@@&@&&&&%%%#*##((((///.@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@////(((((((###%%%@&@#./&@(#@@@@@@@&%%%#####((((((//////((/@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@/     (/         ..*(#%%(#.&&@@@(*.(##(((((/////////(((#., ,@@@@@@@@@\n")
		escreva("@@@@@@@@@@,,,,.,*////((##%&&@%###((((%%&% .***/ /(%%%#%#*//////.,..*** @@@@@@@@@\n")
		escreva("@@@@@@@@@@,   #######////(((((((((((((((.../.*/ ,/**////((((****/*,*(,.@@@@@@@@@\n")
		escreva("@@@@@@@@@@(.*           ..(.... .., .///.%./(,,(../******,@@@@@@  .*.%@@@@@@@@@@\n")		
		escreva("@@@@@@@@@@@@@&   .      .,***////******..,&*( (&,....,***////(////*#@@@@@@@@@@@@\n")
		escreva("@@@@&&&&&%%##((//    ....,.,,,,,...... ..,%&@/*.##%%&&@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@&&&&%%###((///////////////////***,.. /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n")
	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao voyage(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": Meu Voyage ", cores[u.sorteia(0, 9)], " tá com um rangido toda vez que passo em lombada.\n\n")

		escreva("                                *((((####%%&&#######%##%%%%                     \n")
		escreva("                           //((((###&&##&&%%*(/((((##******&%(/                 \n")
		escreva("                        ((#(#&###&%%&&&#/#%%&#(((((##(/((((((#//#*.             \n")
		escreva("                ////((((((#%%%###%%%%((%%&#(////////////////(//((//(#%          \n")
		escreva("            @@@&&&&&&&&(//,((/*(#%#(((////#(((((((#%##%&&&&&&((//(%%%%          \n")
		escreva("           %##(#%/(((*#@&#//////#@@@@@&#&&&&&&&&&&&&&&&%(///(&@#@@&&&&          \n")
		escreva("          ,%& ,, &&&&&&&&&&&###&@&,#*@&@&&&&&&&&&&&&&&&&&&&&@&%/#@@&&%          \n")
		escreva("           &@@@@@@@&&@#&%&%#&&&@&/.(((@@&&&&&&&&&&&%&&&&&&&@@%/#(,              \n")
		escreva("              @@@@@@@@ @@@@@@@@@&/@**.&     @@@@@..........@@@%,##              \n\n")
		escreva("          .,*/(#%&&&&&&&&&&&&&&&@@&#&&&&&&%%%%#(/*,,...     \n")
            	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao compass(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": Tenho um Compass ", cores[u.sorteia(0, 9)], " tá morrendo sozinho no trânsito.\n\n")

		escreva("                                             ........      /                    \n")
		escreva("                               *((#%%&&&@@&#(##%%%%%%#.,,###%###/,*,.           \n")
		escreva("                           ,(#%%%%%%((#%&@@@@@&&&&%%%,(#######(/////// .        \n")
		escreva("                        *##%&%%%(##&&@@&&@@@@&&&&&&,,*####((((#,,*((#(&. .      \n")
		escreva("                     /#%&%%%%%#%%&&@@&&&@@@@@@&&@&,.@%&@@@@&##%&&(,.....   .    \n")
		escreva("             .  . ..............,,.........,...., .,,,,,,...../*.....,..    (   \n")
		escreva("        ..,,,,,,,,/*,,,,,,,,,,...........,.,........  ...,.,,,,,,,.,.....,,,,   \n")
		escreva("       (/&@%&/#@%&@(#@%#&@&@&&%(*((#((.*.(............................,.%@@@#   \n")
		escreva("       ../#%%%&&&@@&&&@&&@&&&,,,...........*,#%@@@@@&.,.,,,,,,,,,,,,,,,&%((@@   \n")
		escreva("      *%%&@@@@@@@@@@@@@@@@@@&&&@@@@@%.....*(&@@&%@@@@#*,,,,,,,,****,,,*%%/*&@   \n")
		escreva("       %*/*/,,,,,,,,,,#/,,,,..&&&&&&@@(,,//@%&@@@@&%%@**,,,,,,,/((%@@@@%&(%#    \n")
		escreva("       /@@@@/**,,,,,,,,@@@@@&,.........*//@@(%#%#@/*&%*/&@@@@@@@@@@@@@@&&.&*    \n")
		escreva("       (@&&&@@@@@@@@@@@@@@@@@@%%%%%%%%%%#%&&&%%*#&%&(&&#*,,,,,.....,@@@@%(#*    \n")
		escreva("         @@@@@@@@@@@@&&&%##(//*(&&@@@@@@@&&%@%&%&#&,%&@@@@@@@@@@@@@@@@@@@@(     \n")
		escreva("        ..,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&%*@#&%# %&&&&%%#(*,..                \n")
		escreva("           .,/(##%%%%%&&&&@@@@@@@@@@@@@@@@@@&%%%%&@/                            \n\n")

            	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao fit(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": É um Fit ", cores[u.sorteia(0, 9)], " tá com dificuldade pra subir ladeira.\n\n")
		
		escreva("                                 .. ..    ..    ..  (....,@%(%&*....            \n")
		escreva("                           &,,,*....((((((((((###..%*##////#######(%##..        \n")
		escreva("                       %,****...... ###((####(#.,#%%%(////*//((/////(((/ .      \n")
		escreva("                  .&*.////#........(###((#### ,(/*/(,&%,*,,,,/,,,,,**##( ../    \n")
		escreva("                     .. ...   .*#&&%%@%%@@@,##((*@@&@@#&@&#   .   ....,.,....   \n")
		escreva("          .............................  .........,,,..  .. /* ....,,..    .,   \n")
		escreva("       . ......................##(,,(#(..          ......,,,,,,*,,,.......,,*.  \n")
		escreva("      .#.. .. ........  .(%&&&&@%&,,&&..        ..,,,,,,**********,,,,,,,&@@@.  \n")
		escreva("       %@@%@&*(@&@@&@&%&&@@@#,%&@#.........#@@,*,,,,*****************,,,%%@&%&  \n")
		escreva("    ,..... . ..   .           ..... ,,,,%%%%%%@@/,***********,, ....,,*&@*%/.@  \n")
		escreva("    &&%&&&%%%%%%@&&&%%(*#&&&&(@//**,,,,@@&@  @&&@*,**,,...***//*//((/&%&@*&@(   \n")
		escreva("    @&&%@@%%&%%%@&@&@@@@@&&&&&&&///***,@&&(%# @&@**/////# #&&&%##&   @&&&@@.    \n")
		escreva("    &&%@@@@@&@@@@@@@@&&@@&&&&&&&&#(///@@@*@(&@@&@##%@@@@&&@@&&&%%%%###&&&%      \n")
		escreva("          %@@@@@@@@@@@@@@@&&&&&&@@&@&&@@&&@@@@&@@@&&%%##((/,                    \n")
		escreva("    .,*/(#%&&&@@@@@@@@@@@@@@@@@@@@@@@@@@&@%##&/,                                \n")
		escreva("                    .*/////(///*,.                                              \n\n")


            	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao siena(){
		cadeia Nome_cliente = nome_clientes[u.sorteia(0, 19)]
		escreva(Nome_cliente, ": ", frases_cliente[u.sorteia(0, 19)], "\n")
		escreva(nome_mecanico, ": ", frases_mecanico[u.sorteia(0, 13)], "\n")
		escreva(Nome_cliente, ": Tenho um Siena ", cores[u.sorteia(0, 9)], " tá fazendo um barulho metálico lá atrás.\n\n")
		
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,**..    ..****/(&@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                   .**      *     *@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@ ..                  .*,.       ., .... /(@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@ .. . ........., ......***..,%&@@#..,,......,*/@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@%###(((((((///////************,*****  ,,,,,....,...,,*****//(@@@\n")
		escreva("@@@@@@@@@@(/**********************.****,,*******,,,*********,..**,*,,,..,*****@@\n")
		escreva("@@@@@@@@@,,*/(##%##(*,,,,,.. .. .....,**,,,******,,,,,,,,,,,,,,,,,,,,,,,,**%,,*@@\n")
		escreva("@@@@@@@@,   . /@...,**%,,.   .,,,,,..,,,*,*,     ,*....,,,,,,,,,,,,,,,,,,   #,,%@\n")
		escreva("@@@@@@@%.,%%%%%%%%#,,,,,,,,,,,,.,.,...,,,.  .     .,..............**/,,.  . ..,@@\n")
		escreva("@@@@@@@@  *#&%%%%#,.,,,,,,,.......,..... .     /   ......................, ,.*@@@\n")
		escreva("@@@@@@@@ .                #(//&&* ,.....  / # , .  ,,,,*,.............   . ,&@@@@\n")
		escreva("@@@@@@@&,,    ...  ..,(,,,,,,,...,/,... . , ,..., .../(///((((((####%    ., &@@@@\n")
		escreva("@@@@@@@@@@@@&         #*...............   ,... ./ .........,,,,,**,,,...*%%&&@@@@\n")
		escreva("@@@@@@@@@&%%#(*..  ..................      .  .  ,,,****//(((##%%%%&&&&@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@&&&%%%###((///***,,,,.....        ####%%%&&&&@@@@@@@@@@@@@@@@@@@@@@@@\n")
   	
		escreva("[1] Concerto Profissional         [2] Modo Gambiarra         [3] Recusar cliente\n")
	}
	funcao evento_especial(){
	
		escreva("                                         --- Evento Aleatório ---\n\n")
		escreva("Um cliente novo chegou com um carro de corrida. Ele está com pressa e oferece um pagamento extra por agilidade.\n\n")
	
		escreva("////////////****************,,,,,,,,,,,,,,,,,,,,,..,.................,,.,,,,,,,,,,,,,,,,,,,,,****************///////////\n")
		escreva("///////////****************,,,,,,,,,,,,,,,,,,,,..........................,,,,,,,,,,,,,,,,,,,,,****************//////////\n")
		escreva("////////****************,,,,,,,,,,,,,,,,,,....................................,,,,,,,,,,,,,,,,,,,***************////////\n")
		escreva("////////***************,,,,,,,,,,,,,,,,...........................................,,,,,,,,,,,,,,,,***************///////\n")
		escreva("///////*************,*,,,,,,,,,,,,,,.................................................,,,,,,,,,,,,,,,,*************//////\n")
		escreva("///////*************,,,,,,,,,,,,,,,.........................................@@@@@,....,,,,,**,.,,,,,,**************/////\n")
		escreva("//////*************,,,,,,,,,,,,,.,...................... ....... ..........(*//..., ....//,.,,&.%,.,,,,,,..,********////\n")
		escreva("/////*************,,,,,,,,,,,,,,......................         .(.  ...%&(.*.*,/@      .*...#@,&,#(,,,,*, ./(*******////\n")	
		escreva("////*************,,,,,,,,,,,,,.....,,.............       .,   %%&  &&*&%&(%###***, ...  .,.&,@,@##/,,,,/((&**********///\n")
		escreva("////************,,,,,,,,,,,,,/&&%%***,..#....... .          #%/%#((/(/#@#@&&%#(((((##  ,,..   %&@&%@%%%%%%%%#(*******///\n")
		escreva("////************,,,,,,,,,,,.%&&@&.&@@@@@@%%..... .*..,,,,,,,,,****,.**/*.**  ..,.*,.,.. ...,,,,%&&&&&%&&&&&&@@%******///\n")
		escreva("///*************,,,,&@@,,,,&%%% @@&@@@@&#%@..(**...,,*..,..*(((%**/(&(*. **,,**. .....  ./%((@@&@@@&&%%%###%@%(******///\n")
		escreva("////***********,@@@@@@@,,,,@&@@/@@@@@/**,/,,,%&*(/*.#/&&&&&%%#%*/***** /*/@@@**//(%%*%/(%((&&@@@@%@@&&&&&&((&(%******///\n")
		escreva("////**********&@@@@@@@@,,,,,@@@..%,.,,/,*@@//&&&(@#%%&&&@@@@@&%%/#&&#&///((/#(#(#(/((//&&%%@&@@@@@@@@&@&@&(,&///****////\n")
		escreva("////********%&@@@@@@&%*/,,..,,.,,/,**/&%/(&&&&&&@%&&&&@@@&&@&%%@%(@%@@&&@@@@@@@@@@@&&&&&&&&&&&&@@(/*//(%&&%((///////////\n")
		escreva("////********/%%/*%/%%.,,...,,,, ///(&&@@@####%%%@%%%%@%%%@#*/////&/@@@@@@@@@@@@@&&%&&&&@@@@%*********************///////\n")
		escreva("///*******/*,***.%.%@,..,*.,***@@@((((#%%&&&@@@, &&&&%%&@%//,@@&(%&@@@@@@@@@@@@@@@&#***,,,,,,,,,,******************/////\n")
		escreva("///////////.,,,# ****  *,@#*(##,*%#.,,%**&*   ..,@&&@@@/(&(%%@%%(&//(/****,,,,,,,,,,,,,,,,,,,,,,,*****************//////\n")
		escreva("//////////(.,,,#.@@@@%//*/**%.....,*/*%    ******@&&@@@#@&&((((@*%@**,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*****************/////\n")
		escreva("//////////(&@@@#,,*.,%*%/(*,../,(**#,,  ,/,,,*,*/&@@@@@&@&/.,.(&@%#/*,,,,..,,,,,,,,,,,,,,,,,,,,,,,****************//////\n")
		escreva("/////////////(%&&&@@@@ #%*%,%*%%.%,%, .*,,*,.*/,*#&&&@@@@@@@&&//***,,,,,,,.,.,,,,,,,,,,,,,,,,,,,,,,**************///////\n")
		escreva("//////////****/////(#%&&&@@@&%***,*/ ***,*#&&&%(////////****,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,****************///////\n")
		escreva("//////////**************///#%&&&&@@&&&&&&&%%%%((/**,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,**************/////////\n")
		escreva("///////////*********************//#%#(((/*****,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,***************//////////\n")
		escreva("////////////****************,,,*,*,*,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,****************///////////\n")
		escreva("/////////////******************,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,****************////////////\n\n")

		escreva("[1] Aceitar o desafio (+R$ 600 , +risco de falha) \n")
		escreva("[2] Recusar (Sem bônus, sem risco)\n")
		leia(escolhas)
    
    		escolha(escolhas){
    			caso 1:
    			dinheiro = dinheiro + 600
    			se(u.sorteia(1, 3) == 3){
    				erros_evento++
    			}
    			horario = horario + 2
    			pare
    			caso 2:
			horario++
			pare
		}
	}
	funcao falencia(){
		limpa()
		escreva("                                                      ............ .                                                    \n")
		escreva("                                             ...............................                                            \n")
		escreva("                                        ..........................................                                      \n")
		escreva("                                    .............,,**(((.....*(((((***................                                  \n")
		escreva("                                 ..........**((((,((((**,,,,,###*##(#(((((**.............                               \n")
		escreva("                               ........*/(((/##*##/#%##*,,,,(##########,##*###(*...........                             \n")
		escreva("                             ......./######.######//**/*,,,,***//////#############/.........                            \n")
		escreva("                           ......((###%#####(//*///%%%**,,,***#%%%%%///*//#(#%##*####(.........                         \n")
		escreva("                         ......####(#%(##(//((&&&&&&&**%&(/**/&&&&&&&&&&&((((##%#/##(###.........                       \n")
		escreva("                        ......(#,###%##((((&&&&&&&&&&&&&&#**((&&&&&&&&&&&&&&((((#%&##%,###........                      \n")
		escreva("                       .....#%%**%%%%#(##&&&&&&&&&&((((((**((((((((((((&&&&&&&####%%%%%,%%#...........                  \n")
		escreva("                     ......#%%%.%%%&###&&&&&&&&&&((((((((*((((((((((((&&&&&&&&&&###&%%%.*&%%,,.........                 \n")
		escreva("            ......,,,,,,,,,,,,,*(%&###&&&&&&&&&&((((((((*#&&&&&&&&#(#&&&&&&&&&&&&%%%&&&&/&&&&**,,.....                  \n")
		escreva("               ...,,,,,,,,,,,,,,,,*(#&&&&&%&&&&&(((((((**(/&&&&&&&&&&&%&&&&&&&&&&&&&&@@&%%@&&@*,,.....                  \n")
		escreva("                 ...,,,,,,,,,,,,,,,,*%%%%%%%%%%%%((((((*(((((((((*%%%%%%%%%%&&&&&@@@@@@@&&%%&&*,......                  \n")
		escreva("                    ..,,,,,,,,,,,,,,,**%%%%%%#%%%%%&((*/(((((((((((/(%%%%%%%%&&&&@@@@@@@@&%(&&#.......                  \n")
		escreva("                       ..,,,,,,,,,,,,,***(######%%%#%%%%%(((((/((((((((%%%%%%%%&&&&@@@@@%(*,&&%........                 \n")
		escreva("                  ....    ..,,,,,,,,,,,,***/####(#############(/(((((/(##%%%%%%%%%&&&&%&*.#%%%,........                 \n")
		escreva("                  .......    .,,,,,,,,,,*,***/##///////*#####*/////////(#(###(###(&&&%#%,,####,........                 \n")
		escreva("                    ..... ..    .,,,,,,,,,,**********************/////(((((((((/(&&&%##*.##/##........                  \n")
		escreva("                   ...... .....    .,,,,,,,,,**********************/(((((((((/(&&&&&##%.####(,........                  \n")
		escreva("                     ..... ..... .    .,,,,,,,,,,,,,,*****************///////&&&&&&###,###((,,........                  \n")
		escreva("                     ....... .... ...    .........  .. .........,,****,,///&&&&&&((((,(((//,,.......                    \n")
		escreva("                      ........... ......                . .,,,  . ,,,,,,,,,%%%//.///.////*,,.......                     \n")
		escreva("                        ............    .   ..,,,,,******.....*/(   .,,,,,,,,**,**(***(***,.......                      \n")
		escreva("                        ......,...,,...          .............,,,*/*   .,,,,,,,***,*(/***,........                      \n")
		escreva("                        ........,,,,,,,..  .                    ......    ,,,,,,,,////**.........                       \n")
		escreva("                           . .....,,,,,,,,,...................      .....   .,,,,,,,**.........  .,(,.                  \n")
		escreva("                             . .....****///****/,....,............    .,,**    .,,,,,,,....     .,.*                    \n")
		escreva("                                   .  . /*////////////(///////***,,.......,,,*   .,,,,,,,.    ,....,                    \n")
		escreva("                                            *********************,,,.......         .,,,,,,,,......,                    \n")
		escreva("                                                   ,,,,,,,,,,,,,,,,,                   .,,,,,.......                    \n")
		escreva("                                                                                       ...,,,.......                    \n")
		escreva("                                                                                     ...............                    \n")
		escreva("                                                                                  ..................                    \n\n")
		escreva("Infelizmente, a oficina não resistiu às dívidas e precisou fechar as portas.\nO motor do seu negócio fundiu, provando que o carro não é a única coisa que pode dar PT.")

	}
	funcao explosao(){

		escreva(",.....................................................................................................................................................\n")
		escreva("*.....................................................................................................................................................\n")
		escreva("*...........................................................,.........................................................................................\n")
		escreva("*......................................,,,,,,,.....,.....,,.,.,,,,,...,.........,,....................................................................\n")
		escreva("*.,,,,,,,,,,,,,,,,,,,,,,,,,,,**,,,,,,,,....,,,,,,*,*,***,***.*****,,,**,///*/**/((/,**,,.,*,,,*((,,*,,,.,.,,,,,*,*,*,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n")
		escreva("*,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*/,,,,*,,*,//,,,///////////////////////////////*////*/,,,,,*,,*//////*///,,,,,*,,***,***,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n")
		escreva("/,,,,,,,,,,,,,,,,,,,,,,,*,//,,,,///////*//////**//***,,,,,,,,,,,/,,,,,,,,,,,,,***,,//,,,,,,,,**/**,,**/,,//*//,/////,//*///**/,,,,,,,,,,,,,,,,,,,,,,,,\n")
		escreva("/,,,,,,,,,,,,,,,,,,,,,*//////////***********************************************************************,***,********//////////**,,,,,,,,,,,,,,,,,,,,,\n")
		escreva("/**************************////////////////////////////////**********/%@@@@@*@&&/***/******************************//////////////*********************.\n")
		escreva("(***..**************************////////////////////////////////////&*&&**(%&@@&/%//@@&//////////////////////////*****////**********************......\n")
		escreva(",......... ..,/***********/**/***************///////*******///(%%%(/**//////**#(/*((#(*/&////////////////*******************************/*/. ..........\n")
		escreva(",    ........................... *////////////////***//////((#**////**//##(*********/*(*,%*%&*///*//////////////////*/////////////// ..................\n")
		escreva(",           .................................... */////////,,,##,/,,,,,///*****////,,#******/(//*////............/* . .... ...............  ..        \n")
		escreva(",                 ....................................*///..,.,,,,,////,,.,,.%%%,#%%,,,,,,,,,//  ....................                                 \n")
		escreva(",                          .... ...              .../(%%%#%#%%##%%////......./ %#%%##%%..,,,,,////,........                                           \n")
		escreva(",                                                */,////////(%%%#/*///..%%%(#/#/%@@@&@#%%%%&#%*(/////                                                 \n")
		escreva(",                                             ,/#%%%//**/%%#%@@@@&%#///**&///@@@@@@@@@@&%%%%%%%%%%%%%///,                                              \n")
		escreva(",                                            /((*#%%%#(//&&@@@@@@@@&#&@@@@@@@@@&&&&&&&&&&&&&@%/&&&&&&%%%/,.                                            \n")
		escreva(",                                           ////#%%%#(/%&&&&&&&&&&&//&&&&&&&&@&@@@@@@@@&&&&&&&%/&&&&&&&&&/*                                            \n")
		escreva(", ......................................... //%%%%///&%@@@@&&&@@@%&*&@@@@@@@@@@@@@@@@@@@&&&&&&&&//%@@&&&%//...........................................\n")
		escreva(",..........................................*/##%%#/&&&@%@@@@@@@@@%&&@@@@@@@@@@@@@@@@@@@@@%&//(%(%//////*@&//.......................................... \n")
		escreva("*............................................%//%%%%%%#&@@@@@@@@@@@%@@@@@@@@@@@@@@@@@@@%*#%%%%%%%%%%//%(/@//.......................................... \n")
		escreva("*.............................................//#%%%%%#%%#@@@&@@@@@(*@@@&@@@@@@@@@@@@@@&@&&&&&%%%%%%#//%////,......................................... \n")
		escreva("*.............................................///%#%%%%%@&&@&@@@&&@@&@@@&&@@@@@@@@@&@@@@&&&&&&&&#%%%#/%////,.......................................... \n")
		escreva("*...............................................,///(%#%%#&&&@@@@@&&&&&&&&&&@@@&&&&&&@@@@&&&&%%#%##/%%///.............................................\n")
		escreva("*..................................................///#%%&%#%%%%%%%%%%%%%%%%%%%%#%%%%%%%%##(#(////////,...............................................\n")
		escreva("*.....................................................///////**/*/,******,(//(##%#///*//////*//.......................................................\n")
		escreva("*.,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,..,.,,,.,..,.../////#####/*,.,,,,,.,.,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n")
		escreva("*,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,/(&###/,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n")
		escreva("*,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,//####(,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n")
		escreva("/,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,//##&####*/,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n")
		escreva("/,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*/#@&&######/,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n")
		escreva("/,*******************************************************************,///#%@((##(*/*******************************************************************\n")
		escreva("/***********************************************************************//*(#/((#//*******************************************************************\n")
		escreva("/***********************************************************************//##(@%##*********************************************************************\n")
		escreva("/**********************************************************************%*#%(@@(((*********************************************************************\n")
		escreva("(*********************************************************************##(%#@@@@&(/********************************************************************\n")
		escreva("(////////////////////////////////////////////////////////////////////*&**/#&@((##**///////////////////////////////////////////////////////////////////\n")
		escreva("(/////////////////////////////////////////////////////////////////////*#*(%@(((,***///////////////////////////////////////////////////////////////////\n")
		escreva("(////////////////////////////////////////////////////////////////////(@/,#(@@%(((#*///////////////////////////////////////////////////////////////////\n")
		escreva("(///////////////////////////////////////////////////////////////////@(**,#((##%(((,*//////////////////////////////////////////////////////////////////\n")
		escreva("(/////////////////////////////////////////////////////////////////@(//*#(##@&#(((((/,(////////////////////////////////////////////////////////////////\n")
		escreva("(////////////////////////////////////////////////////////////////&*,,/(#%(&@&@@((&(/,,,*//////////////////////////////////////////////////////////////\n")
		escreva("(//////////////////////////////////////////////(//((#(//////////@.*#(((%((&@@@@&###(#*.,,//////////(((((/((*//////////////////////////////////////////\n")
		escreva("(///////////////////////////////////////..*.,.,,*((..,#@&#/////@*#((((((#&@@@@@&&#(&#(((,*//////&%%%((((//////*///////////////////////////////////////\n")
		escreva("(///////////////////////////////.....,..,***//****///....,#*/(&..,(((#&&&&@@@@@&&&@&&(*#/.*///&((..,,********...........*/////////////////////////////\n")
		escreva("#/(((((((((((((((((((((((((((/........,/,,,,****/////*/*/.......,##(&&@@@@@@@@@@@@@&&(#.....#(((///*/**//*****..*/*....../(((((((((((((((((((((((((((\n")
		escreva("#(((((((((((((((((((((((((((*....,,,,,,,,,,,,,,,/////((#/. //**/(%%%%&@@@@@@@@&#&@@&%(#(#((/////#(%%(((((////**,,...,....../(((((((((((((((((((((((((\n")
		escreva("#((((((((((((((((((((((( ......,/,,,**,,,,,,,,,*,***,**/(#(*((%%%%%%%@%&@@#((#%@@@@@&%(%%%((((/(/(//***//*/**,,*,,,,,,,,,,....,(((((((((((((((((((((((\n")
		escreva("#(((((((((((((((((((((/.  .   .,,,*,,*//,//,//////./////(@#((((#%%#%%#(#%##((%%%(((((%##(///(((##/////////*////(,*,,,,,,,,,, .     ((((((((((((((((((\n")
		escreva(",              *******/////////////////////////////////////#/////(#/////#((/////////////////////////*,,,,,,,,,,,*/////////*,,*/////////////////*,.    \n\n")

	}
	funcao final_bom(){
		
		escreva("................................................................................\n")
		escreva("................................................................................\n")
		escreva("................................................................................\n")
		escreva("...........................,.,.............,.,........,,,.......................\n")
		escreva(".......................................,........................................\n")
		escreva("....................,......,(&&&%%%%%%%%%%%%%%&&&&&,............................\n")
		escreva(".....................,......(/,,,,,,,,,,,,,,,,,,,,&,,.,.........................\n")
		escreva("....................,%&%#%&&#(,,,,,,,,,,,,,,,,,.,,&%&%#%%&*,.,..................\n")
		escreva("..................#(,,,/((*,(/&,,,,,,,,,,,,..     /,,/(/,,,,&...................\n")	
		escreva(".................%*,((.,.,&@(/&,,,,,,,,,,,,,,,,.,,&(&*.,.,&,,&...,..............\n")
		escreva("...........,.....&,,%..,.#/,(/&,,,,,,,,,,,,,,,,,,,&,,&....*/,#,......,..........\n")
		escreva("...........,.....%*,&.,,,.,,(/,,,,,,,,,,,,,,,,,,,,&.,,....&,,&...,..............\n")
		escreva("..................#(,*&*..,.//&,,,,,,,,,,,,,,,,,,,&....,%(,*&...................\n")
		escreva(".................,,.,&%/,,,,((,,,,,,,,,,,,,,,,,,,,&,,,,*#&*.....................\n")
		escreva("...........................,&%*,,,,,,,,,,,,,,,,,,&((.,,.........................\n")
		escreva("..........................*(,,*&*,,,,,,,,,,,,,,#%,,*%%#/(%(%/(%%................\n")
		escreva("............................//.,.,#&%###(##&%*...//,.#,**,,,&,/.................\n")
		escreva("...........................,....,,...,&,,%...,...,...,((#((%(&..................\n")
		escreva(".....................................,&,,%.........../#**%(*,/%.................\n")
		escreva("............... .....................,&,,%........(/,,*,**,*,,,*,&..............\n")
		escreva("..............,/######*.,........,.#&%####&%,,,.**,,,,,,,,,,,,,,,,,%............\n")
		escreva(".............,.//((%(/,*(,...,..%&&#(/////((%&&%,,,,*,,*(%%%/,,,,,,***..........\n")
		escreva(".............,#,//((/&. (.,.&&&&%&&&&&&&&&&&&&%,,,,,,&  .%/%   #,,,,,,*.........\n")
		escreva(".............,,,,*/%*(&((((((## &.           (,*,,,,%   %%      %,,,,*/.........\n")
		escreva(".............,# .,/,#. .,#,,,.,., *#%        #,,,,,,%      (/   (,,,,,,(........\n")
		escreva(".............,# ..*..& ./,...#. /. #%#&      %/,*,,,,%   #&*  ,/,,,,,,,/........\n")
		escreva(".............,(   .(   ,(,   (    #,.&#(&&&&%&/(,,,,**,,*/(/,,,,,,,,,,@.........\n")
		escreva("...........,,,# . ,. & /(, . ( .  (,% %,%******/#,,,,,,,,,,,,,,,,,,,&...........\n")
		escreva("..........,,********,,*******,*,****,**************,**(#%&&&%(/********,*.......\n")
		escreva("...........................,**,,**,,...............,,**********,,...............\n")
		escreva("................................................................................\n")
	
	}
	funcao marea(){
		
		escreva(" /#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#####################################((((\n")
		escreva("######################(((((((((((((((((((((((((((((((((((((((((((((((((((((((((\n")
		escreva("######################(((((((((((((((((((((((((((((((((((((((((((((((((((((((((\n")
		escreva("##########################(((((((((((((((((((((((((((((((((((((((((((((((((((((\n")
		escreva("#####################(####((((((((((((((((((((((##(((((((((((((((((((((((((((((\n")
		escreva("##########################(((((///*****************///((/***////((###((((((((((\n")
		escreva("########################((/,..,,*//((((/##(#####(((((#(*(****(*****(,((((((((((\n")
		escreva("#####################(#/.**///(((###(##%%%%%%###((#%%%/(/****/(*******,,((#((((\n")
		escreva("###############(#/*(/,**//(((((###((##%%%%%%%%%%%%%%%////////*/(***,,,,*..(((###\n")
		escreva("##########(((((((/%#/##%%&&&#%#%%%&%%&&&%%##%#%%%%%(*,#,****,..//.....(/*,.,,,##\n")
		escreva("(((((((((((((///////////////////////**,,,,,**,,**/***(%&%(/*,,,,.........,...**#\n")
		escreva("(((((((//,*,,....................,,,**/****////***,*/*,,......*,,..***//////((#\n")
		escreva("(((((/,,,,,***********************,//*/////***,,,,,,.(*///////(((((((((((/%%/**(\n")
		escreva("((((#(*............,,,,,,,,,,******//**,,,,,,.,,,,,./(#(((#######(///*/(#%%&&%%(\n")
		escreva("(((#%##/,/(%&&&#/%&&&&%#.**..*#*#**,,******,,,,,&&&&&(#((*,.,/(##%&%#%%%#/*&%%((\n")
		escreva("(#%/,....,********//**,,,**/((###((/**,,,,,,,*&%&&&&&##&&%#%%%%%%%%%%%%&(#/&(((\n")
		escreva("((/(%&&&&&&&%%#&(,&&&(#%%%%%%%%%%%%%&&%((####&%%(%(&&%%%%%%%%%%&&&&&&%&&,#(@(((\n")
		escreva("///*/&&&&&&&&&&&&&&&&&&&&&&&&(((,**,########&&##//%&&&&&&&&&&&&&&&&%&&&&&(&((((\n")
		escreva("//////&&&(//(%%&&&&&&&&&&&&&&*(((//(###%&&&&&&(*(((&&&&&&&&&&&&&&&&&&&&&&###(((\n")
		escreva("///////(&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@&&&&&&&&&(*(&&&&&&&%%%%%#####((((((((((\n")
		escreva("///((#%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&##&%%%########(((((((((((((/////\n")
		escreva("///////////(((((((((###%%%%%%%&&&&%%%%%%%%%%%%####(((((((((((((((((/////////////\n")
		escreva("****////////////////////////////////////////////////////////////////////////////\n")

	}
	funcao peugeot(){
		
		escreva("                                                                                \n")
		escreva("                                                           .                    \n")
		escreva("                                ./(((((((##%%%%%&&&#/,//((###/#(//,             \n")
		escreva("                           (/##,,,,,,.,#%&,.,..,@/,/%,,,,,,,,&%&***/@%*         \n")
		escreva("                       ((#/,,,,,,,,..,&&@.&&@@@/*(%@@@,&@&@#,,@&%,,**@%%*       \n")
		escreva("                   .#%%%,.,*#&%#/&,..&@&..&@&/,#%,&@@&@@@@@@@@(@&&&&,%&%&%*     \n")
		escreva("               ,,**/*******/*****(%/(((((((/,,****#@@@@@@&&&#/(%%%%%%%%%%%%%/   \n")
		escreva("        ,***////////////((((##(/*/(((((/*(%&&&&&&&&@&&&&&&&&&&&&#&&&%###&&&%%#  \n")
		escreva("    *//(###%%%%%%%%%%%&%###%%%#%#/,#%&&&&%%%%%&&&&&&&&&&&&&&&&&&&*&&&&&&&@,%&#  \n")
		escreva("  ./*&&@@@&@@@@@@@@@&&////.,.#(%&&&&%%%@&&&&&&(#&&&&&&&&&%%%%%&&&&&%%%&&&&@@@&( \n")
		escreva("  #@@@@@&((/#&&@@&#(/**,*/%@@@@@@@@@@&@@@@@@@&%##%&&&&&&%#(/(#####%###%%@&,(&@( \n")
		escreva("  /#%&&&&&@&&&&&@@@@@@@@&&&%&&@@@&&&@@&&%%%%@@#(#########((((((((((####@##*,.&@ \n")
		escreva("  .#%#%%%&&&&&&&&&&@@@@&@@&%&&%%%&%@&@*& **/%@#(#((((((#&&&&&&@&&&%#(/%&#,. .%  \n")
		escreva("  #&@@,         #@&&#%&&%%,,/%%%%%&@@(*, #*/*&#&&&&%#((#%%&@&%#,.    &@@&@,.,   \n")
		escreva("     *#&@@&&%#/,(&&&&&&%&%%%%%#%##@@&/., * .#&@&%%%##((((//////////*/*@@&&&%    \n")
		escreva("        .#&@@@%#(((((#(((######%%@@@&&*&(#*(%%%%%%%%##((/**,.                   \n")
		escreva("          .,*/(########%%%%%%%%%%%&@@&&&&%%(,.                                   \n")
	
	}
}
