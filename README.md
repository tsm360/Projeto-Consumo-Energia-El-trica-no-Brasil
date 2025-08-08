O projeto contempla a ideia de obter uma base de dados sobre o consumo de energia elétrica no Brasil entre 2004 e 2023, tratar esses dados, eliminando dados duplicados e nulos, e então criar um dashboard contendo 
métricas e KPIs que auxiliem na análise de dados e tomada de decisões.

Para a limpeza e tratamento dos dados utilizei o MySql. Existem programas e ferramentas melhores para fazer esse tipo de operação, mas eu decidi realizar no MySql por gostar deste SGBD e por até então não ter 
de fato realizado um projeto neste cenário. Utilizei o MySql tambem como uma espécie de "roteiro" para a criação das tabelas dinâmicas no Google Sheets posteriormente. As operações de group by e agregações
implementadas no MySql eram "traduzidas" para o cenário de tabelas dinâmicas do Google Sheets.

Outro ponto a ser considerado é que possivelmente o Looker Studio, para criar uma visualização interativa de dashboard seria uma escolha mais interessante que o Google Sheets. Porém, como já realizei um projeto 
anteriormente com o Looker Studio, optei por me desafiar criando um dashboard interativo no Google Sheets.
