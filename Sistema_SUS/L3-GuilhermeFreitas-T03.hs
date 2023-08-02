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
meuCadastro = [(48596315784, "Diego Dias", 'M', (2,12,2000), "Rua 3, 117", "Itabuna", "BA", "988456327", "diegodi@gmail.com"),
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
               (41448248701, "Bernardo Ducati Amaral", 'M', (26, 11, 1991), "Rua Álvaro Anes, 102", "São Paulo", "SP", "998612095", "bernardo.amaral@gmail.com")]
               


-- Questao 1 a) 
atualizaEndSUS :: CPF -> CadastroSUS -> Endereco -> CadastroSUS
atualizaEndSUS cpf cad novoEnd = map (atualizaEndPessoa cpf novoEnd) cad 



atualizaEndPessoa :: CPF -> Endereco -> Cidadao -> Cidadao
atualizaEndPessoa cpf novoEnd (cpfBanco,nome,gen,datanasc,end,municipio,est,num,email) 
        |cpf == cpfBanco = (cpfBanco,nome,gen,datanasc,novoEnd,municipio,est,num,email) 
        |otherwise = (cpfBanco,nome,gen,datanasc,end,municipio,est,num,email) 

-- b)
removeSUS :: CPF -> CadastroSUS -> CadastroSUS
removeSUS cpf cad = filter (funcao cpf) cad 


funcao :: CPF -> Cidadao -> Bool 
funcao cpf (cpfBanco,nome,gen,datanasc,end,municipio,est,num,email)
        |cpf == cpfBanco = False 
        |otherwise = True

type IdadeInicial = Int
type IdadeFinal = Int
type FaixaIdade = (IdadeInicial, IdadeFinal)
type Quantidade = Int


 -- c)
geraListaMunicipiosFaixas :: CadastroSUS -> Municipio -> [FaixaIdade] -> Data -> [(FaixaIdade, Quantidade)]
geraListaMunicipiosFaixas cad mun faixas dat = map (funcao4 cad mun dat) faixas 

funcao4 :: CadastroSUS -> Municipio -> Data -> FaixaIdade -> (FaixaIdade, Quantidade)
funcao4 cad mun dat (inicial,final) = ((inicial,final), funcao3 (getQuantidade cad mun (inicial,final) dat)) 


getQuantidade :: CadastroSUS -> Municipio -> FaixaIdade -> Data -> [[Cidadao]]
getQuantidade cad mun (inicial,final) dat = map (getQuantidadePessoa mun (inicial,final) dat) cad

funcao2 :: [Cidadao] -> Bool 
funcao2 xs 
        |length xs == 0 = False 
        |otherwise = True

funcao3 :: [[Cidadao]] -> Quantidade
funcao3 ys = length $ filter funcao2 ys  

getQuantidadePessoa :: Municipio -> FaixaIdade -> Data -> Cidadao -> [Cidadao]
getQuantidadePessoa mun (inicial,final) dat (cpfBanco,nome,gen,datanasc,end,municipio,est,num,email)
        |mun == municipio && inicial <= idade datanasc dat && final >= idade datanasc dat = [(cpfBanco,nome,gen,datanasc,end,municipio,est,num,email)]
        |otherwise = []



idade :: DataNasc -> Data ->  Int
idade (dia, mes, ano) (da, ma, aa)
                      | mes == ma && dia <= da = aa - ano
                      | mes == ma && dia >= da = aa - ano
                      | mes > ma = (aa-1) - ano
                      | mes < ma = aa - ano


type Vacinados = [Vacinado]

type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)

cadDeVacinas :: [Vacina]
cadDeVacinas = ["AstraZeneca", "CoronaVac", "Janssen", "Pfizer"]

cadVacinados :: Vacinados
cadVacinados = [(48596315784, [("Janssen", (15,10,2021)), ("Janssen", (15,10,2021))]),
              (89652147584, [("CoronaVac", (1,10,2021)), ("CoronaVac", (22,10,2021))]),
              (15423698745, [("Pfizer", (10,10,2021))]),
              (15784526365, [("AstraZeneca", (10,10,2021))]) ,
              (47859623585, [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )])]



-- d) 

quantidadeDoseMun :: Vacinados -> TipoDose -> Municipio -> CadastroSUS -> Quantidade
quantidadeDoseMun xs dose mun cad = sum (map (funcao6 xs dose mun) cad) 


funcao6 :: Vacinados -> TipoDose -> Municipio -> Cidadao -> Quantidade 
funcao6 xs dose mun (cpfBanco,nome,gen,datanasc,end,municipio,est,num,email) 
        |dose <= quantasDoses cpfBanco xs && mun == municipio = 1 
        |otherwise = 0


quantasDoses :: CPF -> Vacinados -> Int
quantasDoses cpf xs = sum (map (funcao5 cpf) xs) 


funcao5 :: CPF -> Vacinado -> Int
funcao5 cpf (cpfBanco,dose) 
        |cpf == cpfBanco = length (filtraDose (cpfBanco,dose))
        |otherwise = 0
        

filtraDose :: Vacinado -> Doses
filtraDose (_,doses) = doses


-- e) 

quantidadeEstIdDose :: Vacinados -> Estado -> FaixaIdade -> TipoDose -> CadastroSUS -> Data ->  Quantidade
quantidadeEstIdDose xs est (inicial,final) dose cad dat = sum $ map (funcao7 xs dose est (inicial,final) dat) cad

funcao7 :: Vacinados -> TipoDose -> Estado -> FaixaIdade -> Data -> Cidadao -> Quantidade 
funcao7 xs dose est (inicial,final) dat (cpfBanco,nome,gen,datanasc,end,municipio,estado,num,email) 
        |dose <= quantasDoses cpfBanco xs && est == estado && inicial <= idade datanasc dat && final >= idade datanasc dat = 1
        |otherwise = 0 


--f)

quantidadeEstVacDose :: Vacinados -> Estado -> Vacina -> TipoDose -> CadastroSUS -> Quantidade
quantidadeEstVacDose ys est vacina dose xs = sum $ map (funcao8 est vacina dose ys) xs

funcao8 :: Estado -> Vacina -> TipoDose -> Vacinados -> Cidadao -> Quantidade
funcao8  est vacina dose ys (cpfBanco,nome,gen,datanasc,end,municipio,estado,num,email) 
                |estado == est && dose <= quantasDoses cpfBanco cadVacinados && funcao11 cpfBanco ys == vacina = 1
                |otherwise = 0

funcao10 :: CPF -> Vacinado -> Bool
funcao10 cpfBanco (cpf,dose)
   |cpf == cpfBanco = True
   |otherwise = False

funcao11 :: CPF -> Vacinados -> Vacina
funcao11 cpfBanco ys = head (map funcao9 ( filter (funcao10 cpfBanco) ys)) 

funcao9 :: Vacinado -> Vacina
funcao9 vacinado = fst  (head (snd vacinado))

