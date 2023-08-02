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
               (18697038049, "Cauan Souza", 'M', (13,7,1985), "Rua 8, 48", "Ilheus", "BA", "998545714", "cauansou@gmail.com")]


--Questao 1 a) 
atualizaEndSUS :: CPF -> CadastroSUS -> Endereco -> CadastroSUS
atualizaEndSUS cpf [] novoEnd = []
atualizaEndSUS cpf ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs) novoEnd
    | cpf == cpfBanco = (cpfBanco,nome,gen,datanasc,novoEnd,municipio,est,num,email) : xs
    | otherwise = (cpfBanco,nome,gen,datanasc,end,municipio,est,num,email) : atualizaEndSUS cpf xs novoEnd

-- b)
removeSUS :: CPF -> CadastroSUS -> CadastroSUS
removeSUS cpf [] = []
removeSUS cpf ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs)
    | cpf == cpf = xs
    | otherwise = (cpfBanco,nome,gen,datanasc,end,municipio,est,num,email) : removeSUS cpf xs

type IdadeInicial = Int
type IdadeFinal = Int
type FaixaIdade = (IdadeInicial, IdadeFinal)
type Quantidade = Int


-- c)
geraListaMunicipiosFaixas :: CadastroSUS -> Municipio -> [FaixaIdade] -> Data -> [(FaixaIdade, Quantidade)]
geraListaMunicipiosFaixas cad muni [] dat = []
geraListaMunicipiosFaixas cad muni ((inicial,final):ys) dat = ((inicial, final), length (getQuantidade cad muni  ((inicial,final):ys) dat)) : geraListaMunicipiosFaixas cad muni ys dat


getQuantidade :: CadastroSUS -> Municipio -> [FaixaIdade] -> Data -> [Cidadao]
getQuantidade [] muni listIdade dat = []
getQuantidade ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs) muni ((inicial,final):ys) dat
        |municipio == muni && idadePessoa >= inicial && idadePessoa <= final = (cpfBanco,nome,gen,datanasc,end,municipio,est,num,email) : getQuantidade xs muni ((inicial,final):ys) dat
        |otherwise = getQuantidade xs muni ((inicial,final):ys) dat

        where idadePessoa = idade datanasc dat

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
              (18697038049, [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )])]



-- d) 
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


checaCPF :: CPF -> CadastroSUS -> Bool
checaCPF cpf [] = False
checaCPF cpf ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs)
        |cpfBanco == cpf = True
        |otherwise = checaCPF cpf xs

checaCPFVaci :: CPF -> Vacinados -> Bool
checaCPFVaci cpf [] = False
checaCPFVaci cpf ((cpfBanco, _):xs)
        |cpfBanco == cpf = True
        |otherwise = checaCPFVaci cpf xs 

checaIdade :: CPF -> CadastroSUS -> FaixaIdade -> Data -> Bool
checaIdade cpf [] (idadeInicial, idadeFinal) dat = False
checaIdade cpf ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs) (idadeInicial, idadeFinal) dat 
        |idadePessoa >= idadeInicial && idadePessoa <= idadeFinal && cpf == cpfBanco = True
        |otherwise = checaIdade cpf xs (idadeInicial, idadeFinal) dat

        where idadePessoa = idade datanasc dat


checaMunicipio :: CPF -> CadastroSUS -> Municipio -> Bool
checaMunicipio cpf [] muni = False 
checaMunicipio cpf ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs) muni 
        |cpf == cpfBanco && muni == municipio = True 
        |otherwise = checaMunicipio cpf xs muni 

-- e) 

quantidadeDoseMun :: Vacinados -> TipoDose -> Municipio -> CadastroSUS -> Quantidade
quantidadeDoseMun [] tipoDose muni ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs) = 0
quantidadeDoseMun cadVacinados tipoDose muni [] = 0
quantidadeDoseMun cadVacinados tipoDose muni ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs) 
        |muni == municipio && tipoDose <= quantasDoses cpfBanco cadVacinados = 1 + quantidadeDoseMun cadVacinados tipoDose muni xs
        |otherwise = quantidadeDoseMun cadVacinados tipoDose muni xs


quantasDoses :: CPF -> Vacinados -> Int
quantasDoses cpf [] = 0
quantasDoses cpf ((cpfBanco, listaVac):xs) 
        |cpf == cpfBanco = length listaVac
        |otherwise = quantasDoses cpf xs 

-- f)

quantidadeEstIdDose :: Vacinados -> Estado -> FaixaIdade -> TipoDose -> CadastroSUS -> Data ->  Quantidade
quantidadeEstIdDose cadVacinados estado faixaId tipoDose [] dataAtual = 0
quantidadeEstIdDose cadVacinados estado faixaId tipoDose ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs) dataAtual 
        |estado == est && checaIdade cpfBanco ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs) faixaId dataAtual = 1 + quantidadeEstIdDose cadVacinados estado faixaId tipoDose xs dataAtual 
        |otherwise = quantidadeEstIdDose cadVacinados estado faixaId tipoDose xs dataAtual 

--g) 

quantidadeEstVacDose :: Vacinados -> Estado -> Vacina -> TipoDose -> CadastroSUS -> Quantidade
quantidadeEstVacDose cadVacinados estado vacina tipoDose [] = 0 
quantidadeEstVacDose ((cpfy, listaVac):ys) estado vacina tipoDose ((cpfBanco,nome,gen,datanasc,end,municipio,est,num,email):xs) 
        |estado == est && tipoDose <= quantasDoses cpfy cadVacinados && fst (head listaVac) == vacina = 1 + quantidadeEstVacDose ys estado vacina tipoDose xs
        |otherwise = quantidadeEstVacDose ys estado vacina tipoDose xs 





