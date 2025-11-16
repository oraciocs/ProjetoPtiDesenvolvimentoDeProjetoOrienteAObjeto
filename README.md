# PROJETO INTEGRADOR: DESENVOLVIMENTO DE SISTEMAS ORIENTADO A OBJETOS - CENTRO UNIVERSITÁRIO SENAC

**Integrantes** <br><br>

**Crisnando Lima de Jesus** <br>
**Erick Leite Freire**<br>
**Francisco Orion da Silva Paranhos**<br>
**Matheus Castro Sena Rosa**<br>
**Oracio Carvalho Schopping**<br>
**Ronaldo Luis Alves Gonzaga**<br>

## Resumo

**Este projeto tem como finalidade a modelagem de um sistema orientado a objetos para apoiar a gestão de dados de uma universidade. A proposta se baseia no uso da UML (Linguagem Unificada de Modelagem), que é um padrão amplamente utilizado para representar graficamente sistemas e facilitar a comunicação entre os membros de uma equipe de desenvolvimento. O foco da modelagem está nos diferentes tipos de pessoas que interagem com o sistema, como alunos, professores, fornecedores, pessoas físicas e jurídicas. Por meio da UML, busca-se estruturar essas entidades e seus relacionamentos, oferecendo uma visão clara de como os dados devem ser organizados e de como os atores se relacionam com as funcionalidades principais do sistema. A construção dos diagramas propostos — como caso de uso e classes — tem o objetivo de simplificar a compreensão do sistema e servir de base para futuras etapas de implementação. Mais do que uma exigência acadêmica, trata-se de uma prática que simula a realidade do desenvolvimento de software, onde a modelagem é essencial para reduzir falhas, alinhar expectativas e lidar com a complexidade de sistemas de grande porte.**<br>
**Em resumo, o projeto demonstra a importância da UML como ferramenta de apoio na análise e no planejamento de sistemas, contribuindo para a padronização, clareza e eficiência no processo de desenvolvimento.**<br>

## Introdução

**O desenvolvimento de sistemas de software exige não apenas conhecimentos técnicos de programação, mas também metodologias formais que auxiliem na modelagem e organização de ideias. Nesse contexto, a UML (Linguagem Unificada de Modelagem) se apresenta como uma ferramenta essencial, pois fornece uma notação padronizada capaz de representar graficamente tanto os aspectos funcionais quanto estruturais de um sistema.** </br></br>
**Em ambientes complexos, como o de uma universidade, diferentes tipos de informações — alunos, professores, fornecedores e entidades jurídicas — precisam ser gerenciados de forma integrada e consistente. A UML contribui nesse processo ao reduzir ambiguidades e facilitar a comunicação entre analistas, desenvolvedores e gestores, garantindo que todos tenham uma visão alinhada do projeto.** <br></br>
**Além disso, os diagramas de caso de uso e de classes permitem visualizar o sistema sob diferentes perspectivas. Enquanto os primeiros destacam as interações entre usuários e funcionalidades, os segundos detalham atributos, métodos e relacionamentos, aplicando princípios de orientação a objetos como herança e encapsulamento. Essa abordagem contribui para lidar melhor com a complexidade dos sistemas e oferece maior clareza para a futura implementação em código.**<br></br>
**Dessa forma, a utilização da UML vai além de um recurso acadêmico: trata-se de uma prática estratégica que organiza o pensamento, aprimora a comunicação e assegura qualidade ao desenvolvimento de software.**<br></br>

## Diagramas de Caso de Uso

**Um diagrama de caso de uso é um diagrama da UML que descreve as interações entre atores externos (usuários ou sistemas) e o sistema em desenvolvimento.**<br></br>
**Ele mostra funcionalidades (casos de uso) representadas como ações que atendem às necessidades dos atores. Seu foco é o que o sistema deve fazer, e não como será implementado. Serve para levantar requisitos funcionais, facilitar o entendimento do sistema e apoiar a comunicação entre equipe técnica e usuários.**<br><br>
**Diagrama de Caso de Uso – Sistema Universidade**<br><br>

![Diagrama de Caso de Uso](/diagrams_phase1/casodeusosistemauniversidade.png) <br><br><br>

## Descrição dos Cenários dos Casos de Uso Construídos:

**Neste tópico, apresentam-se as descrições detalhadas dos casos de uso definidos no diagrama elaborado anteriormente. Cada caso contempla cenário principal, cenários alternativos, pré-condições e pós-condições, visando demonstrar como o sistema deve se comportar em diferentes situações. A seguir:**<br><br>

### Cadastrar Pessoa Física

**Ator: Gestão Acadêmica**<br><br>
**• Pré-condição: O administrador deve estar autenticado e possuir permissão de cadastro.**<br><br>
**• Cenário Principal:**<br><br><br>
**1. O ator acessa a funcionalidade “Cadastrar Pessoa Física”.**<br><br>
**2. O sistema exibe formulário com campos obrigatórios (nome, CPF, endereço, e-mail, telefone).**<br><br>
**3. O ator insere os dados e envia a solicitação.**<br><br>
**4. O sistema valida duplicidade de CPF.**<br><br>
**5. O cadastro é confirmado e armazenado.**<br><br><br>
**• Cenários Alternativos:**<br><br><br>
**o A1: Caso o CPF já exista, o sistema rejeita e informa duplicidade.**<br><br>
**o A2: Se algum campo obrigatório não for preenchido, o sistema solicita correção.**<br><br>
**• Pós-condição: Pessoa Física registrada no sistema, disponível para associação a aluno ou professor.**<br><br><br>

**Tela de Login**<br><br>
![Tela de Login](/prototipos_interface/1teladelogin.png) <br><br><br>

**Tela do Dashboard**<br><br>
![Tela de dashboard](/prototipos_interface/2dashboard.png) <br><br><br>

**Tela Cadastro Pessoa Física**<br><br>
![Tela Cadastro Pessoa Física](/prototipos_interface/3cadastropessoafisica.png) <br><br><br>

## Cadastrar Aluno

**Ator: Gestão Acadêmica**<br><br>
**• Pré-condição: Pessoa Física deve estar previamente cadastrada.**<br><br>
**• Cenário Principal:**<br><br>
**1. O ator seleciona “Cadastrar Aluno”.**<br><br>
**2. O sistema solicita vínculo com Pessoa Física existente.**
**3. São adicionados dados acadêmicos (curso, matrícula, turma).**
**4. O sistema valida matrícula e registra o aluno.**
**5. Confirmação exibida ao usuário.**<br><br><br>
**• Cenários Alternativos:**<br><br>
**o A1: Se a pessoa não estiver cadastrada, o sistema exige cadastro prévio.**<br><br>
**o A2: Caso a matrícula já exista, o cadastro é bloqueado.**<br><br>
**• Pós-condição: Aluno registrado e habilitado para controle acadêmico.**<br><br>

**Tela Cadastrar Aluno**<br><br>
![Tela Cadastrar Aluno](/prototipos_interface/6cadastrodoaluno.png) <br><br><br>

**Tela Sucesso no Cadastro**<br><br>
![Tela Sucesso no Cadastro](/prototipos_interface/10teladesucesso.png) <br><br><br>

## Cadastrar Professor

**Ator: Gestão Acadêmica**<br><br>
**• Pré-condição: Pessoa Física cadastrada.**<br><br><br>
**• Cenário Principal:**<br><br>
**1. O ator acessa “Cadastrar Professor”.**<br><br>
**2. O sistema solicita vínculo com pessoa existente.**<br><br>
**3. Dados acadêmicos são preenchidos (formação, disciplinas, carga horária).**<br><br>
**4. O sistema valida e confirma o registro.**<br><br><br>
**• Cenários Alternativos:**<br><br>
**o A1: Caso a pessoa não exista, cadastro deve ser feito previamente.**<br><br>
**o A2: Se já houver vínculo como professor, o sistema rejeita duplicidade.**<br><br>
**• Pós-condição: Professor habilitado no sistema.**<br><br>

**Tela Cadastrar Professor**<br><br>
![Tela Cadastrar Professor](/prototipos_interface/5cadastroprofessor.png) <br><br><br>

**Tela Sucesso no Cadastro**<br><br>
![Tela Sucesso no Cadastro](/prototipos_interface/10teladesucesso.png) <br><br><br>

## Controle Financeiro

**Ator: Gestão Financeira**<br><br>
**• Pré-condição: Acesso liberado ao módulo financeiro.**<br><br><br>
**• Cenário Principal:**<br><br>
**1. O ator acessa relatórios financeiros.**<br><br>
**2. O sistema permite lançamento de receitas, despesas e fechamento de caixa.**<br><br>
**3. O sistema armazena informações no banco de dados.**<br><br><br>
**• Cenários Alternativos:**<br><br>
**o A1: Caso haja inconsistência nos dados lançados, sistema solicita revisão.**<br><br>
**o A2: Falha de comunicação com o banco de dados, operação é suspensa.**<br><br>
**• Pós-condição: Dados financeiros atualizados.**<br><br>

**Tela Controle Financeiro**<br><br>
![Tela Controle Financeiro](/prototipos_interface/13controlefinanceiro.png) <br><br><br>

## Controle de Livros / Empréstimos

**Ator: Biblioteca**<br><br>
**• Pré-condição: Usuários e livros cadastrados.**<br><br>
**• Cenário Principal: Registrar e controlar empréstimos e devoluções.**<br><br>
**• Cenários Alternativos:**<br><br>
**o A1: Livro indisponível para empréstimo.**<br><br>
**o A2: Usuário em situação irregular (atraso ou multa).**<br><br>
**• Pós-condição: Acervo atualizado.**<br><br>

**Tela Controle de Livros**<br><br>
![Tela Controle de Livros](/prototipos_interface/14controledelivros.png) <br><br><br>

## Cadastrar Funcionário / Controlar Funcionários

**Ator: Gestão Administrativa**<br><br>
**• Pré-condição: Administrador autenticado.**<br><br>
**• Cenário Principal: Registrar funcionários e gerenciar dados funcionais.**<br><br>
**• Cenários Alternativos:**<br><br>
**o A1: CPF duplicado.**<br><br>
**o A2: Falha no registro.**<br><br>
**• Pós-condição: Funcionário habilitado para operações administrativas.**<br><br>

**Tela Cadastrar Funcionário**<br><br>
![Tela Sucesso no Cadastro](/prototipos_interface/11cadastrofuncionarios.png) <br><br><br>

**Tela Buscar Funcionário**<br><br>
![Tela Sucesso no Cadastro](/prototipos_interface/12buscafuncionario.png) <br><br><br>

## Controle de Patrimônio

**Ator: Gestão Administrativa**<br><br>
**• Pré-condição: Acesso concedido ao módulo administrativo.**<br><br>
**• Cenário Principal: Registrar bens patrimoniais (equipamentos, móveis, etc.).**<br><br>
**• Cenários Alternativos:**<br><br>
**o A1: Bem já registrado.**<br><br>
**o A2: Dados incompletos ou inválidos.**<br><br>
**• Pós-condição: Patrimônio registrado e controlado.**<br><br>

**Tela Controle de Patrimonio**<br><br>
![Tela Sucesso no Cadastro](/prototipos_interface/15controlepatrimonio.png) <br><br><br>

## Controle de Compras

**Ator: Gestão Administrativa**<br><br>
**• Pré-condição: Pessoa Jurídica cadastrada.**<br><br>
**• Cenário Principal: Registrar fornecedores e compras realizadas.**<br><br>
**• Cenários Alternativos:**<br><br>
**o A1: Fornecedor inexistente.**<br><br>
**o A2: Compra não autorizada pelo orçamento.**<br><br>
**• Pós-condição: Fornecedor e compras armazenados corretamente.**<br><br>

**Tela Cadastro Pessoa Jurídica**<br><br>
![Tela Cadastro Pessoa Jurídica](/prototipos_interface/7cadastropessoajuridica.png) <br><br><br>

**Tela Sucesso no Cadastro**<br><br>
![Tela Sucesso no Cadastro](/prototipos_interface/10teladesucesso.png) <br><br><br>

**Tela Buscar Pessoa Jurídica**<br><br>
![Tela Buscar Pessoa Jurídica](/prototipos_interface/8paginadebusca.png) <br><br><br>

**Tela Controle de Compras**<br><br>
![Tela Sucesso no Cadastro](/prototipos_interface/16controledecompras.png) <br><br><br>

## Diagrama de Classe

**O diagrama de classes é um tipo de diagrama da UML que representa a estrutura estática de um sistema. Ele mostra classes, atributos, métodos e relacionamentos (como herança, associação e composição). Seu objetivo é modelar a visão conceitual e lógica do sistema, servindo de base para análise e projeto de software. Facilita a comunicação entre desenvolvedores e stakeholders, além de apoiar a implementação orientada a objetos.**<br><br><br>

**Diagrama de Classes – Sistema Universidade**<br><br>
![Diagrama de Classes - Sistema Universidade](/diagrams_phase1/diagramadeclasse.png) <br><br><br>

## CONCLUSÃO

**O projeto proposto utiliza a UML (Linguagem Unificada de Modelagem) para estruturar e detalhar os casos de uso de um sistema de gestão para uma universidade, demonstrando a importância de uma abordagem visual e organizada no desenvolvimento de software. Os casos de uso apresentados, como o cadastro de pessoas físicas, jurídicas, professores, alunos e fornecedores, exemplificam como a UML pode ser aplicada para descrever processos complexos de maneira clara e eficiente.**<br><br>
**Através da modelagem dos casos de uso, foi possível identificar e detalhar os fluxos de trabalho, os atores envolvidos e as diversas condições que o sistema deve contemplar para garantir a integridade dos dados e a funcionalidade do sistema. A utilização de cenários alternativos e as pré e pós-condições de cada processo asseguram que o sistema possa lidar com situações imprevistas de forma robusta, como a duplicidade de dados e a falta de informações obrigatórias.**<br><br>
**Além disso, a UML não só facilita a comunicação entre os diferentes stakeholders do projeto, como analistas, desenvolvedores e gestores, mas também proporciona uma visão clara sobre a estrutura e os comportamentos do sistema. Isso se traduz em uma ferramenta poderosa para a construção de sistemas mais organizados, escaláveis e de fácil manutenção.**<br><br>
**Por fim, a implementação desse sistema com base nos casos de uso descritos certamente contribuirá para uma gestão mais eficiente e integrada das informações da universidade, melhorando a comunicação interna e garantindo a consistência dos dados, o que é fundamental para o bom funcionamento das operações acadêmicas e administrativas.**<br><br>

## REFERENCIAS

**COSTA, C. A.; ALMEIDA, C. E.; SANTOS, E. A aplicação da Linguagem de Modelagem Unificada (UML). Gestão & Produção, São Carlos, v. 8, n. 2, p. 219-235, 2001. Disponível em: <https://www.scielo.br/j/gp/a/RRQQ7mKTFztQXK9Sz7BKtWQ/>. Acesso em: 2 set. 2025.**<br><br>

**BORGES, Elida Neves Mendes. UML para modelagem do ciclo de evasão estudantil. 2019. Trabalho de Conclusão de Curso (Bacharelado em Estatística) – Universidade de Brasília, Brasília, 2019. Disponível em: <https://bdm.unb.br/bitstream/10483/25251/1/2019_ElidaNevesMendesBorges_tcc.pdf>. Acesso em: 2 set. 2025.**<br><br>

**IBM. Diagramas de classes em modelagem UML. [S. l.], [20--]. Disponível em: <https://www.ibm.com/docs/pt-br/rsas/7.5.0?topic=structure-class-diagrams&utm>. Acesso em: 2 set. 2025.**<br><br>

**PROCESSON. Como fazer um diagrama de caso de uso UML. [S. l.], 2025. Disponível em: <https://www.processon.io/pt/blog/make-a-uml-use-case-diagram>. Acesso em: 10 set. 2025.**<br><br>

**ARAÚJO, Diego O.; SCHMITZ, Eber A.; CORRÊA, Alexandre L.; ALENCAR, Antonio J. Elaboração de especificações de casos de uso para linhas de produto de software baseada em fragmentos. In: SIMPÓSIO BRASILEIRO DE COMPONENTES, ARQUITETURAS E REUTILIZAÇÃO DE SOFTWARE (SBCARS), 3., 2009, Rio de Janeiro. Anais [...]. Rio de Janeiro: SBC, 2009. Disponível em: <https://sol.sbc.org.br/index.php/sbcars/article/view/24099>. Acesso em 10 set. 2025.**<br><br>
