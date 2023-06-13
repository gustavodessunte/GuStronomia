Create database GuStronomia;
USE GuStronomia;

CREATE TABLE Receitas(
idReceita INT PRIMARY KEY AUTO_INCREMENT,
nomeReceita VARCHAR(45),
descReceitaCard VARCHAR (45),
descReceitaCompleta VARCHAR(750),
modoPreparo VARCHAR(4000),
caminhoImgReceita VARCHAR(45),
nomeBtn VARCHAR(45));

alter table Receitas modify column descReceitaCard VARCHAR(250);

INSERT INTO Receitas VALUES 
(null, 
'TORTA ÒPERA', 
'O ópera é um delicado bolo gelado montado em camadas, e que já nasceu como um clássico da confeitaria francesa',
 'A torta ópera é uma das mais clássicas da confeitaria francesa. Foi criada em 1955 e tem esse nome porque a esposa do seu criador era uma admiradora da Opera Prima Ballerina e batizou a sobremesa como uma homenagem à peça. A torta ópera parece muito complicada de fazer...e é! Ela tem várias camadas e seu preparo envolve muitos processos: é necessário fazer a massinha chamada de biscuit joconde, um creme de manteiga, uma ganache de chocolate e ter muita paciência, mas se você quiser se aventurar na cozinha para fazer essa sobremesa especial, nós vamos te ajudar! Confira a seguir os ingredientes e modo de preparo da torta ópera:',
'<h4>MASSA</h4>
      <p>
        Numa tigela, peneira a farinha de amêndoa, de trigo e o açúcar de confeiteiro. Reserve.
        Na batedeira, bata as claras até que comecem a espumar.
        Adicione o açúcar refinado e bata mais um pouco até que fiquem em neve. Reserve.
        Na batedeira, bata os ovos e, quando começarem a espumar, coloque aos poucos a misture de farinha de amêndoa, de trigo e açúcar de confeiteiro.
        Depois que ficar homogêneo, desligue e adicione, aos poucos, as claras em neve.
        Acrescente a manteiga derretida.
        Coloque a massa numa forma para rocambole (forma baixa) forrada com papel-manteiga.
        Leve em forno baixo por cerca de 10 minutos ou até que, ao colocar o dedo na massa, ela não grude.
        Retire a forma e deixe esfriar.
      </p>
      
      <h4>CREME DE MANTEIGA</h4>
      <p>
        Na batedeira, bata as gemas com o ovo em velocidade média.
      Prepare uma calda com o açúcar e a água.
      Aos poucos, adicione a calda às gemas e aumente a velocidade da batedeira. Acrescente o chocolate derretido.
      Reduza a velocidade da batedeira e comece a acrescente a manteiga.
      Coloque o café solúvel e bata por mais 5 minutos.
      Reserve.
      </p>

      <h4>GANACHE DE CHOCOLATE</h4>
        <p>
          Em banho-maria, derreta o chocolate.
          Acrescente o creme de leite e misture até que fique homogêneo.
          Leve à geladeira.
        </p>
      <h4>MONTAGEM</h4>  
        <p>
          Derreta o chocolate em banho-maria
          Coloque o óleo, misture e deixe esfriar.
          Desenforme a massa em cima de um pano de prato úmido polvilhado com um pouco de açúcar.
          Retire o papel-manteiga.
          Com a ajuda de um aro ou régua, corte um pedaço grande e quadrado da massa. Guarde o restante da massa porque você vai precisar dele! O aro também é importante para a montagem: se você tiver, a sua torta ficará mais certinha!
          Na primeira camada de massa, passe chocolate derretido e leve ao congelador por 5 minutos.
          Forre a forma de rocambole de papel-manteiga e posicione o aro no centro dela: dentro dele, coloque a camada de massa que foi ao freezer com o chocolate virado para baixo.
          Umedeça com uma mistura de café e conhaque (a bebida alcoólica é opcional).
          Coloque uma camada de creme de manteiga e espalhe. Alise bem com a ajuda de uma espátula.
          Coloque os pedaços de massa que sobraram, formando uma camada.
          Umedeça com o café e conhaque.
          Acrescente o ganache e depois o creme de manteiga. Alise bem.
          Desenforme a torta se estiver fazendo dentro do aro e coloque o chocolate derretido já frio. Espalhe bem e alise com uma espátula.
        </p>', './assets/tortaOpera.jpg', 'opera');
        
        select * from Receitas where idReceita >=1 and idReceita <= 3;
        
        desc Receitas;
        
INSERT INTO Receitas VALUES 
(
null, 
'BOLO RED VELVET', 
'O bolo veludo vermelho, também conhecido pelo nome em inglês red velvet, é um bolo popular, com uma coloração vermelha ou marrom-avermelhada.',
'O bolo veludo vermelho está intimamente ligado ao bolo Devils food, e em alguns livros de receita mais antigos, os nomes foram intercambiáveis. A maioria dos bolos Veludo Vermelho
hoje em dia se utilizam de corante, mas mesmo sem isto, a reação entre o vinagre e o leitelho tende a realçar as antocianinas presentes no chocolate.',
'<h4>Massa</h4>
<p>Despeje o leite já aquecido na panela, acrescente a manteiga e misture.
Coloque o chocolate em pó e deixe em fogo médio até a manteiga derreter completamente.
Desligue o fogo, coloque o corante, misture e reserve.
Na batedeira, despeje os ovos e o açúcar a bata até dobrar de volume.
Acrescente o vinagre e bata por mais 3 minutos.
Adicione o farinha e o fermento e misture bem.
Depois, acrescente a mistura com a corante aos poucos e mexa mais.
Despeje a massa numa forma redonda e leve ao forno preaquecido a 180 graus por 40 minutos.</p>

<h4>Recheio</h4>
<p>Num recipiente, coloque a água, a gelatina e misture.
Na batedeira, despeje o cream cheese, a manteiga e bata até ficar cremoso.
Acrescente o açúcar de confeiteiro peneirado, a essência de baunilha e bata mais.
Despeje a gelatina hidratada, bata mais e depois reserve na geladeira.</p>

<h4> Montagem</h4>
<p>Corte o bolo em 3 camadas.
Disponha uma camada num prato e coloque uma parte do recheio.
Coloque outra camada, mais recheio e outra camada de bolo.
Cubra o bolo com um pouco do recheio e coloque frutas vermelhas de sua preferência, como morangos e cerejas.</p>',
'./assets/redVelvet.png',
'redVelvet');

INSERT INTO Receitas VALUES 
(
null,
'SOUFFLÉ GLACÉ', 
'O Soufflé Glacé é uma sobremesa cheia de charme! Tem cara de soufflé e textura de sorvete, refresca',
'Um suflê é uma preparação culinária feita no forno, à base de um creme de ovos, farinha de trigo ou maisena, incluido-se um ingrediente principal, tal como legumes, peixe, queijo, chocolate ou outro. Pode ser doce ou salgado.',
'
      <h4>1.</h4> 
      <p>Prepare as forminhas. Corte um pedaço de papel manteiga de aproximadamente 30cm de comprimento. Dobre em três pedaços, formando uma única tira (de 30cm  - você irá dobrar no comprimento e não na largura). Corte um pedaço de barbante. Pegue o ramequim ou o recipiente que for usar e envolva o exterior do mesmo com o papel manteiga (Como na foto) e amarre bem firme com o barbante. Reserve.</p>
      <h4>2.</h4>
      <p>
        Lave os morangos e corte ao meio. Bata no liquidificador os morangos com o suco de limão e o açúcar até formar um purê. Coe e divida em duas partes. Hidrate a gelatina na água fria e deixe descansar por 5 minutos. Enquanto a gelatina descansa, leve metade do purê de morangos ao banho maria (Não deixe ferver). Quando estiver quente, dissolva a gelatina e retire a tigela do banho maria. Misture com a outra metade do purê e reserve.
        Bata os 300ml de creme de leite fresco na batedeira até obter  o ponto de chantily (picos mais firmes). Adicione uma colher cheia do creme chantilly ao purê de morangos (que deve estar frio) e incorpore bem. Incorpore o restante do creme e disponha nos ramekins preparados.  
      </p>

      <h4>3.</h4>
      <p>
        Bata o creme de leite fresco junto com o açúcar e a baunilha na batedeira até obter o ponto de chantilly. Coloque um pouco de chantilly sob o souffle e decore com os morangos.
      </p>
      ',
'./assets/souffleGlace.jpg',
'sufle'),
(
null, 
'ESTROGONOFE DE CAMARÃO', 
'Estrogonofe é um prato originário da culinária russa composto de camarões servidos num molho de creme de leite.',
'Estrogonofe (do russo строганов, stroganov) é um prato originário da culinária russa composto de cubos de carne bovina servidos num molho de creme de leite. Desde suas origens no século XIX, 
o prato popularizou-se em muitos países europeus, norte-americanos e no Brasil, sempre com variações consideráveis da receita original.',
'<h4>PREPARO</h4>
<p>Limpe os camarões tirando a cabeça e a tripa.
Coloque em uma panela a manteiga.
Após derreter jogue a cebola e deixe refogar.
Quando a cebola estiver amarelinha jogue o alho para que ele refogue e não queime.
Quando dourar o alho jogue o camarão, o orégano, o sal e a pimenta do reino, misture para não grudar o camarão no fundo da panela.
Assim que secar a água do camarão, jogue o molho de tomate, a mostarda e misture.
Desligue o fogo, e antes de servir jogue o creme de leite sem o soro.
Dica: Caso queira o molho do strogonoff mais ralo,
usar o soro do creme de leite na receita, ou acrescentar 1/4 de copo de leite. O sabor não vai mudar, somente a consistência.
Servir com arroz branco e bata, pode ser palha, palito ou chips.</p>',
'./assets/estrogonofe.png',
'estrogonofe'),
(
null, 
'STEAK AU POIVRE', 
'Steak au poivre ou bife de pimenta é um prato francês que consiste em um bife, tradicionalmente um filé mignon, revestido com pimenta grosseiramente rachada',
null,
null,
'./assets/steak.jfif',
'steak'),
(
null,
'FILE MIGNON AO VINHO TINTO',
'O filé mignon ou bife da vazia  com um delicioso molho de vinho tinto no qual ainda é prático de fazer.',
null,
null,
'./assets/fileMignon.jpg',
'fliMignon'
),
(
null,
'LAGOA AZUL',
'O Lagoa Azul é um coquetel francês com blue Curaçao misturado com vodka e limonada.',
null,
null,
'./assets/lagoaAzul.jpeg',
'lagoa'
),
(
null,
'PEACH MARGARITA',
'A margarita é um drink mexicano que leva tequila, sal, açúcar e frutas cítricas, como limão e laranja.',
null,
null,
'./assets/peachMargarita.jpg',
'margarita'
),
(
null,
'COSMOPOLITAN',
'Um cosmopolitan, ou simplesmente cosmo, é uma bebida alcoólica, ou um coquetel feito com vodca, triple sec, suco de oxicoco e suco de limão espremido',
null,
null,
'./assets/cosmopolitan.png',
'cosmopolitan'
);
select * from Receitas;

update Receitas set descReceitaCompleta = 'O bolo veludo vermelho está intimamente ligado ao bolo Devils food, e em alguns livros de receita mais antigos, os nomes foram intercambiáveis. A maioria dos bolos Veludo Vermelho hoje em dia se utilizam de corante, mas mesmo sem isto, a reação entre o vinagre e o leitelho tende a realçar as antocianinas presentes no chocolate.' where idReceita = 2;

CREATE TABLE Login(
idLogin INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(45),
senha VARCHAR(45));

CREATE TABLE Usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
telCelular CHAR(15),
bairro VARCHAR(45),
cidade VARCHAR(45),
rua VARCHAR(45),
numero INT,
fkLogin INT,
FOREIGN KEY (fkLogin) REFERENCES Login(idLogin));

alter table Usuario add column alimentoPref VARCHAR(25);

INSERT INTO Login VALUES
(null, 'gustavodessunte@gmail.com', '123'),
(null, 'rafaelkuzuhara@gmail.com', '123'),
(null, 'felipemartins@hotmail.com', '123');

desc Usuario;

INSERT INTO Usuario VALUES
(null, 'Gustavo Luiz Dessunte Bernardes', '(11)94296-1501', 'Paulicéia', 'São Bernardo do Campo', 'Cásper Líbero', 662, 1, 'doce'),
(null, 'Rafael Boechat Kuzuhara', '(11)123456-1234', 'Rudge Rammos', 'São Bernardo do Campo', 'Av. Jardim do Mar', 234, 2, 'salgado'),
(null, 'Felipe Martins Giardina', '(11)21234-1234', 'Rudge Rammos', 'São Bernardo do Campo', 'Av. Índico', 776, 3, 'drink');

select * from Usuario;
select * from Login;