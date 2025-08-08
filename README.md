O projeto contempla a ideia de obter uma base de dados sobre o consumo de energia elétrica no Brasil entre 2004 e 2023, tratar esses dados, eliminando dados duplicados e nulos, e então criar um dashboard contendo 
métricas e KPIs que auxiliem na análise de dados e tomada de decisões.

Para a limpeza e tratamento dos dados utilizei o MySql. Existem programas e ferramentas melhores para fazer esse tipo de operação, mas eu decidi realizar no MySql por gostar deste SGBD e por até então não ter 
de fato realizado um projeto neste cenário. Utilizei o MySql tambem como uma espécie de "roteiro" para a criação das tabelas dinâmicas no Google Sheets posteriormente. As operações de group by e agregações
implementadas no MySql eram "traduzidas" para o cenário de tabelas dinâmicas do Google Sheets.

Na base de dados original não havia a coluna de "região". Nesse caso, criei uma nova coluna manualmente no MySql, pensando que uma nova coluna com essa classificação geográfica nos possibilitaria uma análise mais
rica futuramente. Com a saída dessa query eu criei uma nova tabela contendo os dados da tabela anterior somados aos novos dados de região que eu criei. Dessa forma, é possível estendermos nossa análise com mais 
dados e criarmos uma situação onde a tomada de decisão é mais apoiada em informações.

Outro ponto a ser considerado é que possivelmente o Looker Studio, para criar uma visualização interativa de dashboard seria uma escolha mais interessante que o Google Sheets. Porém, como já realizei um projeto 
anteriormente com o Looker Studio, optei por me desafiar criando um dashboard interativo no Google Sheets.
