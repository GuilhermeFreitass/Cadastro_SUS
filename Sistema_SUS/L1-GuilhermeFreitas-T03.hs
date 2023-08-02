 {- Discente: Guilherme Argolo Queiroz de Freitas
   Matricula:  202100022775                      -}

type CadastroSUS = [Cidadao]
type CPF = Integer
type Nome = String
type Genero = Char
type Dia = Int
type Mes = Int
type Ano = Int
type Data = (Dia, Mes, Ano)
type DataNasc = Data
type Endereco = String
type Municipio = String
type Estado = String
type Telefone = String
type Email = String
type Cidadao = (CPF, Nome, Genero, DataNasc, Endereco, Municipio,Estado, Telefone, Email)

meuCadastro :: CadastroSUS
meuCadastro = [(48596315784, "Diego Dias", 'M', (2,12,2000), "Rua 3, 117", "Itabuna", "Ba", "988456327", "diegodi@gmail.com"),
               (89652147584, "Tais Souza", 'F', (15,1,1990), "Rua 10, 90", "Aracaju", "SE", "997854125", "taissou@gmail.com"),
               (15423698745, "Marcela Freitas", 'X', (27,6,1970), "Avenida A, 45", "Aracaju", "SE", "995364782", "marceF@gmail.com"),
               (15784526365, "Pedro Silva", 'M', (28,9,1960), "Rua 5, 123", "Aracaju", "SE", "998541478", "pedrosil@gmail.com"),
               (47859623585, "Cauan Souza", 'M', (13,7,1985), "Rua 8, 48", "Ilheus", "BA", "998545714", "cauansou@gmail.com"),
               (37297814644, "Arthur Amaral Machado", 'M', (21, 12, 1987), "Quadra CLS 103, 981", "Brasília", "DF", "997570558", "arthur.machado@yahoo.com"),
               (77838071941, "Gabriel Gomes Teixeira", 'M', (19, 6, 1973), "Rua Anita Garibald, 527", "Manaus", "AM", "967345626", "gabriel.teixeira@gmail.com"),
               (65365757254, "Davi Teixeira Ducati", 'M', (12, 10, 1997), "Rua Anita Cajado, 664", "Salvador", "BA", "938882449", "davi.ducati@yahoo.com"),
               (03516652853, "Bernardo Teixeira Machado", 'M', (4, 11, 1991), "Quadra CLS 103, 46", "Brasília", "DF", "917032109", "bernardo.machado@hotmail.com"),
               (96592485809, "Matheus Gomes Ducati", 'M', (18, 4, 1954), "Rua Anfibólios, 942", "Belo Horizonte", "MG", "981246170", "matheus.ducati@yahoo.com"),
               (26995464290, "Carlos Machado Gomes", 'M', (1, 2, 1983), "Rua Anita Cajado, 235", "Salvador", "BA", "956515460", "carlos.gomes@gmail.com"),
               (10638318653, "Davi Machado Ducati", 'M', (8, 11, 1963), "Travessa Ano Novo, 337", "Rio Branco", "AC", "961876259", "davi.ducati@yahoo.com"),
               (41448248701, "Bernardo Ducati Amaral", 'M', (26, 11, 1991), "Rua Álvaro Anes, 102", "São Paulo", "SP", "998612095", "bernardo.amaral@gmail.com"),
               (54106727714, "Pedro Ducati Amaral", 'M', (5, 6, 1977), "Quadra CLS 103, 954", "Brasília", "DF", "931162139", "pedro.amaral@hotmail.com"),
               (63099185086, "Carlos Gomes Machado", 'M', (10, 3, 1991), "Rua Condado, 733", "Porto Alegre", "RS", "916936937", "carlos.machado@yahoo.com"),
               (75442170860, "Gabriel Ducati Gomes", 'M', (4, 9, 1965), "Praça Anita Garibaldi, 797", "Campinas", "SP", "914168590", "gabriel.gomes@yahoo.com"),
               (53004578760, "Arthur Amaral Ducati", 'M', (27, 2, 1956), "Travessa Ano Novo, 942", "Rio Branco", "AC", "945675621", "arthur.ducati@hotmail.com"),
               (31330654080, "Pedro Ducati Amaral", 'M', (19, 2, 1983), "Rua Anita Ferraz, 716", "São Paulo", "SP", "915528935", "pedro.amaral@gmail.com"),
               (24996526831, "Bruno Cardoso", 'M', (30, 11, 1992), "Rua João Borba Maranhão, 699", "Recife", "PE", "925518766", "brunorodriguescardoso@hotmail.com"),
               (91169654509, "Matheus Rodrigues", 'M', (21, 09, 1971), "Avenida Central, 253", "Limeira", "SP", "994288630", "matheuscostarodrigues@yahoo.com"),
               (31665922702, "Caio Barros", 'M', (01, 08, 1938), "Rua dos Crisântemos, 1584", "Rio de Janeiro", "RJ", "999997000", "caiodiasbarros@gmail.com"),
               (80506181294, "Antônio Pereira", 'M', (28, 12, 1929), "Rua Romanos, 1196", "Cambé", "PR", "931528696", "antoniosilvapereira@hotmail.com"),
               (27609161381, "Igor Carvalho", 'M', (17, 05, 1960), "Rua N, 442", "Várzea Grande", "MT", "931082575", "igorsousacarvalho@yahoo.com"),
               (23116918562, "Thiago Goncalves", 'M', (06, 02, 1942), "Rua Gerênios, 1688", "Vila Velha", "ES", "965828349", "thiagolimagoncalves@hotmail.com"),
               (95896635168, "Rafael Barros", 'M', (11, 04, 1921), "Vila Novo Paraíso, 16", "Aracaju", "SE", "967566304", "rafaelmartinsbarros@hotmail.com"),
               (68914093220, "Daniel Souza", 'M', (01, 02, 2013), "Rua Francisco da Costa Lins, 1654", "Recife", "PE", "920237199", "danielazevedosouza@yahoo.com"),
               (50498614034, "Victor Rocha", 'M', (18, 05, 2015), "Rua das Orquídeas, 166", "Pirassununga", "SP", "931895029", "victorpereirarocha@yahoo.com"),
               (64742387392, "Marcos Alves", 'M', (09, 11, 1929), "Rua Maria de Lourdes Almeida, 1124", "Arapiraca", "AL", "984714774", "marcosrodriguesalves@yahoo.com"),
               (37566004247, "Lucas Pinto", 'M', (25, 08, 1919), "Rua Costa e Silva 1983", "Aparecida de Goiânia", "GO", "982608883", "lucasmelopinto@gmail.com"),
               (56987321456, "Julian Santos", 'M', (28, 07, 1951), "Rua Cinco, 746", "Sumaré", "SP", "926073288", "julianalmeidasantos@hotmail.com"),
               (88551353098, "Ryan Cardoso", 'M', (21, 08, 2000), "Avenida Doutor Artur Bernardes, 656", "Sorocaba", "SP", "957036975", "ryancastrocardoso@hotmail.com")] 



--(a) Cadastramento de um cidadão no sistema. O CPF é checado e, em caso negativo, é adicionado ao cadastro

adicionaSUS :: Cidadao -> CadastroSUS -> CadastroSUS
adicionaSUS cidadao cad
                |checaCPF (filterCPF cidadao) cad = error "CPF ja cadastrado"
                |otherwise = cidadao : cad

--(b) O cidadão pode querer modificar algum desses dados, por exemplo, o número de telefone ou endereço. 

atualizaEndSUS :: CPF -> CadastroSUS -> Endereco -> CadastroSUS
atualizaEndSUS cpf cad newEnd
                    |checaCPF cpf cad = comeco ++ novoDado ++ fim
                    |otherwise = error "CPF nao cadastrado"

                where
                    posi = posCidadao cpf cad
                    novoDado = [(cpfcad, nm, ge, dt, newEnd, cid, est, num, email ) | (cpfcad, nm, ge, dt, endCad, cid, est, num, email ) <- cad, cpf == cpfcad]
                    comeco = take (posi -1) cad
                    fim = drop posi cad

atualizaTelSUS :: CPF -> CadastroSUS -> Telefone -> CadastroSUS
atualizaTelSUS cpf cad newTel
                    |checaCPF cpf cad = comeco ++ novoDado ++ fim
                    |otherwise = error "CPF nao cadastrado"

                where
                    posi = posCidadao cpf cad
                    novoDado = [(cpfcad, nm, ge, dt, end, cid, est, newTel, email ) | (cpfcad, nm, ge, dt, end, cid, est, telCad, email ) <- cad, cpf == cpfcad]
                    comeco = take (posi -1) cad
                    fim = drop posi cad



--(c) Quando um cidadão falece, a família tem que notificar o fato em um posto de saúde, para que ele seja retirado do cadastro corrente do SUS.

removeSUS :: CPF -> CadastroSUS -> CadastroSUS
removeSUS cpf cad = [(cpf, nm, ge, dt, end, cid, est, num, email) | (cpf, nm, ge, dt, end, cid, est, num, email ) <- cad, cpf /= cpf]



--(d) Um gestor de saúde pode querer pesquisar algumas informações deste cadastro, como por exemplo, quantidade de cidadãos por município, por estado, ou ainda por município e por faixa de idade, ou por estado e por faixa de idade, para ter uma ideia de como planejar as faixas de vacinação.

type IdadeInicial = Int
type IdadeFinal = Int
type FaixaIdade = (IdadeInicial, IdadeFinal)
type Quantidade = Int


cidadaosPorMunicipio :: CadastroSUS -> Municipio -> Quantidade
cidadaosPorMunicipio cad municipio = length [x | x <- cad, filterMunicipio x == municipio]


cidadaosPorEstado :: CadastroSUS -> Estado -> Quantidade
cidadaosPorEstado cad estado = length [y | y  <- cad, filterEstado y == estado]

cidadaosPorMunicipioIdade :: CadastroSUS -> Municipio-> FaixaIdade -> Data -> Quantidade
cidadaosPorMunicipioIdade cad municipio (inicial, final) dat = length [z | z <- cad, filterMunicipio z == municipio , inicial <= idade (filterNasci z) dat, final >= idade (filterNasci z) dat]


cidadaosPorEstadoIdade :: CadastroSUS -> Estado -> FaixaIdade -> Data -> Quantidade
cidadaosPorEstadoIdade cad estado (inicial, final) dat = length [a | a <- cad, filterEstado a == estado , inicial <= idade   (filterNasci a) dat, final >= idade (filterNasci a) dat]


--(e) Pode ser interessante também gerar uma lista da quantidade de cidadãos por faixas de idade para um dado município ou estado.

listaMunicipioFaixas :: CadastroSUS -> Municipio -> [FaixaIdade] -> Data -> IO()
listaMunicipioFaixas cad municipio listFaixa dat = putStrLn ("Municipio: " ++ show municipio ++ "\nFAIXA DE IDADES               QUANTIDADES\n"
                                                            ++ formataLinhas (geraListaMunicipiosFaixas cad municipio listFaixa dat)
                                                            ++ formataTotal (geraListaMunicipiosFaixas cad municipio listFaixa dat))


listaEstadoFaixas :: CadastroSUS -> Estado-> [FaixaIdade] -> Data -> IO()
listaEstadoFaixas cad estado listFaixa dat = putStrLn ("ESTADO: " ++ show estado ++ "\n FAIXA DE IDADES               QUANTIDADES\n"
                                                    ++ formataLinhas (geraListaEstadoFaixas cad estado listFaixa dat)
                                                    ++ formataTotal (geraListaEstadoFaixas cad estado listFaixa dat))

--(f) A lista do município ou estado deve obedecer à formatação, descrita a seguir. O cabeçalho segue o formato abaixo, onde nome é o nome do município ou estado informado na função.

type QuantidadeFormatada = String

formataQuant :: Quantidade -> QuantidadeFormatada
formataQuant qtd = "                              " ++ show qtd


type LinhasFormatada = String

formataUmaLinha :: (FaixaIdade, Quantidade) -> LinhasFormatada
formataUmaLinha  ((comeco, end), quantidade) = show comeco ++ " - " ++ show end ++ formataQuant quantidade

type LinhasFormatadas = String

formataLinhas :: [(FaixaIdade, Quantidade)] -> LinhasFormatadas
formataLinhas list = concat [addN (formataUmaLinha listF) | listF <- list]

type TotalFormatado = String

formataTotal :: [(FaixaIdade,Quantidade)] -> TotalFormatado
formataTotal list = "TOTAL                                " ++ show  (sum [quantidade | (_, quantidade) <- list] )



--VACINACAO 

type Vacinados = [Vacinado]

type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)

cadDeVacinas :: [Vacina]
cadDeVacinas = ["AstraZeneca", "CoronaVac", "Janssen", "Pfizer"]

cadVacinados :: Vacinados
cadVacinados = [(88551353098, [("Janssen", (15,10,2021)), ("Janssen", (15,10,2021))]),
              (89652147584, [("CoronaVac", (1,10,2021)), ("CoronaVac", (22,10,2021))]),
              (15423698745, [("Pfizer", (10,10,2021))]),
              (15784526365, [("AstraZeneca", (10,10,2021))]) ,
              (18697038049, [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )] ),
              (48596315784, [ ("Pfizer",      (10,08,2021)) ] ),
              (24996526831, [ ("CoronaVac",   (10,02,2021)) ] ), 
              (91169654509, [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),
              (31665922702 , [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
              (47859623585 , [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
              (37297814644 , [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
              (77838071941 , [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),                      
              (65365757254 , [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
              (03516652853 , [ ("Pfizer",      (10,08,2021)) ] ),
              (96592485809 , [ ("CoronaVac",   (10,02,2021)) ] ),    
              (26995464290 , [ ("CoronaVac",   (10,02,2021)) ] ),    
              (10638318653 , [ ("AstraZeneca", (10,02,2021)) ] ),
              (41448248701 , [ ("Pfizer",      (10,08,2021)) ] ),                                 
              (54106727714 , [ ("AstraZeneca", (10,02,2021)) ] ),                                 
              (63099185086 , [ ("Pfizer",      (10,02,2021)) ] ),                                 
              (75442170860 , [ ("AstraZeneca", (10,02,2021)) ] ),                                 
              (53004578760 , [ ("CoronaVac",   (10,02,2021)) ] ),                                 
              (31330654080 , [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )]),     
              (27609161381 , [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),    
              (56987321456 , [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )])  ]

--(g) Aplicação da primeira dose.
aplicaPrimDose:: CPF -> CadastroSUS -> FaixaIdade -> Municipio -> Vacina -> Data -> Vacinados -> Vacinados
aplicaPrimDose cpf cad (idadeInicial, idadeFinal) muni vacina dataAtual cadVacina

           | checaCPFVaci cpf cadVacina = error "Primeira dose aplicada"
           | not avaliaçao1 = error "CPF nao cadastrado."
           | not avaliaçao2 = error "Fora da faixa de idade indicada."
           | not avaliaçao3 = error "Cidadao nao reside no municipio indicado. Favor atualizar os dados no SUS"
           |vacina == "Janssen" = (cpf, replicate 2 (vacina, dataAtual)) : cadVacina
           |otherwise = (cpf, [(vacina, dataAtual)] ) : cadVacina

  where
  avaliaçao1 = checaCPF cpf cad
  avaliaçao2 = checaIdade cpf cad (idadeInicial, idadeFinal) dataAtual
  avaliaçao3 = checaMunicipio cpf cad muni

--(h) Aplicaçao da segunda dose

aplicaSeguDose :: CPF -> Data -> Vacinados -> Vacinados
aplicaSeguDose cpf dataAtual cadVacina
          | not (checaCPFVaci cpf cadVacina) = error "Cidadao nao existente no banco de vacinados"
          | quantasDoses cpf cadVacina == 2 = error "cidadao ja tomou duas doses"
          | not (checaData cpf dataAtual cadVacina) = error " Data incorreta"
          | otherwise = comeco ++ novaVac ++ fim

  where comeco = take (indice -1) cadVacina
        novaVac = [(cpfBanco, [(vacina, data1), (vacina, dataAtual)])| (cpfBanco, [(vacina, data1)]) <- cadVacina, cpfBanco == cpf]
        fim = drop indice cadVacina
        indice = posVacinado cpf cadVacina



--(i) Pode ser necessária alguma atualização no cadastro de vacinados.

atualizaVacina:: CPF -> TipoDose -> Vacina -> Vacinados -> Vacinados
atualizaVacina cpf tipoDose vacina cadVacina
 |not (checkVacina cpf cadVacina) = error "CPF nao cosnta no cadastro"
 |tipoDose == 1 && checaDose cpf cadVacina == 2 = comeco ++ [(cpfBanco, [(vacina, data1), (vacina2, data2)]) | (cpfBanco, [(vacina, data1), (vacina2, data2)]) <- cadVacina, cpfBanco == cpf] ++ fim
 |tipoDose == 2 = comeco ++ [(cpfBanco, [(vacina1, data1), (vacina, data2)]) | (cpfBanco, [(vacina1, data1), (vacina2, data2)]) <- cadVacina, cpfBanco == cpf] ++ fim
 |otherwise = comeco ++ [(cpfBanco, [(vacina, data1)]) | (cpfBanco, [(vacina1, data1)]) <- cadVacina, cpfBanco == cpf ] ++ fim

    where indice = posVacinado cpf cadVacina
          comeco = take (indice -1) cadVacina
          fim = drop indice cadVacina  


checkVacina :: CPF -> Vacinados -> Bool
checkVacina cpf cadVacina = or [cpfBanco == cpf | (cpfBanco, _) <- cadVacina]

--(j) Quantidade de pessoas no município/estado vacinadas com uma dada dose. Considerando que, a pessoa que tomou 2 doses, também tomou 1

quantidadeDoseMun :: Vacinados -> TipoDose -> Municipio -> CadastroSUS -> Quantidade
quantidadeDoseMun cadVacina tipoDose municipio cad = length [pessoa | pessoa <- cad, checaCPFVaci (filterCPF pessoa) cadVacina, quantasDoses (filterCPF pessoa) cadVacina >= tipoDose, filterMunicipio pessoa == municipio ]

quantidadeDoseEst :: Vacinados -> TipoDose -> Estado -> CadastroSUS -> Quantidade
quantidadeDoseEst cadVacina tipoDose estado cad = length [pessoa | pessoa <- cad,checaCPFVaci (filterCPF pessoa) cadVacina, quantasDoses (filterCPF pessoa) cadVacina >= tipoDose, filterEstado pessoa == estado ]

--(k) Quantidade de pessoas no município/estado vacinadas por faixa etária e por dose. Considerando que, a pessoa que tomou 2 doses, também tomou 1

quantidadeMunIdDose :: Vacinados -> Municipio -> FaixaIdade -> TipoDose -> CadastroSUS -> Data -> Quantidade
quantidadeMunIdDose cadVacina municipio faixaId tipoDose cad dataAtual = length [pessoa | pessoa <- cad, checaCPFVaci (filterCPF pessoa) cadVacina, quantasDoses (filterCPF pessoa) cadVacina >= tipoDose, filterMunicipio pessoa == municipio, checaIdade (filterCPF pessoa) cad faixaId dataAtual]

quantidadeEstIdDose :: Vacinados -> Estado -> FaixaIdade -> TipoDose -> CadastroSUS -> Data ->  Quantidade
quantidadeEstIdDose cadVacina estado faixaId tipoDose cad dataAtual = length [pessoa | pessoa <- cad, checaCPFVaci (filterCPF pessoa) cadVacina, quantasDoses (filterCPF pessoa) cadVacina >= tipoDose, filterEstado pessoa == estado, checaIdade (filterCPF pessoa) cad faixaId dataAtual]

--(L) Quantidade de pessoas no município/estado vacinadas por tipo de vacina e por dose. Considerando que, a pessoa que tomou 2 doses, também tomou 1

quantidadeMunVacDose :: Vacinados -> Municipio -> Vacina -> TipoDose -> CadastroSUS -> Quantidade
quantidadeMunVacDose cadVacina municipio vacina tipoDose cad = length [pessoa | pessoa <- cad, checaCPFVaci (filterCPF pessoa) cadVacina, quantasDoses (filterCPF pessoa) cadVacina >= tipoDose,head (vacinaUsada (filterCPF pessoa) cadVacina) == vacina, filterMunicipio pessoa == municipio]


quantidadeEstVacDose :: Vacinados -> Estado -> Vacina -> TipoDose -> CadastroSUS -> Quantidade
quantidadeEstVacDose cadVacina estado vacina tipoDose cad = length [pessoa | pessoa <- cad, checaCPFVaci (filterCPF pessoa) cadVacina, quantasDoses (filterCPF pessoa) cadVacina >= tipoDose, head (vacinaUsada (filterCPF pessoa) cadVacina) == vacina, filterEstado pessoa == estado]

--(M) Quantidade de pessoas atrasadas na segunda dose no município/estado, dentre os cidadãos que pertencem ao cadastro de vacinados.


 {-quantidadeMunAtrasados :: Vacinados -> CadastroSUS -> Municipio -> Quantidade
quantidadeMunAtrasados cadVacina cad municipio = 

quantidadeEstAtrasados :: Vacinados -> CadastroSUS -> Estado -> Quantidade
quantidadeEstAtrasados cadVacina cad estado = -}


 --(N) 1) Consulta do dominio do email cadastradas no banco SUS

quantGmail :: CadastroSUS -> Int
quantGmail list = length [email | (_, _ ,_ ,_ ,_ ,_ , _, _ , email) <- list, filterGmail email == "gmail.com"]

quantHotmail :: CadastroSUS -> Int
quantHotmail list = length [email | (_, _ ,_ ,_ ,_ ,_ , _, _ , email) <- list, filterHotmail email == "hotmail.com"] 

quantYahoo :: CadastroSUS -> Int
quantYahoo list = length [email | (_, _ ,_ ,_ ,_ ,_ , _, _ , email) <- list, filterYahoo email == "yahoo.com"]

 -- 2) Numero de pessoa vacinadas com primeira dose por genero
quantPessoaPorGen :: CadastroSUS -> Vacinados -> Genero -> Int
quantPessoaPorGen cad cadVacina genero = length [pessoa | pessoa <- cad, (cpfBanco, doses) <- cadVacina,filterGenero pessoa == genero, filterCPF pessoa == cpfBanco, length doses == 1 ]


--(O) Tabela da quantidade de domnios dos emails do cadastro
tabelaQuantDom :: CadastroSUS -> IO ()
tabelaQuantDom banco = putStrLn ( "DOMINIO                                  QUANTIDADE\n"++
                                  "hotmail.com                              "++ show (quantHotmail banco)++                          
                                  "\ngmail.com                                "++ show (quantGmail banco)++
                                  "\nyahoo.com                                 "++ show (quantYahoo banco) )


-- Funçoes auxiliares

-------------------------------------------------------------------------------------------
--indexando cadastro SUS
idxcad :: CadastroSUS -> [(Int, Cidadao)]
idxcad cad = zip ls cad
        where ls = [1.. (length cad)]
--Encontrando o cidadao na lista
posCidadao :: CPF -> CadastroSUS -> Int
posCidadao cpf cad

        |indice == [] = error "CPF nao possui cadastro."
        |otherwise = head indice
           where
               indice = [ind | (ind, cidadao) <- idxcad cad, cpf == filterCPF cidadao]


--------------------------------------------------------------------------------------------
--funçoes de filtrar 

filterCPF :: Cidadao -> CPF
filterCPF (cpf, _, _ , _, _, _, _, _, _) = cpf

filterMunicipio :: Cidadao -> Municipio
filterMunicipio (_, _, _, _, _, municipio, _, _, _) = municipio

filterEndereco :: Cidadao -> Endereco
filterEndereco (_, _, _, _, end, _, _, _, _) = end

filterTel :: Cidadao -> Telefone
filterTel (_, _, _, _, _, _, _, tel, _) = tel

filterNasci :: Cidadao -> DataNasc
filterNasci (_, _, _, dataNas, _, _, _, _, _) = dataNas

filterEstado :: Cidadao -> Estado
filterEstado (_, _ ,_ ,_ ,_ ,_ , estado, _ ,_ ) = estado

filterGenero :: Cidadao -> Genero
filterGenero (_, _ ,genero ,_ ,_ ,_ , _, _ ,_ ) = genero

filterHotmail :: String -> String 
filterHotmail email = drop (length email - 11) email

filterGmail :: String -> String 
filterGmail email = drop (length email - 9) email

filterYahoo :: String -> String 
filterYahoo email = drop (length email - 9) email

------------------------------------------------------------------------------------------------
--funçao que gera quantas pessoas estao cadastradas numa determinada faixa de idade
geraListaMunicipiosFaixas :: CadastroSUS -> Municipio -> [FaixaIdade] -> Data -> [(FaixaIdade, Quantidade)]
geraListaMunicipiosFaixas cad municipio listIdade dat = [ (faixa, quantidade) | faixa <- listIdade, quantidade <- [cidadaosPorMunicipioIdade cad municipio faixa dat] ]

geraListaEstadoFaixas :: CadastroSUS -> Estado -> [FaixaIdade] -> Data -> [(FaixaIdade, Quantidade)]
geraListaEstadoFaixas cad estado listIdade dat = [(faixa, quantidade) | faixa <- listIdade, quantidade <- [cidadaosPorEstadoIdade cad estado faixa dat] ]

-- 
addN :: String -> String
addN palavra = palavra ++ "\n"

-------------------------------------------------------------------------------------------------------
--funçoes para checar algo

checaCPF :: CPF -> CadastroSUS -> Bool
checaCPF cpf cad = or [cpf == filterCPF cidadao | cidadao <- cad]

checaCPFVaci :: CPF -> Vacinados -> Bool
checaCPFVaci cpf cad = or [ cpf == cpfBanco | (cpfBanco, doses) <- cad]

checaIdade :: CPF -> CadastroSUS -> FaixaIdade -> Data -> Bool
checaIdade cpf cad (idadeInicial, idadeFinal) dat = or [checaCPF == cpf | (checaCPF, _, _, dataNas, _, _, _, _, _) <- cad, idade dataNas dat >= idadeInicial,idade dataNas dat <= idadeFinal]

checaMunicipio :: CPF -> CadastroSUS -> Municipio -> Bool
checaMunicipio cpf cad muni = or [checaCPF == cpf | (checaCPF, _, _, _, _, municipio, _, _, _)  <- cad, municipio == muni]

checaData :: CPF -> Data -> Vacinados -> Bool
checaData cpf (d, m, a) cadVacina
                            |a > head [ ano | (cpfBanco, [(_, (_, _, ano))]) <- cadVacina, cpfBanco == cpf] = True
                            |a == head [ ano | (cpfBanco, [(_, (_, _, ano))]) <- cadVacina, cpfBanco == cpf] && m > head [mes | (cpfBanco, [(_, (_, mes, _))]) <- cadVacina, cpfBanco == cpf] = True
                            |a == head [ ano | (cpfBanco, [(_, (_, _, ano))]) <- cadVacina, cpfBanco == cpf] && m == head [mes | (cpfBanco, [(_, (_, mes, _))]) <- cadVacina, cpfBanco == cpf] && d > head [d | (cpfBanco, [(_, (d, _, _))]) <- cadVacina, cpfBanco == cpf] = True
                            |otherwise = False

checaDose :: CPF -> Vacinados -> TipoDose
checaDose cpf cadVacina = sum [length x | (cpfBanco,x) <- cadVacina, cpf == cpfBanco]
----------------------------------------------------------------------------------------------------------
--funçao pra saber se o cidadao ja tomou a primeira dose
tomouPriDose :: CPF -> Vacinados -> Bool
tomouPriDose cpf cadVacina = or [a == cpf | (a,_) <- cadVacina]

--funçao para saber quantas doses um cidadao tomou
quantasDoses :: CPF -> Vacinados -> Int
quantasDoses cpf cadVacina = head [length a | (cpfa, a) <- cadVacina, cpf == cpfa]

--funçao que calcula a idade
idade :: DataNasc -> Data ->  Int
idade (dia, mes, ano) (da, ma, aa)
                      | mes == ma && dia <= da = aa - ano
                      | mes == ma && dia >= da = aa - ano
                      | mes > ma = (aa-1) - ano
                      | mes < ma = aa - ano

-- Idexando o banco de vacinas 
idxVac :: Vacinados -> [(Int, Vacinado)]
idxVac cadVacina = zip ls cadVacina
        where ls = [1.. (length cadVacina)]
-- achar a posiçao do vacinado no banco
posVacinado :: CPF -> Vacinados -> Int
posVacinado cpf cadVacina

        |indice == [] = error "CPF nao possui cadastro."
        |otherwise = head indice
           where
               indice = [x | (x, (cpfBanco, dose)) <- idxVac cadVacina, cpf == cpfBanco]


-- funçao que pega o nome da vacina 
vacinaUsada :: CPF -> Vacinados -> [Vacina]
vacinaUsada cpf cadVacina = [vacina | (cpfBanco, doses) <- cadVacina, (vacina, dataBanco) <- doses, cpf == cpfBanco ]

