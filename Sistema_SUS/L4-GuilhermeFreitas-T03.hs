{- Discente: Guilherme Argolo Queiroz de Freitas
   Matricula:  202100022775                      -}


{- Para começar o programa chame a funçao: intList. Nesta funçao
 digite os numeros dos CPFs. Para terminar a entrada dos CPFs
 entre com o 0. -}

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

type Vacinados = [Vacinado]
type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)

cadDeVacinas :: [Vacina]
cadDeVacinas = ["AstraZeneca", "CoronaVac", "Janssen", "Pfizer"]

cadVacinados :: Vacinados
cadVacinados = 
            [(88551353098,   [ ("Janssen",     (15,10,2021)), ("Janssen", (10,11,2021))]),
              (89652147584,  [ ("CoronaVac",   (1,10,2021)),  ("CoronaVac", (22,10,2021))]),
              (15423698745,  [ ("Pfizer",      (10,10,2021))]),
              (15784526365,  [ ("AstraZeneca", (10,10,2021))]) ,
              (18697038049,  [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )] ),
              (48596315784,  [ ("Pfizer",      (10,08,2021)) ] ),
              (24996526831,  [ ("CoronaVac",   (10,02,2021)) ] ), 
              (91169654509,  [ ("Pfizer",      (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),
              (31665922702 , [ ("CoronaVac",   (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
              (47859623585 , [ ("CoronaVac",   (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
              (37297814644 , [ ("CoronaVac",   (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
              (77838071941 , [ ("Pfizer",      (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),                      
              (65365757254 , [ ("CoronaVac",   (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
              (03516652853 , [ ("Pfizer",      (10,08,2021)) ] ),
              (96592485809 , [ ("CoronaVac",   (10,02,2021)) ] ),    
              (26995464290 , [ ("CoronaVac",   (10,02,2021)) ] ),    
              (10638318653 , [ ("AstraZeneca", (10,02,2021)) ] ),
              (41448248701 , [ ("Pfizer",      (10,08,2021)) ] ),                                 
              (54106727714 , [ ("AstraZeneca", (10,02,2021)) ] ),                                 
              (63099185086 , [ ("Pfizer",      (10,02,2021)) ] ),                                 
              (75442170860 , [ ("AstraZeneca", (10,02,2021)) ] ),                                 
              (53004578760 , [ ("CoronaVac",   (10,02,2021)) ] ),                                 
              (31330654080 , [ ("Janssen",     (10,02,2021)), ("Janssen", (10,02,2021))]),     
              (27609161381 , [ ("Pfizer",      (05,03,2021)), ("Pfizer",    (05,06,2021))]),    
              (56987321456 , [ ("CoronaVac",   (10,02,2021)), ("CoronaVac", (10,03,2021))])]


              
--Construct an int list from user input
--intList :: IO  [(String, Integer, [(String, (Int, Int, Int))])]
intList :: IO  ()
intList =  do 
                c <- list []                
                onScreen (listAToList (listAToListB c meuCadastro) cadVacinados)
                where list x = do 
                                line <- getLine
                                let a = read line :: Integer
                                let b = if a /= 0 then x ++ [a] else x               
                                if a == 0 then return b else list b                        
                                                               


--Construct a method to see if a element is inside a list
elementInList :: Integer -> [(Integer, Nome, Genero, DataNasc, Endereco, Municipio, Estado, Telefone, Email)]  -> (Integer, Nome, Genero, DataNasc, Endereco, Municipio, Estado, Telefone, Email) 
elementInList _ [] = (0,"",'M', (0,00,0000),"0, 0","","","","")
elementInList x (y:ys)
    | x == t y = y
    | otherwise = elementInList x ys
     where t (a,b,c,d,e,f,g,h,i) = a



--Construct a method to see which elements from list A is on list B
listAToListB  :: [Integer] -> [(Integer, Nome, Genero, DataNasc, Endereco, Municipio, Estado, Telefone, Email)] -> [(Integer, Nome, Genero, DataNasc, Endereco, Municipio, Estado, Telefone, Email)]
listAToListB _ [] = []
listAToListB [] _ = []
listAToListB (x:xs) (y:ys)
    | x == t y = y : listAToListB xs ys
    | otherwise = elementInList x ys : listAToListB xs (y:ys)
    where t (a,b,c,d,e,f,g,h,i) = a




--Construct a method to see if a element is inside a list
elementInList2 :: Integer -> [(Integer, [(String,(Int ,Int, Int))])] -> (Integer, [(String,(Int ,Int, Int))]) 
elementInList2 _ [] = (0,[ ("",(0,0,0))])
elementInList2 x (y:ys)
    | x == t y = y
    | otherwise = elementInList2 x ys
     where t (a,_) = a


--Construct a method to see which elements from list A is on list B
listAToList  :: [(Integer, Nome, Genero, DataNasc, Endereco, Municipio, Estado, Telefone, Email)]  -> [(Integer, [(String,(Int ,Int, Int))])] -> [(String,Integer, [(String,(Int ,Int, Int))])] 
listAToList _ [] = []
listAToList [] _ = []
listAToList (x:xs) (y:ys)
    | c x == t y = (z (d x) y) : listAToList xs ys
    | otherwise = z (d x) (elementInList2 (c x) ys) : listAToList xs (y:ys)
     where  c (a,b,c,d,e,f,g,h,i) = a
            d (a,b,c,d,e,f,g,h,i) = b
            t (a,_) = a
            z e (a,d) = (e, a, d)

onScreen :: [(String, Integer , [(String,(Int ,Int, Int))])] -> IO ()
onScreen [] = return ()
onScreen (x:xs) = do 
                    putStrLn ("Nome: " ++ (t x))
                    putStrLn ("Doses: " ++ (z x))
                    putStrLn ("       " ++ (w x))
                    onScreen xs
        where t (x,a,_) = x
              z (_,_,j) = y (head j)
              w (_,_,j) = y (last j)
              y (d,(a,b,c)) = d ++ "," ++ show a ++ "." ++ show b ++ "." ++ show c