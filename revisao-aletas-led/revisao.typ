// =====================================================================
// Revisão bibliográfica: aletas em peças metálicas para transferência
// de calor em corpos de luminárias LED.
// Compilar com: typst compile revisao.typ
// Bibliografia em referencias.bib (formato biblatex).
// =====================================================================

#set document(
  title: "Revisão bibliográfica: aletas em peças metálicas para transferência de calor em luminárias LED",
  author: "Revisão sistemática assistida",
)
#set text(lang: "pt", size: 11pt)
#set page(paper: "a4", margin: (x: 2.4cm, y: 2.6cm), numbering: "1")
#set heading(numbering: "1.")
#show heading.where(level: 1): it => {
  v(1.4em)
  block(above: 1.2em, below: 0.9em, it)
  v(0.2em)
}
#show figure.caption: set text(size: 9pt)
#show link: set text(fill: rgb("1a4f8b"))

#align(center)[
  #text(size: 17pt, weight: "bold")[
    Revisão bibliográfica: aletas em peças metálicas para\
    transferência de calor em corpos de luminárias LED
  ]
  #v(0.5em)
  #text(size: 11pt)[
    Fundamentos, gestão térmica de LEDs, modelagem numérica (CFD/FEM) \
    e plano de pesquisa para simulação
  ]
  #v(0.3em)
  #text(size: 9.5pt, style: "italic")[
    54 referências em inglês, português e espanhol --- todas com DOI ou \
    link verificado (outubro de 2026)
  ]
]

#v(0.8em)
#outline(title: "Sumário", depth: 2)
#v(0.4em)

= Introdução

Este documento consolida uma revisão bibliográfica sobre o emprego de
aletas (fins) em peças metálicas --- notadamente corpos de alumínio
extrudado ou fundido --- para remoção de calor em luminárias LED de alta
potência. A revisão está organizada em quatro eixos: (i) fundamentos de
transferência de calor em superfícies estendidas; (ii) gestão térmica de
dispositivos e luminárias LED; (iii) modelagem numérica (CFD/FEM) de
aletas, heat sinks e luminárias; e (iv) literatura disponível em
português e espanhol. O texto finaliza com as lacunas identificadas e
com um plano de pesquisa para o desenvolvimento de modelos numéricos.

== Metodologia da busca

Foram adotados os seguintes critérios de inclusão:

- Idiomas: inglês, português ou espanhol;
- Tipo de fonte: livros-texto, artigos revisados por pares e anais de
  congressos indexados;
- Verificabilidade: cada entrada possui DOI resolvível em
  `doi.org` ou link válido de periódico/preprint/publisher, testado
  individualmente antes da inclusão;
- Relevância: transferência de calor em aletas metálicas, dissipação em
  luminárias LED ou métodos numéricos aplicados a esses problemas.

Foram excluídas referências sem link conferível, duplicatas e fontes
fora dos três idiomas admitidos. O resultado são 54 entradas, disponíveis
no arquivo `referencias.bib` em formato biblatex.

= Fundamentos de transferência de calor em superfícies estendidas

== Equação da aleta e eficiência térmica

A base teórica de qualquer projeto de heat sink para luminária é a
equação unidimensional de superfície estendida em regime permanente,
com propriedades e coeficiente de transferência de calor constantes:

$ (d^2 theta)/(d x^2) - m^2 theta = 0, #h(1em) m^2 = (h P)/(k A_c) $

onde $theta = T - T_inf$ é o superaquecimento, $h$ o coeficiente de
convecção, $P$ o perímetro, $k$ a condutividade térmica e $A_c$ a área
da seção transversal. As soluções analíticas para aletas retangulares,
circulares e de perfil côncico-parabólico, bem como os conceitos de
eficiência ($eta$) e efetividade, são tratadas de forma canônica nos
textos de transferência de calor @bergman2017fundamentals @holman2009heat
@cengel2015heat, e de forma monográfica em @kraus2001extended, obra
de referência exclusiva sobre superfícies estendidas.

== Geometrias, dimensionamento e revisões críticas

O desempenho de um heat sink depende fortemente da geometria da aleta e
do comprimento ótimo: @khan2006role compararam analiticamente aletas
retangulares, triangulares, trapezoidais e parabólicas sob convecção
forçada e concluíram que a eficiência global é sensível à razão
área/volume; @kou2003thermal derivaram o comprimento ótimo de aleta que
minimiza a resistência térmica total considerando convecção e radiação.
@razelos2003critical apresentou revisão crítica da literatura sobre
superfícies estendidas, incluindo efeitos de dependência de $h(T)$, e
@khani2009analytical soluções analíticas para o problema não linear com
condutividade e coeficiente de convecção dependentes da temperatura ---
situação típica de alumínio a 60--100 °C. O projeto preliminar de
sistemas de dissipação é abordado em @kraus1995design, clássico dedicado
à análise e projeto de heat sinks.

== Convecção natural em aletas e arranjos de pinos

Luminárias LED operam quase sempre em convecção natural, condição em que
espaçamento e orientação das aletas são parâmetros críticos. A
correlação de espaçamento ótimo para placas paralelas verticais foi
estabelecida por @barcohen1984thermally, depois estendida ao projeto
ótimo de heat sinks de placas com aletas em @barcohen2003design. Em
arranjos de pinos, @sparrow1986orientation quantificaram os efeitos de
orientação sobre a convecção natural-radiativa; @armstrong1988review
revisaram arranjos escalonados de pinos; e o trabalho experimental de
@sertkaya2021effects mediu a influência de altura, espaçamento e
orientação de aletas inline em convecção natural --- dados particularmente
úteis como casos de validação numérica.

= Gestão térmica em luminárias LED

== Mecanismos de geração de calor e temperatura de junção

Em LEDs de alta potência, a eficiência de conversão elétrico-luminosa
cai com a temperatura, e a fração não convertida em luz é dissipada como
calor. A revisão de @li2024thermal organiza o estado da arte da gestão
térmica do nível do pacote ao nível do sistema, evidenciando que o corpo
da luminária (heat sink de alumínio) é o estágio final da cadeia de
transferência de calor. @hamidnia2018application revisam tecnologias
micro/nano de gestão térmica no pacote, enquanto @liu2022development
revisam mecanismos de dissipação do pacote LED. A temperatura de junção
é o parâmetro de projeto mais importante: @cengiz2022critical revisam os
métodos de sua medição (frente térmica, forward voltage, termografia) e
seus erros; @meneghini2020thermal explicam a *thermal droop* (perda de
eficiência com a temperatura em LEDs III-nitretos); e @padmasali2020generalised
propõem método generalizado para estimar $T_j$ e seu efeito sobre a
saída luminosa.

== Modelos térmicos compactos e análise de luminárias

Para o projeto industrial, modelos térmicos compactos de baixa ordem
são alternativa viável ao CFD: @yurtseven2014thermal validaram um modelo
compacto de dois resistores para simulação e validação de luminárias
LED. @baran2019thermal analisaram numericamente os fatores que influenciam
$T_j$ em painéis LED, e @rozowicz2022arrangement mostraram que o
espaçamento e o arranjo dos LEDs alteram significativamente as condições
térmicas de operação de luminárias de alta potência. Do ponto de vista
de desempenho lumínico e vida útil, @union2022impact relacionaram a
dissipação térmica ao desempenho e à vida útil de luminárias de iluminação
urbana.

== Heat sinks radiais, fabricação aditiva e confiabilidade

A geometria radial é comum em luminárias tipo bulbo/refletor: @yu2011optimum
otimizaram o heat sink radial sob convecção natural, e @costa2014improved
propuseram versão melhorada com ganho relevante de dissipação. Em termos
de fabricação, @tucker2021experimental investigaram experimentalmente
heat sinks de alumínio produzidos por fabricação aditiva, mostrando que
a geometria livre da AM permite melhorias sobre extrudados convencionais.
Do lado da confiabilidade, @qian2016accelerated propuseram método
acelerado de teste de depreciação de fluxo luminoso, e @vandriel2016lumen
apresentaram previsões de manutenção de lúmens (lumen maintenance) para
pacotes LED --- aplicações diretas do controle da temperatura de junção.

== Referências em português e espanhol sobre luminárias LED

A literatura lusófona aborda o tema sob a perspectiva de projeto
eletrotérmico: @bender2013metodologia apresentam metodologia de projeto
eletrotérmico de LEDs aplicada a sistemas de iluminação. Em espanhol,
@cahue2017diseno otimizaram computacionalmente um disipador de calor
para luminária LED --- estudo próximo ao escopo desta revisão, ainda que
com escala reduzida de validação.

= Modelagem numérica (CFD/FEM) de aletas e luminárias

== Estudos numéricos de convecção natural em aletas

Os modelos numéricos de aletas em convecção natural formam o núcleo
metodológico desta revisão. @oha2019slanted simularam efeito de
flutuação em pinos inclinados em placa vertical (convecção natural
laminar), enquanto @saha2019fully analisaram arrays periódicos de pinos
com formulação de célula unitária --- abordagem eficiente para heat
sinks com dezenas de aletas. Na literatura ibero-americana,
@hernandez2015simulacion simularam convecção mista em canal vertical
aletado, e @antoninialves2016aplicacao aplicaram transformadas
integrais generalizadas a problemas de convecção em dutos.

== Transferência de calor conjugada e aspectos de formulação

O acoplamento condução-convecção (CHT) é indispensável quando a aleta
partilha temperatura com o fluido: @renze2019simulation demonstraram
simulações de CHT com código aberto, e @becker2012tiempogrande
apresentaram integração temporal explícita com passos grandes para a
equação de condução --- relevante para transientes térmicos de
luminária ligada/desligada. A escolha do modelo de turbulência para
convecção natural em recintos foi revisada por @choi2012turbulence:
embora o escoamento em aletas de luminária seja tipicamente laminar ou
transicional, o modelo importa quando a luminária está embutida em
plenum ou quando $"Ra"$ elevado.

== CFD aplicada a luminárias LED

@hsu2017numerical realizaram referência metodológica ao combinar
simulação numérica e validação experimental na análise térmica de um
downlight LED compacto com projeto de heat sink, reproduzindo com boa
acurácia a distribuição de temperatura. @rozowicz2022arrangement
simularam o efeito do arranjo de LEDs sobre as condições térmicas de
luminárias de alta potência, e @baran2019thermal identificaram os fatores
de projeto que controlam a temperatura de junção em painéis LED.
Esses trabalhos definem o padrão de boas práticas: geometria
representativa, CHT acoplado, radiação de parede e comparação com
medições experimentais.

== Otimização topológica e de forma de heat sinks

A otimização topológica tem produzido heat sinks de convecção natural
com desempenho superior ao de geometrias paramétricas. @alexa2014topology
formularam otimização topológica para problemas de convecção natural com
malha adaptativa; @koga2013development desenvolveram dispositivos de
dissipação por otimização topológica com SIMP; @joo2017topology
consideraram coeficiente de transferência de calor dependente da forma
--- avanço importante para aletas reais; @saglietti2018topology
otimizaram heat sinks em cavidade diferencialmente aquecida (caso
canônico de validação); @noel2023xfem estenderam a formulação a regimes
turbulentos com XFEM/level-set; e @meliga2024multi propuseram otimização
multiobjetivo com adaptação anisotrópica de malha. Em conjunto, esses
trabalhos apoiam a etapa de otimização do plano de pesquisa proposto
adiante.

= Literatura em português e espanhol

Além das obras já citadas sobre luminárias LED, o arcabouço ibero-
americano sobre aletas e métodos numéricos inclui: modelamento de
intercambiadores de tubos e aletas @cordobatuta2016aletas; integração
temporal da equação de condução @becker2012tiempogrande; análise térmica
de disipadores com heat pipes @toapanta2019disipador; fundamentos de
iluminação com LED @rugeles2010led; modelagem por elementos finitos de
equipamentos térmicos @cetina2017modelacion; avaliação numérica de
convecção natural @manea2014conveccao; condições de contorno em
superfícies com fontes de calor @ramos2000conveccao; análise CFD de
transformadores com diferentes refrigeração @nogueira2020transformadores;
modelagem numérica de sistemas aletados @pereira2025aletados; e
determinação experimental do coeficiente de convecção
@mirandajunior2016conveccao. Embora nenhum desses trabalhos trate
isoladamente de luminárias LED, eles oferecem correlações, casos de
validação e terminologia útil em português e espanhol.

= Lacunas identificadas

Com base na revisão, identificam-se as seguintes lacunas:

- *Validação CFD + experimental para luminárias LED com aletas
  metálicas em diferentes orientações*: há simulações @hsu2017numerical
  e medidas de orientação para pinos @sertkaya2021effects, mas poucos
  trabalhos cruzam ambos os fatores no contexto de luminária instalada;
- *Custo computacional versus modelo compacto*: não há diretrizes
  claras sobre quando usar modelo de duas resistências
  @yurtseven2014thermal e quando o CFD se torna necessário;
- *Anisotropia de propriedades em extrusões de alumínio*: raramente
  considerada nas simulações, embora a laminação directional altera $k$;
- *Radiação em luminárias fechadas/embutidas*: a contribuição relativa
  de radiação e convecção em plenums ainda é pouco quantificada
  @choi2012turbulence;
- *Literatura em português/espanhol*: escassa em otimização de heat
  sinks LED, o que justifica o desenvolvimento de modelos numéricos
  nesse recorte.

= Plano de pesquisa: modelos numéricos (CFD/FEM)

== Objetivo e perguntas de pesquisa

*Objetivo:* desenvolver, verificar e validar um modelo numérico de
transferência de calor conjugada (condução no corpo metálico + convecção
natural + radiação) capaz de prever a temperatura de junção e o
superfície de luminárias LED equipadas com aletas de alumínio, e
utilizá-lo para o dimensionamento geométrico das aletas.

Perguntas de pesquisa:

+ Qual geometria e espaçamento de aletas minimizam $T_j$ sob restrição
  de massa e volume de luminária?
+ Qual o erro introduzido por modelos reduzidos (2D/x-simétricos ou
  modelo compacto) em relação ao modelo 3D completo?
+ Qual a fração de calor removida por radiação versus convecção nas
  condições típicas de instalação?

== Escopo e hipóteses do modelo

- Geometria: corpo de luminária com heat sink extrudado (aletas retangulares
  ou de pino) acoplado ao PCB de LED via TIM (interface térmica);
- Regime: permanente na análise de projeto; transiente para cenário
  ligar/desligar @becker2012tiempogrande;
- Física: condução no sólido; convecção natural no ar com acoplamento
  de massa-peso (Boussinesq para $Delta T < 30$ K); radiação superfície-
  a-superfície com emissividade do alumínio anodizado;
- Hipóteses: escoamento laminar (verificar $"Ra"$), fluido incompressível,
  paredes de espessura modeladas como sólidos (não como *thin boundary*);
- Ferramentas: solver de CFD com CHT (por exemplo, código comercial ou
  de código aberto @renze2019simulation), com malha não estruturada.

== Fases de execução

#figure(
  caption: [Fases, atividades, critérios de aceitação e prazos do plano de pesquisa numérico.],
  table(
    columns: (0.7cm, 3.4cm, 6.6cm, 3.2cm),
    align: (center, left, left, left),
    table.header([*Fase*], [*Etapa*], [*Atividades e critérios*], [*Prazo / entregável*]),
    [0], [Requisitos e dados],
    [Levantar potência térmica dissipada (elétrica $-$ óptica), limites de $T_j$,
     normas LM-80/TM-21, propriedades do alumínio, CAD da luminária.
     _Critério:_ base de dados completa e rastreável.],
    [2 semanas / dossiê de requisitos],

    [1], [Conceituação do modelo],
    [Definir domínio fluido e sólido, hipóteses (Boussinesq, regime,
     emissividade), modelos reduzidos candidatos (2D, x-simétrico, 3D)
     e variáveis de projeto.],
    [2 semanas / relatório de formulação],

    [2], [Geração da malha],
    [Malha com camada limite no sólido e no ar, refinamento junto às
     aletas. _Critério:_ independência de malha com variação de
     $T_j < 1$--$2 %$ entre três níveis (GCI).],
    [3 semanas / estudo de malha],

    [3], [Configuração física],
    [Fonte de calor no LED (fluxo ou volume), contato do TIM, condições
     de contorno nas fronteiras do domínio aberto, parâmetros de
     radiação. _Critério:_ balanço de energia $< 0,1 %$, resíduais
     $< 10^-6$.],
    [2 semanas / configuração versionada],

    [4], [Verificação],
    [Casos canônicos: aleta isolada vs solução analítica
     @bergman2017fundamentals; espaçamento ótimo de placas
     @barcohen1984thermally; arrays de pinos vs @oha2019slanted e
     @saha2019fully. _Critério:_ erro $< 5 %$ nos campos de
     referência.],
    [4 semanas / relatório de verificação],

    [5], [Validação experimental],
    [Protótipo instrumentado (termopares na base do LED e no heat sink,
     termografia IR) @cengiz2022critical; comparação de perfis de
     temperatura e $T_j$ estimado. _Critério:_ erro máximo $< 10 %$ e
     erro médio $< 5 %$ @hsu2017numerical.],
    [6 semanas / relatório de validação],

    [6], [Análise de sensibilidade e DOE],
    [Variáveis: número, altura, espessura e espaçamento das aletas,
     orientação, emissividade, potência. Método de superfície de
     resposta ou Morris. _Critério:_ ranking de sensibilidade de
     $T_j$.],
    [4 semanas / matriz DOE e relatório],

    [7], [Otimização],
    [Etapa A: ótimo paramétrico (espaçamento e comprimento de aleta)
     @barcohen2003design @kou2003thermal; Etapa B: otimização
     topológica sob restrição de fabricabilidade
     @koga2013development @joo2017topology.],
    [6 semanas / geometrias ótimas],

    [8], [Síntese e produto final],
    [Curva de resistência térmica do sistema, mapa de $T_j$ para as
     condições de instalação, recomendações de projeto e artigo.],
    [3 semanas / artigo + modelo do projeto],
  ),
)

== Estratégia de verificação e validação (V&V)

A cadeia de confiança do modelo será estabelecida em três níveis:

+ *Verificação matemática:* resolução de casos com solução analítica
  (aleta unidimensional) e casos de benchmark da literatura numérica
  @oha2019slanted @saha2019fully @renze2019simulation;
+ *Validação experimental:* comparação com protótipo instrumentado,
  reportando erro relativo e incerteza de medição
  @hsu2017numerical @cengiz2022critical;
+ *Validação de uso:* assegurar que as incertezas de entrada
  (emissividade, contato do TIM, $h$ de campo) não inviabilizam a
  decisão de projeto --- análise de incerteza de Monte Carlo sobre o
  DOE.

== Critérios de sucesso

- $T_j$ previsto com erro $< 5 %$ frente à medição, nas condições
  nominal e de pior caso;
- Modelo reduzido (2D ou compacto) com erro $< 10 %$ em relação ao 3D,
  permitindo varredura rápida de parâmetros;
- Geometria otimizada com ganho $>= 5 %$ na dissipação (ou redução
  equivalente de $T_j$) a massa constante;
- Reprodutibilidade: malhas, casos e scripts versionados.

= Conclusão

A revisão mostrou que o dimensionamento de aletas metálicas para
luminárias LED se apoia em três pilares: a teoria clássica de superfícies
estendidas (eficiência, espaçamento ótimo, correlações de convecção
natural), os requisitos de temperatura de junção e confiabilidade dos
LEDs, e os métodos numéricos de CHT com validação experimental. As
lacunas apontadas --- em particular a validação conjunta CFD/experimental
em diferentes orientações e a carência de estudos em línguas
ibero-americanas sobre otimização de heat sinks LED --- sustentam o
plano de pesquisa em oito fases, com critérios quantitativos de
verificação, validação e sucesso. O arquivo `referencias.bib` acompanha
esta revisão em formato biblatex, com DOI ou link verificado em todas as
54 entradas.

#v(1.2em)
#bibliography("referencias.bib", style: "ieee", title: "Referências")
