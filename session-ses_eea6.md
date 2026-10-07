# Revisão bibliográfica de aletas em LEDs

**Session ID:** ses_eea606d74ffeMjk6txGV6w2Jf7
**Created:** 10/7/2026, 10:09:01 AM
**Updated:** 10/7/2026, 10:14:56 AM

---

## User

crie uma revisao bibliogrfica no formato biblatex de livros e artigos que tratem sobre aletas em pecas metalicas para trasferencia de calor em especial em corpos de luminarias led. planeje os pacos da pesquisa para modelos menkres, utilize subagentes, garanta que cada referencia possua doi ou link no google schoolar valido.apenas referencias em ingles portugues ou espnhol 

---

## Assistant (Build · MiMo-V2.6-Flash Free · 283.5s)

_Thinking:_

The user wants a bibliographic review in biblatex format about fins (aletas) in metal pieces for heat transfer, especially in LED luminaire bodies. Plan research steps for minor models (modelos menores? "modelos menkres" - probably "modelos menores" or maybe "modelos de membros"? Actually "modelos menkres" likely typo for "modelos menores" - smaller models, or maybe "modelos numéricos"? Hmm. Could be "modelos menores" = smaller/simplified models. I'll interpret as simplified/parametric models for research planning.)

They ask: plan the research steps, use subagents, ensure each reference has a DOI or valid Google Scholar link, only references in English, Portuguese, or Spanish.

Working directory: /root/git/typst-skills. Interesting - it's a typst skills repo. Maybe they want the biblatex file created in the repo. Let me first check the repo structure to know where to put files.

Plan:
1. Explore repo briefly (ls).
2. Create a todo list.
3. Launch subagents (explore/general) to research references on pin-fin/heat sink LED thermal management, with DOI verification.
4. Compile into a .bib file with biblatex entries.

Since subagents have web access? The task tool subagents: explore (codebase), general (research, web fetches). Yes, general agent has all tools including web search presumably.

I should split research into themes:
- Subagent 1: heat transfer fundamentals in extended surfaces (fins) - classic texts (Incropera, Kraus, Aziz, Gedik) with DOIs/links; papers on analytical/numerical fin models (longitudinal/circular fins of uniform profile, efficiency, effectiveness).
- Subagent 2: LED luminaire thermal management - LED junction temperature, heat sinks, LED package thermal resistance, standards (LM-80, JESD51), review papers.
- Subagent 3: Metal fins in luminaires specifically - aluminum heat sinks, extruded/pin fins, natural convection LED heat sinks, topology optimization, additive manufacturing, thermal interface materials.
- Subagent 4: Portuguese/Spanish references - revistas em português/espanhol sobre aletas e dissipação em luminárias LED (e.g., Brazilian journals: Engenharia Térmica, Revista Brasileira de Engenharia Mecânica; SciELO).Also research planning steps for "modelos menores" — maybe they mean "modelos numéricos" (numerical models)? "modelos menkres" is ambiguous. Could be "modelos menores" (smaller models → scale models / reduced-order models). I could ask a clarifying question... The instruction says ask questions when ambiguous. But maybe better to interpret as "modelos simplificados/redutidos" and plan steps. Actually asking one clarifying question might be good, but the user gave a fairly complete instruction and wants subagents used. Let me ask via the question tool about "modelos menkres" — hmm, that would interrupt. The typo is fairly clearly "menores" (keyboard: k near l? "menores" vs "menkres" - k is next to l? On QWERTY, 'l' is next to 'k'. "menores" → "menkres" would be o→k? Not adjacent. Maybe "modelos térmicos"? Or "modelos numéricos"? Hmm. Or "modelos membro"? Actually maybe they meant "modelos menores" = smaller-scale models (scale-down / reduced models for experiments/simulations).

I'll ask a quick clarifying question with options while starting? The question tool blocks. I think it's worth one quick question: what does "modelos menkres" mean? Options: modelos reduzidos/simplificados (reduced-order), modelos numéricos (CFD/FEM), modelos de membros de aletas, escala reduzida experimental.

Actually, given the instruction to be proactive but first answer... The user asked to create a bibliographic review and plan research steps. Ambiguity in "modelos menkres" affects the research plan. I'll ask one question, maybe combined with output format (just .bib file or also a markdown/text review document?). Two questions in one call.

Let me first do a quick ls of the repo to see context, then ask.

Actually I can do both in parallel: bash ls + question? Tool calls in same block - question tool is fine alongside. But better: ls first quickly, then question. Let me batch: bash ls and question in one message? They're independent. Yes.

Let me do that.

**Tool: bash**

**Input:**
```json
{
  "command": "ls -la"
}
```

**Output:**
```
total 22
drwxr-xr-x+       6 root root 3452 Oct  7 09:56 .
drwxr-xr-x+       3 root root 3452 Oct  7 09:55 ..
drwxr-xr-x+       7 root root 3452 Oct  7 09:57 .git
drwxr-xr-x+       4 root root 3452 Oct  7 09:59 .opencode
-rw-r--r--+       1 root root 1483 Oct  7 09:55 README.md
drwxr-xr-x+       4 root root 3452 Oct  7 09:55 touying-author
drwxr-xr-x+       3 root root 3452 Oct  7 09:55 typst-author

```

**Tool: question**

**Input:**
```json
{
  "questions": [
    {
      "question": "O que você quis dizer com \"modelos menkres\" no planejamento da pesquisa?",
      "header": "Significado de \"menkres\"",
      "options": [
        {
          "label": "Modelos reduzidos/simplificados (Recommended)",
          "description": "Modelos analíticos e de ordem reduzida (equações de aleta 1D, correlações de eficiência) para prever temperatura em luminárias"
        },
        {
          "label": "Modelos numéricos (CFD/FEM)",
          "description": "Simulações numéricas de transferência de calor em aletas e luminárias LED"
        },
        {
          "label": "Modelos experimentais em escala reduzida",
          "description": "Protótipos e bancadas em escala reduzida para validação térmica"
        }
      ]
    },
    {
      "question": "Qual formato de saída você quer para a revisão bibliográfica?",
      "header": "Formato de saída",
      "options": [
        {
          "label": "Arquivo .bib + revisão em Markdown (Recommended)",
          "description": "biblatex pronto (.bib) e um documento de revisão comentada organizado por temas"
        },
        {
          "label": "Somente arquivo .bib",
          "description": "Apenas as referências em formato biblatex"
        },
        {
          "label": ".bib + revisão em Typst",
          "description": "Arquivo .bib e revisão formatada em Typst (repositório typst-skills)"
        }
      ]
    }
  ]
}
```

**Output:**
```
User has answered your questions: "O que você quis dizer com "modelos menkres" no planejamento da pesquisa?"="Modelos numéricos (CFD/FEM)", "Qual formato de saída você quer para a revisão bibliográfica?"=".bib + revisão em Typst". You can now continue with the user's answers in mind.
```

---

## Assistant (Build · MiMo-V2.6-Flash Free · 70.6s)

_Thinking:_

The user wants:
1. Bibliographic review in biblatex format about fins (aletas) in metal pieces for heat transfer, especially in LED luminaire bodies.
2. Plan research steps for numerical models (CFD/FEM) - "modelos menkres" = numerical models (CFD/FEM).
3. Use subagents.
4. Each reference must have a DOI or valid Google Scholar link.
5. Only references in English, Portuguese, or Spanish.
6. Output: .bib + review in Typst (this is a typst-skills repo).

Let me plan:
- Create a todo list.
- Launch subagents (general type) to research references in parallel across themes:
  1. Fundamentals of fin heat transfer (analytical/numerical, classic papers like Kraus, Aziz, Gedik, etc.)
  2. LED luminaire thermal management (LED heat sinks, junction temperature)
  3. CFD/FEM numerical simulation of LED luminaires with fins
  4. Portuguese/Spanish language references
- Each subagent must verify DOI or Google Scholar links via web fetch/search.
- Compile into .bib file with biblatex entries.
- Write a Typst review document that includes the biblatex bibliography.

Wait — Typst doesn't use biblatex format natively; Typst uses hayagriva / its own bibliography format but can read .bib files! Yes, Typst supports reading .bib files (`bibliography("refs.bib")`). So a .bib file works with Typst. 

Let me check the repo structure a bit (typst-author, touying-author) to understand conventions. Let me peek at README.

Plan of research steps (the user asked "planeje os passos da pesquisa para modelos numéricos") — so the review should include a research plan for numerical modeling (CFD/FEM) of LED luminaire fins. The Typst document should contain: introduction, thematic sections of the review, and a research plan for numerical models (steps: geometry, mesh, physics setup, boundary conditions, validation, sensitivity analysis, optimization).

Let me launch subagents. I'll create the todo list first, read README quickly, then launch 4 general subagents in parallel.

Each subagent prompt must be very detailed: return biblatex entries with verified DOI or Google Scholar links, languages en/pt/es, specific fields.

Let me think about what fields: type (@book, @article, @inproceedings, @phdthesis, @online), author, title, journal/booktitle, year, volume, number, pages, publisher, address, doi, url, langid.

Key topics for references:
- Extended surface heat transfer / fins fundamentals: Kraus & Bar-Cohen "Analysis and Design of Thermal Systems" / "Design and Analysis of Heat Sinks"; Aziz "Clean Heat Transfer"; Gedik & Özcan "Exact solutions..." ; Incropera's Heat and Mass Transfer (book, has DOI? not really but link). DOI required or valid Google Scholar link — for books without DOI, provide Google Scholar link or publisher link.
- Fin efficiency analytical: Schmidt efficiency, circular/rectangular fins.
- LED thermal management: "Thermal management of LEDs" reviews — Arik, Petroski, Chao; "Junction temperature" LM-80; papers on LED package thermal resistance.
- LED luminaire heat sinks with CFD: papers on natural convection heat sinks for LED luminaires, aluminum extruded heat sinks, pin-fin arrays, topology optimization.
- Numerical methods: FLUENT/ANSYS/COMSOL simulations of LED luminaires, conjugate heat transfer, natural convection in enclosure.
- Portuguese/Spanish: Brazilian journals (Revista Brasileira de Engenharia Mecânica, Engenharia Térmica / Thermal Engineering), Spanish (Revista Internacional de Métodos Numéricos para Cálculo y Diseño en Ingeniería — RIMNI is in Spanish/English; Revista Facultad de Ingeniería UDEA). There are Portuguese/Spanish papers on aletas / disipadores / luminárias LED.

I'll assign subagents:
1. Agent A: fundamentals of fins/extended surfaces (books + classic analytical papers) with DOIs.
2. Agent B: LED luminaire thermal management (LED heat generation, junction temperature, thermal resistance, reviews).
3. Agent C: CFD/FEM numerical simulation of fins/heat sinks for LED luminaires (specific simulation studies).
4. Agent D: Portuguese and Spanish language references (aletas, dissipadores, luminárias LED, transferência de calor, métodos numéricos).

Each returns biblatex entries with verified DOI/URL. Verification: use webfetch on doi.org links or search. Tell agents to actually check links resolve (webfetch) and report verification status.

Let me also check README for conventions first.

Let me create todos and launch.

**Tool: todowrite**

**Input:**
```json
{
  "todos": [
    {
      "content": "Verificar convênios do repo (README, estrutura Typst)",
      "status": "in_progress",
      "priority": "high"
    },
    {
      "content": "Subagente 1: fundamentos de aletas/extended surfaces (livros + clássicos) com DOI",
      "status": "pending",
      "priority": "high"
    },
    {
      "content": "Subagente 2: gestão térmica de luminárias LED",
      "status": "pending",
      "priority": "high"
    },
    {
      "content": "Subagente 3: simulações CFD/FEM de aletas e heat sinks LED",
      "status": "pending",
      "priority": "high"
    },
    {
      "content": "Subagente 4: referências em português e espanhol",
      "status": "pending",
      "priority": "high"
    },
    {
      "content": "Compilar arquivo .bib (biblatex) com referências verificadas",
      "status": "pending",
      "priority": "high"
    },
    {
      "content": "Escrever revisão em Typst (comentada + plano de pesquisa CFD/FEM)",
      "status": "pending",
      "priority": "high"
    },
    {
      "content": "Compilar/validar Typst e checar links",
      "status": "pending",
      "priority": "medium"
    }
  ]
}
```

**Output:**
```
[
  {
    "content": "Verificar convênios do repo (README, estrutura Typst)",
    "status": "in_progress",
    "priority": "high"
  },
  {
    "content": "Subagente 1: fundamentos de aletas/extended surfaces (livros + clássicos) com DOI",
    "status": "pending",
    "priority": "high"
  },
  {
    "content": "Subagente 2: gestão térmica de luminárias LED",
    "status": "pending",
    "priority": "high"
  },
  {
    "content": "Subagente 3: simulações CFD/FEM de aletas e heat sinks LED",
    "status": "pending",
    "priority": "high"
  },
  {
    "content": "Subagente 4: referências em português e espanhol",
    "status": "pending",
    "priority": "high"
  },
  {
    "content": "Compilar arquivo .bib (biblatex) com referências verificadas",
    "status": "pending",
    "priority": "high"
  },
  {
    "content": "Escrever revisão em Typst (comentada + plano de pesquisa CFD/FEM)",
    "status": "pending",
    "priority": "high"
  },
  {
    "content": "Compilar/validar Typst e checar links",
    "status": "pending",
    "priority": "medium"
  }
]
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/root/git/typst-skills/README.md"
}
```

**Output:**
```
<path>/root/git/typst-skills/README.md</path>
<type>file</type>
<content>
1: # Typst agent skills
2: 
3: This repository contains a collection of agent skills for writing, editing, and debuging [Typst](https://typst.app) documents.
4: 
5: Most models struggle with Typst syntax since it's relatively new compared to LaTeX. These skills solve that by including local copies of documentation, examples, and specialized prompts. Instead of hallucinating syntax or guessing based on outdated training data, the agent is instructed to search through these local resources to find the correct functions and parameters before writing code.
6: 
7: ## Available skills
8: 
9: ### [typst-author](./typst-author/)
10: The general-purpose skill for writing Typst documents. It includes a complete mirror of the official Typst documentation (references, tutorials, and guides).
11: 
12: ### [touying-author](./touying-author/)
13: A specialized skill for creating presentation slides using the [Touying](https://github.com/touying-typ/touying) package. It includes a full local copy of the Touying documentation, along with examples for creating slide decks, animations, and custom themes.
14: 
15: ## Usage
16: 
17: If you are using an agent that supports the [Agent Skills](https://agentskills.io/home) open standard:
18: 
19: 1. Clone this repository.
20: 2. Move or copy the individual skill directories (`typst-author`, `touying-author`) into the `skills/` folder of your agentic coding assistant.
21: 
22: The agent should automatically detect the skills and use them whenever you ask for help with Typst files or Touying presentation slides.

(End of file - total 22 lines)
</content>
```

---

## Assistant (Build · MiMo-V2.6-Flash Free)

_Thinking:_

The repo has typst-author skill. I should load the typst-author skill when writing Typst. But first, launch the subagents for research in parallel.

Let me plan the research. The topic: bibliographic review in biblatex format about fins (aletas) in metal parts for heat transfer, especially in LED luminaire bodies. Plan research steps for numerical models (CFD/FEM). Use subagents. Ensure each reference has a DOI or valid Google Scholar link. Only English, Portuguese, or Spanish references.

Output: .bib + review in Typst.

Launch 4 subagents in parallel (general type since they need web search). Each returns biblatex entries with verified DOI/links.

Let me write detailed prompts for each subagent.

Repo verificado — é um repositório de skills Typst; vou carregar a skill `typst-author` na hora de escrever a revisão. Agora lancei os 4 subagentes de pesquisa em paralelo.

**Tool: task**

**Input:**
```json
{
  "description": "Pesquisar fundamentos de aletas",
  "subagent_type": "general",
  "prompt": "Você é um pesquisador de transferência de calor. Faça APENAS pesquisa na web (websearch/webfetch) — NÃO escreva arquivos no disco.\n\nTema: fundamentos de transferência de calor em superfícies estendidas (aletas/fins) em peças metálicas — teoria clássica, eficiência de aletas, perfis (longitudinais, radiais, pinos), convecção natural e forçada em aletas.\n\nGere de 10 a 14 referências (livros-texto influentes + artigos revisados por pares) SEMPRE em inglês, português ou espanhol. PARÂMETRO OBRIGATÓRIO: cada referência DEVE ter um DOI verificado (testado via https://doi.org/...) OU um link válido do Google Scholar/publisher (testado com webfetch retornando 200). Referências sem link verificado devem ser DESCARTADAS.\n\nPriorize:\n- Livros clássicos: Incropera \"Fundamentals of Heat and Mass Transfer\", Kraus & Bar-Cohen \"Design and Analysis of Heat Sinks\", Gedik/Özcan?, Holman \"Heat Transfer\", Cengel \"Heat and Mass Transfer\", Aziz \"Clean Heat Transfer\"? (verifique DOIs/links reais)\n- Artigos: eficiência de aletas com propriedades dependentes da temperatura, aletas de pino (pin fins) em convecção natural, otimização de aletas, correlações de transferência de calor em arrays de aletas.\n\nPara CADA referência retorne um bloco biblatex completo (@book, @article ou @incollection) com campos: author, title, journal/publisher, year, volume, number, pages, doi OU url, e langid (english/portuguese/spanish). Use chaves citáveis tipo `incropera2007fundamentals`.\n\nFormato de retorno: apenas os blocos biblatex, um após o outro, separados por linha em branco. Ao final, liste em uma linha qual DOI/link foi verificado para cada chave (ex: `incropera2007fundamentals -> OK 10.1002/...`). Se não conseguir verificar um link, descarte a referência e não a reporte."
}
```

**Output:**
```
<task id="ses_eea5a8774ffeV3ifi6DFwOmRoq" state="completed">
<task_result>
```bibtex
@book{bergman2017fundamentals,
  author    = {Bergman, Theodore L. and Lavine, Adrienne S. and Incropera, Frank P. and DeWitt, David P.},
  title     = {Fundamentals of Heat and Mass Transfer},
  edition   = {8},
  publisher = {John Wiley \& Sons},
  address   = {Hoboken, NJ},
  year      = {2017},
  isbn      = {978-1-119-35388-1},
  url       = {https://books.google.com/books?vid=ISBN9781119353881},
  langid    = {english}
}

@book{kraus1995design,
  author    = {Kraus, Allan D. and Bar-Cohen, Avram},
  title     = {Design and Analysis of Heat Sinks},
  publisher = {John Wiley \& Sons},
  address   = {New York},
  year      = {1995},
  isbn      = {0-471-01755-8},
  url       = {https://books.google.com/books?vid=ISBN0471017558},
  langid    = {english}
}

@book{kraus2001extended,
  author    = {Kraus, Allan D. and Aziz, Abdul and Welty, James},
  title     = {Extended Surface Heat Transfer},
  edition   = {1},
  publisher = {John Wiley \& Sons},
  address   = {New York},
  year      = {2001},
  doi       = {10.1002/9780470172582},
  url       = {https://doi.org/10.1002/9780470172582},
  langid    = {english}
}

@book{holman2009heat,
  author    = {Holman, Jack P.},
  title     = {Heat Transfer},
  edition   = {10},
  publisher = {McGraw-Hill Education},
  address   = {New York},
  year      = {2009},
  isbn      = {978-0-07-352936-3},
  url       = {https://books.google.com/books?vid=ISBN9780073529363},
  langid    = {english}
}

@book{cengel2015heat,
  author    = {{\c{C}}engel, Yunus A. and Ghajar, Afshin J.},
  title     = {Heat and Mass Transfer: Fundamentals and Applications},
  edition   = {5},
  publisher = {McGraw-Hill Education},
  address   = {New York},
  year      = {2015},
  isbn      = {0-07-339818-7},
  url       = {https://highered.mheducation.com/sites/0073398187/information_center_view0/table_of_contents.html},
  langid    = {english}
}

@article{barcohen1984thermally,
  author  = {Bar-Cohen, Avram and Rohsenow, Warren M.},
  title   = {Thermally Optimum Spacing of Vertical, Natural Convection Cooled, Parallel Plates},
  journal = {Journal of Heat Transfer},
  year    = {1984},
  volume  = {106},
  number  = {1},
  pages   = {116--123},
  doi     = {10.1115/1.3246622},
  url     = {https://doi.org/10.1115/1.3246622},
  langid  = {english}
}

@article{barcohen2003design,
  author  = {Bar-Cohen, Avram and Iyengar, Madhusudan and Kraus, Allan D.},
  title   = {Design of Optimum Plate-Fin Natural Convective Heat Sinks},
  journal = {Journal of Electronic Packaging},
  year    = {2003},
  volume  = {125},
  number  = {2},
  pages   = {208--216},
  doi     = {10.1115/1.1568361},
  url     = {https://doi.org/10.1115/1.1568361},
  langid  = {english}
}

@article{khan2006role,
  author  = {Khan, Waleed A. and Culham, J. Roger and Yovanovich, M. Michael},
  title   = {The Role of Fin Geometry in Heat Sink Performance},
  journal = {Journal of Electronic Packaging},
  year    = {2006},
  volume  = {128},
  number  = {4},
  pages   = {324--330},
  doi     = {10.1115/1.2351896},
  url     = {https://doi.org/10.1115/1.2351896},
  langid  = {english}
}

@article{kou2003thermal,
  author  = {Kou, Hsu-Sheng and Lee, Jeng-Jeng and Lai, Chih-Yung},
  title   = {Thermal Analysis and Optimum Fin Length of a Heat Sink},
  journal = {Heat Transfer Engineering},
  year    = {2003},
  volume  = {24},
  number  = {2},
  pages   = {18--29},
  doi     = {10.1080/01457630304083},
  url     = {https://doi.org/10.1080/01457630304083},
  langid  = {english}
}

@article{razelos2003critical,
  author  = {Razelos, Panagiotis},
  title   = {A Critical Review of Extended Surface Heat Transfer},
  journal = {Heat Transfer Engineering},
  year    = {2003},
  volume  = {24},
  number  = {6},
  pages   = {11--28},
  doi     = {10.1080/714044411},
  url     = {https://doi.org/10.1080/714044411},
  langid  = {english}
}

@article{khani2009analytical,
  author  = {Khani, F. and Ahmadzadeh Raji, M. and Hamedi Nejad, H.},
  title   = {Analytical Solutions and Efficiency of the Nonlinear Fin Problem with Temperature-Dependent Thermal Conductivity and Heat Transfer Coefficient},
  journal = {Communications in Nonlinear Science and Numerical Simulation},
  year    = {2009},
  volume  = {14},
  number  = {8},
  pages   = {3327--3338},
  doi     = {10.1016/j.cnsns.2009.01.012},
  url     = {https://doi.org/10.1016/j.cnsns.2009.01.012},
  langid  = {english}
}

@article{sparrow1986orientation,
  author  = {Sparrow, Ephraim M. and Vemuri, Sudhakar B.},
  title   = {Orientation Effects on Natural Convection/Radiation Heat Transfer from Pin-Fin Arrays},
  journal = {International Journal of Heat and Mass Transfer},
  year    = {1986},
  volume  = {29},
  number  = {3},
  pages   = {359--368},
  doi     = {10.1016/0017-9310(86)90206-1},
  url     = {https://doi.org/10.1016/0017-9310(86)90206-1},
  langid  = {english}
}

@article{sertkaya2021effects,
  author  = {Sertkaya, Ahmet Ali and Ozdemir, Mukaddes and Canli, Ey{\"u}b},
  title   = {Effects of Pin Fin Height, Spacing and Orientation to Natural Convection Heat Transfer for Inline Pin Fin and Plate Heat Sinks by Experimental Investigation},
  journal = {International Journal of Heat and Mass Transfer},
  year    = {2021},
  volume  = {177},
  pages   = {121527},
  doi     = {10.1016/j.ijheatmasstransfer.2021.121527},
  url     = {https://doi.org/10.1016/j.ijheatmasstransfer.2021.121527},
  langid  = {english}
}

@article{armstrong1988review,
  author  = {Armstrong, James and Winstanley, Douglas},
  title   = {A Review of Staggered Array Pin Fin Heat Transfer for Turbine Cooling Applications},
  journal = {Journal of Turbomachinery},
  year    = {1988},
  volume  = {110},
  number  = {1},
  pages   = {94--103},
  doi     = {10.1115/1.3262173},
  url     = {https://doi.org/10.1115/1.3262173},
  langid  = {english}
}
```

Verificações (webfetch 200):
`bergman2017fundamentals -> OK https://books.google.com/books?vid=ISBN9781119353881`
`kraus1995design -> OK https://books.google.com/books?vid=ISBN0471017558`
`kraus2001extended -> OK 10.1002/9780470172582`
`holman2009heat -> OK https://books.google.com/books?vid=ISBN9780073529363`
`cengel2015heat -> OK https://highered.mheducation.com/sites/0073398187/information_center_view0/table_of_contents.html`
`barcohen1984thermally -> OK 10.1115/1.3246622`
`barcohen2003design -> OK 10.1115/1.1568361`
`khan2006role -> OK 10.1115/1.2351896`
`kou2003thermal -> OK 10.1080/01457630304083`
`razelos2003critical -> OK 10.1080/714044411`
`khani2009analytical -> OK 10.1016/j.cnsns.2009.01.012`
`sparrow1986orientation -> OK 10.1016/0017-9310(86)90206-1`
`sertkaya2021effects -> OK 10.1016/j.ijheatmasstransfer.2021.121527`
`armstrong1988review -> OK 10.1115/1.3262173`
</task_result>
</task>
```

**Tool: task**

**Input:**
```json
{
  "description": "Pesquisar térmica de luminárias LED",
  "subagent_type": "general",
  "prompt": "Você é um pesquisador em optoeletrônica/thermal management. Faça APENAS pesquisa na web (websearch/webfetch) — NÃO escreva arquivos no disco.\n\nTema: transferência de calor em luminárias LED — temperatura de junção (Tj), thermal resistance, dissipação em heat sinks metálicos (alumínio) integrados ao corpo da luminária, confiabilidade/vida útil relacionada à temperatura, normas LM-80/TM-21.\n\nGere de 12 a 16 referências (artigos revisados por pares e revisões) SEMPRE em inglês, português ou espanhol. PARÂMETRO OBRIGATÓRIO: cada referência DEVE ter um DOI verificado (testado via https://doi.org/...) OU link válido (IEEE Xplore, ScienceDirect, MDPI, publisher) testado com webfetch retornando 200. Sem link verificado = descartar.\n\nPriorize:\n- Revisões de thermal management de LEDs (ex: \"thermal management of high power LED\" reviews)\n- Artigos sobre junction temperature e efeito na eficiência/vida útil\n- Artigos sobre heat sinks de alumínio para luminárias LED (extrudados, cast, pin-fin)\n- Artigos em português/espanhol de revistas indexadas sobre iluminação LED térmica (se encontrar)\n\nPara CADA referência retorne bloco biblatex completo (@article, @review?) com: author, title, journal, year, volume, number, pages, doi OU url, langid (english/portuguese/spanish). Chaves citáveis tipo `wang2019thermal`.\n\nFormato: apenas blocos biblatex seguidos; ao final, uma linha por chave indicando o link verificado (ex: `wang2019thermal -> OK https://doi.org/10.xxxx/xxxxx`). Referências sem link verificado não devem ser reportadas."
}
```

**Output:**
```
<task id="ses_eea5a6a7effecymz4yqLphW1zI" state="completed">
<task_result>
@article{li2024thermal,
  author  = {Li, Zongtao and Tan, Jing and Li, Jiasheng and Ding, Xinrui and Tang, Yong},
  title   = {A review on thermal management of light-emitting diodes: From package-level to system-level},
  journal = {Applied Thermal Engineering},
  year    = {2024},
  volume  = {257},
  pages   = {124145},
  doi     = {10.1016/j.applthermaleng.2024.124145},
  langid  = {english}
}

@article{hamidnia2018application,
  author  = {Hamidnia, Mohammad and Luo, Yi and Wang, X. D.},
  title   = {Application of micro/nano technology for thermal management of high power {LED} packaging -- {A} review},
  journal = {Applied Thermal Engineering},
  year    = {2018},
  volume  = {145},
  pages   = {637--651},
  doi     = {10.1016/j.applthermaleng.2018.09.078},
  langid  = {english}
}

@article{liu2022development,
  author  = {Liu, Peisheng and She, Chenhui and Tan, Lipeng and Xu, Pengpeng and Yan, Lei},
  title   = {Development of {LED} package heat dissipation research},
  journal = {Micromachines},
  year    = {2022},
  volume  = {13},
  number  = {2},
  pages   = {229},
  doi     = {10.3390/mi13020229},
  langid  = {english}
}

@article{cengiz2022critical,
  author  = {Cengiz, C. and Azarifar, M. and Arik, M.},
  title   = {A critical review on the junction temperature measurement of light emitting diodes},
  journal = {Micromachines},
  year    = {2022},
  volume  = {13},
  number  = {10},
  pages   = {1615},
  doi     = {10.3390/mi13101615},
  langid  = {english}
}

@article{meneghini2020thermal,
  author  = {Meneghini, Matteo and De Santi, Carlo and Tibaldi, Antonio and Vallone, Matteo and Bertazzi, Federico and Meneghesso, Gaudenzio and Zanoni, Edoardo and Goano, Michele},
  title   = {Thermal droop in {III}-nitride based light-emitting diodes: Physical origin and perspectives},
  journal = {Journal of Applied Physics},
  year    = {2020},
  volume  = {127},
  number  = {21},
  pages   = {211102},
  doi     = {10.1063/5.0005874},
  langid  = {english}
}

@article{yurtseven2014thermal,
  author  = {Yurtseven, M. B. and Onaygil, S. and Ogus, G.},
  title   = {Thermal simulation and validation of {LED}-based luminaires using two-resistor compact thermal model},
  journal = {Lighting Research \& Technology},
  year    = {2014},
  volume  = {46},
  number  = {5},
  pages   = {576--586},
  doi     = {10.1177/1477153513495689},
  langid  = {english}
}

@article{baran2019thermal,
  author  = {Baran, Krzysztof and R{\'o}{\.z}owicz, Antoni and Wachta, Henryk and R{\'o}{\.z}owicz, Sebastian and Mazur, Damian},
  title   = {Thermal analysis of the factors influencing junction temperature of {LED} panel sources},
  journal = {Energies},
  year    = {2019},
  volume  = {12},
  number  = {20},
  pages   = {3941},
  doi     = {10.3390/en12203941},
  langid  = {english}
}

@article{padmasali2020generalised,
  author  = {Padmasali, A. N. and Kini, S. G.},
  title   = {A generalised approach for the estimation of junction temperature and its effect on light output},
  journal = {Lighting Research \& Technology},
  year    = {2020},
  volume  = {52},
  number  = {2},
  pages   = {274--291},
  doi     = {10.1177/1477153519846210},
  langid  = {english}
}

@article{union2022impact,
  author  = {Uni{\'o}n-S{\'a}nchez, J. D. D. and Hermoso-Orz{\'a}ez, M. J. and Herv{\'a}s-Pulido, M. J. and Og{\'a}yar-Fern{\'a}ndez, B.},
  title   = {Impact of thermal dissipation on the lighting performance and useful life of {LED} luminaires applied to urban lighting: {A} case study},
  journal = {International Journal of Environmental Research and Public Health},
  year    = {2022},
  volume  = {19},
  number  = {2},
  pages   = {752},
  doi     = {10.3390/ijerph19020752},
  langid  = {english}
}

@article{yu2011optimum,
  author  = {Yu, Seung-Hwan and Lee, Kwan-Soo and Yook, Se-Jin},
  title   = {Optimum design of a radial heat sink under natural convection},
  journal = {International Journal of Heat and Mass Transfer},
  year    = {2011},
  volume  = {54},
  number  = {11--12},
  pages   = {2499--2505},
  doi     = {10.1016/j.ijheatmasstransfer.2011.02.012},
  langid  = {english}
}

@article{costa2014improved,
  author  = {Costa, V{\'i}tor A. F. and Lopes, Ant{\'o}nio M. G.},
  title   = {Improved radial heat sink for {LED} lamp cooling},
  journal = {Applied Thermal Engineering},
  year    = {2014},
  volume  = {70},
  number  = {1},
  pages   = {131--138},
  doi     = {10.1016/j.applthermaleng.2014.04.068},
  langid  = {english}
}

@article{tucker2021experimental,
  author  = {Tucker, Robert and Khatamifar, Mehdi and Lin, Wenxian and McDonald, Kyle},
  title   = {Experimental investigation of orientation and geometry effect on additive manufactured aluminium {LED} heat sinks under natural convection},
  journal = {Thermal Science and Engineering Progress},
  year    = {2021},
  volume  = {23},
  pages   = {100918},
  doi     = {10.1016/j.tsep.2021.100918},
  langid  = {english}
}

@article{qian2016accelerated,
  author  = {Qian, C. and Fan, X. J. and Fan, J. J. and Yuan, C. A. and Zhang, G. Q.},
  title   = {An accelerated test method of luminous flux depreciation for {LED} luminaires and lamps},
  journal = {Reliability Engineering \& System Safety},
  year    = {2016},
  volume  = {147},
  pages   = {84--92},
  doi     = {10.1016/j.ress.2015.11.009},
  langid  = {english}
}

@article{vandriel2016lumen,
  author  = {van Driel, W. D. and Schuld, M. and Jacobs, B. and Commissaris, F. and van der Eyden, J. and Hamon, B.},
  title   = {Lumen maintenance predictions for {LED} packages},
  journal = {Microelectronics Reliability},
  year    = {2016},
  volume  = {62},
  pages   = {39--44},
  doi     = {10.1016/j.microrel.2016.03.018},
  langid  = {english}
}

@article{bender2013metodologia,
  author  = {Bender, Vitor C. and Iaronka, Odirlan and Vizzotto, William D. and Dalla Costa, Marco A. and do Prado, Ricardo N. and Marchesan, Tiago B.},
  title   = {Metodologia de Projeto Eletrot{\'e}rmico de {LEDs} Aplicada ao Desenvolvimento de Sistemas de Ilumina{ç}{\~a}o},
  journal = {Eletr{\^o}nica de Pot{\^e}ncia},
  year    = {2013},
  volume  = {18},
  number  = {2},
  pages   = {991--1000},
  doi     = {10.18618/REP.2013.2.9911000},
  langid  = {portuguese}
}

@article{cahue2017diseno,
  author  = {Cahue D{\'i}az, Daniel and Camacho Arriaga, Juan Crist{\'o}bal},
  title   = {Dise{\~n}o {\'o}ptimo de un disipador de calor para luminaria {LED} mediante modelaci{\'o}n computacional},
  journal = {ReCIBE: Revista Electr{\'o}nica de Computaci{\'o}n, Inform{\'a}tica, Biom{\'e}dica y Electr{\'o}nica},
  year    = {2017},
  volume  = {3},
  number  = {1},
  pages   = {VII},
  url     = {https://recibe.cucei.udg.mx/index.php/ReCIBE/article/view/27},
  langid  = {spanish}
}

li2024thermal -> OK https://doi.org/10.1016/j.applthermaleng.2024.124145
hamidnia2018application -> OK https://doi.org/10.1016/j.applthermaleng.2018.09.078
liu2022development -> OK https://doi.org/10.3390/mi13020229
cengiz2022critical -> OK https://doi.org/10.3390/mi13101615
meneghini2020thermal -> OK https://doi.org/10.1063/5.0005874
yurtseven2014thermal -> OK https://doi.org/10.1177/1477153513495689
baran2019thermal -> OK https://doi.org/10.3390/en12203941
padmasali2020generalised -> OK https://doi.org/10.1177/1477153519846210
union2022impact -> OK https://doi.org/10.3390/ijerph19020752
yu2011optimum -> OK https://doi.org/10.1016/j.ijheatmasstransfer.2011.02.012
costa2014improved -> OK https://doi.org/10.1016/j.applthermaleng.2014.04.068
tucker2021experimental -> OK https://doi.org/10.1016/j.tsep.2021.100918
qian2016accelerated -> OK https://doi.org/10.1016/j.ress.2015.11.009
vandriel2016lumen -> OK https://doi.org/10.1016/j.microrel.2016.03.018
bender2013metodologia -> OK https://doi.org/10.18618/REP.2013.2.9911000
cahue2017diseno -> OK (publisher page, DOI não registrado no doi.org) https://recibe.cucei.udg.mx/index.php/ReCIBE/article/view/27
</task_result>
</task>
```

**Tool: task**

**Input:**
```json
{
  "description": "Pesquisar simulações CFD/FEM de aletas",
  "subagent_type": "general",
  "prompt": "Você é um pesquisador em métodos numéricos de transferência de calor (CFD/FEM). Faça APENAS pesquisa na web (websearch/webfetch) — NÃO escreva arquivos no disco.\n\nTema: MODELAGEM NUMÉRICA (CFD e FEM) de aletas/heat sinks para transferência de calor — simulações de convecção natural em aletas, arrays de pin fins, otimização topológica de heat sinks, modelos numéricos de luminárias LED (Fluent, COMSOL, ANSYS), validação experimental de simulações térmicas.\n\nGere de 12 a 16 referências (artigos revisados por pares) SEMPRE em inglês, português ou espanhol. PARÂMETRO OBRIGATÓRIO: cada referência DEVE ter DOI verificado (testado via https://doi.org/...) OU link válido testado com webfetch retornando 200. Sem link verificado = descartar.\n\nPriorize:\n- CFD de pin-fin heat sinks em convecção natural\n- Topology optimization / otimização de heat sinks com FEM\n- Simulação CFD de luminárias LED (junction temperature prediction)\n- Benchmarks de transferência de calor conjugada (conjugate heat transfer) em aletas\n- Artigos metodológicos sobre malha/turbulência/validação numérica em convecção natural de aletas\n- Artigos em português/espanhol sobre métodos numéricos em transferência de calor (ex: Revista Internacional de Métodos Numéricos para Cálculo y Diseño en Ingeniería — RIMNI)\n\nPara CADA referência retorne bloco biblatex completo (@article ou @inproceedings) com: author, title, journal/booktitle, year, volume, number, pages, doi OU url, langid. Chaves citáveis tipo `zhang2020cfd`.\n\nFormato: apenas blocos biblatex seguidos; ao final, uma linha por chave com o link verificado. Referências sem link verificado não devem ser reportadas."
}
```

**Output:**
```
<task id="ses_eea5a5719ffe3yQ6FTJvzOrdiT" state="completed">
<task_result>
```bibtex
@article{oha2019slanted,
  author  = {Oha, Yeong Woong and Choi, Yoon Suk and Ha, Man Yeong and Min, June Kee},
  title   = {A numerical study on the buoyancy effect around slanted-pin fins mounted on a vertical plate ({Part-I}: Laminar natural convection)},
  journal = {International Journal of Heat and Mass Transfer},
  year    = {2019},
  volume  = {132},
  pages   = {731--744},
  doi     = {10.1016/j.ijheatmasstransfer.2018.12.037},
  langid  = {english}
}

@article{saha2019fully,
  author  = {Saha, Arun K. and Chanda, Sourayon},
  title   = {Fully-developed natural convection in a periodic array of pin-fins},
  journal = {International Journal of Thermal Sciences},
  year    = {2019},
  volume  = {137},
  pages   = {325--336},
  doi     = {10.1016/j.ijthermalsci.2018.11.020},
  langid  = {english}
}

@article{alexa2014topology,
  author  = {Alexandersen, Jesper and Aage, Niels and Andreasen, Christian S. and Sigmund, Ole},
  title   = {Topology optimisation for natural convection problems},
  journal = {International Journal for Numerical Methods in Fluids},
  year    = {2014},
  volume  = {76},
  number  = {10},
  pages   = {699--721},
  doi     = {10.1002/fld.3954},
  langid  = {english}
}

@article{koga2013development,
  author  = {Koga, Adriano A. and Lopes, Edson Comini C. and Villa Nova, H{\'e}lcio F. and de Lima, C{\'i}cero R. and Silva, Em{\'i}lio Carlos N.},
  title   = {Development of heat sink device by using topology optimization},
  journal = {International Journal of Heat and Mass Transfer},
  year    = {2013},
  volume  = {64},
  pages   = {759--772},
  doi     = {10.1016/j.ijheatmasstransfer.2013.05.007},
  langid  = {english}
}

@article{joo2017topology,
  author  = {Joo, Younghwan and Lee, Ikjin and Kim, Sung Jin},
  title   = {Topology optimization of heat sinks in natural convection considering the effect of shape-dependent heat transfer coefficient},
  journal = {International Journal of Heat and Mass Transfer},
  year    = {2017},
  volume  = {109},
  pages   = {123--133},
  doi     = {10.1016/j.ijheatmasstransfer.2017.01.099},
  langid  = {english}
}

@article{saglietti2018topology,
  author  = {Saglietti, Clio and Schlatter, Philipp and Wadbro, Eddie and Berggren, Martin and Henningson, Dan S.},
  title   = {Topology optimization of heat sinks in a square differentially heated cavity},
  journal = {International Journal of Heat and Fluid Flow},
  year    = {2018},
  volume  = {74},
  pages   = {36--52},
  doi     = {10.1016/j.ijheatfluidflow.2018.08.004},
  langid  = {english}
}

@article{noel2023xfem,
  author  = {No{\"e}l, Ludovic and Maute, Klaus},
  title   = {{XFEM} level set-based topology optimization for turbulent conjugate heat transfer problems},
  journal = {Structural and Multidisciplinary Optimization},
  year    = {2023},
  volume  = {66},
  number  = {1},
  pages   = {2},
  doi     = {10.1007/s00158-022-03353-3},
  langid  = {english}
}

@article{meliga2024multi,
  author  = {Meliga, Pierpaolo and Abdel Nour, Wissam and Laboureur, Damien and Serret, Dorian and Hachem, Emad},
  title   = {Multi-Objective Topology Optimization of Conjugate Heat Transfer Using Level Sets and Anisotropic Mesh Adaptation},
  journal = {Fluids},
  year    = {2024},
  volume  = {9},
  number  = {5},
  pages   = {105},
  doi     = {10.3390/fluids9050105},
  langid  = {english}
}

@article{renze2019simulation,
  author  = {Renze, Patrick and Akermann, Kolja},
  title   = {Simulation of Conjugate Heat Transfer in Thermal Processes with Open Source {CFD}},
  journal = {ChemEngineering},
  year    = {2019},
  volume  = {3},
  number  = {2},
  pages   = {59},
  doi     = {10.3390/chemengineering3020059},
  langid  = {english}
}

@article{choi2012turbulence,
  author  = {Choi, Seok-Ki and Kim, Seong-O},
  title   = {Turbulence modeling of natural convection in enclosures: {A} review},
  journal = {Journal of Mechanical Science and Technology},
  year    = {2012},
  volume  = {26},
  number  = {1},
  pages   = {283--297},
  doi     = {10.1007/s12206-011-1037-0},
  langid  = {english}
}

@article{hsu2017numerical,
  author  = {Hsu, Huan-Chu and Huang, Yi-Cheng},
  title   = {Numerical Simulation and Experimental Validation for the Thermal Analysis of a Compact {LED} Recessed Downlight with Heat Sink Design},
  journal = {Applied Sciences},
  year    = {2017},
  volume  = {7},
  number  = {1},
  pages   = {4},
  doi     = {10.3390/app7010004},
  langid  = {english}
}

@article{baran2019thermal,
  author  = {Baran, Krzysztof and R{\'o}{\.z}owicz, Antoni and Wachta, Henryk and R{\'o}{\.z}owicz, Sebastian and Mazur, Damian},
  title   = {Thermal Analysis of the Factors Influencing Junction Temperature of {LED} Panel Sources},
  journal = {Energies},
  year    = {2019},
  volume  = {12},
  number  = {20},
  pages   = {3941},
  doi     = {10.3390/en12203941},
  langid  = {english}
}

@article{rozowicz2022arrangement,
  author  = {R{\'o}{\.z}owicz, Antoni and Wachta, Henryk and Baran, Krzysztof and Le{\'s}ko, Marcin and R{\'o}{\.z}owicz, Sebastian},
  title   = {Arrangement of {LEDs} and Their Impact on Thermal Operating Conditions in High-Power Luminaires},
  journal = {Energies},
  year    = {2022},
  volume  = {15},
  number  = {21},
  pages   = {8142},
  doi     = {10.3390/en15218142},
  langid  = {english}
}

@article{hernandez2015simulacion,
  author  = {Hern{\'a}ndez-Guti{\'e}rrez, Isabel Virginia and Barbosa-Salda{\~n}a, Juan Gabriel and Guti{\'e}rrez-Torres, Claudia del Carmen and Jim{\'e}nez-Bernal, Jos{\'e} Alfredo and Moreno-Pacheco, Luis Alfonso},
  title   = {Simulaci{\'o}n num{\'e}rica de la convecci{\'o}n mixta en un canal vertical aletado},
  journal = {Ingenier{\'i}a, Investigaci{\'o}n y Tecnolog{\'i}a},
  year    = {2015},
  volume  = {16},
  number  = {2},
  pages   = {157--172},
  doi     = {10.1016/j.riit.2015.03.001},
  langid  = {spanish}
}

@article{cordoba2016modelado,
  author  = {{C{\'o}rdoba Tuta}, E. J. and {Fuentes D{\'i}az}, D. A.},
  title   = {Modelado y simulaci{\'o}n del flujo de intercambiadores de calor de tubos y aletas con cambio de fase en el refrigerante},
  journal = {Revista Internacional de M{\'e}todos Num{\'e}ricos para C{\'a}lculo y Dise{\~n}o en Ingenier{\'i}a},
  year    = {2016},
  volume  = {32},
  number  = {1},
  pages   = {31--38},
  doi     = {10.1016/j.rimni.2014.11.002},
  langid  = {spanish}
}

@article{antoninialves2016aplicacao,
  author  = {Antonini Alves, T. and Ramos, R. A. V. and Maia, C. R. M.},
  title   = {Aplica{\c c}{\~a}o da transformada integral generalizada e da transforma{\c c}{\~a}o conforme na solu{\c c}{\~a}o de um problema de conve{\c c}{\~a}o for{\c c}ada laminar em dutos de setor de anel circular},
  journal = {Revista Internacional de M{\'e}todos Num{\'e}ricos para C{\'a}lculo y Dise{\~n}o en Ingenier{\'i}a},
  year    = {2016},
  volume  = {32},
  number  = {4},
  pages   = {261--269},
  doi     = {10.1016/j.rimni.2015.09.001},
  langid  = {portuguese}
}
```

Links verificados (doi.org retornou metadados/200):
- oha2019slanted — https://doi.org/10.1016/j.ijheatmasstransfer.2018.12.037
- saha2019fully — https://doi.org/10.1016/j.ijthermalsci.2018.11.020
- alexa2014topology — https://doi.org/10.1002/fld.3954
- koga2013development — https://doi.org/10.1016/j.ijheatmasstransfer.2013.05.007
- joo2017topology — https://doi.org/10.1016/j.ijheatmasstransfer.2017.01.099
- saglietti2018topology — https://doi.org/10.1016/j.ijheatfluidflow.2018.08.004
- noel2023xfem — https://doi.org/10.1007/s00158-022-03353-3
- meliga2024multi — https://doi.org/10.3390/fluids9050105
- renze2019simulation — https://doi.org/10.3390/chemengineering3020059
- choi2012turbulence — https://doi.org/10.1007/s12206-011-1037-0
- hsu2017numerical — https://doi.org/10.3390/app7010004
- baran2019thermal — https://doi.org/10.3390/en12203941
- rozowicz2022arrangement — https://doi.org/10.3390/en15218142
- hernandez2015simulacion — https://doi.org/10.1016/j.riit.2015.03.001
- cordoba2016modelado — https://doi.org/10.1016/j.rimni.2014.11.002
- antoninialves2016aplicacao — https://doi.org/10.1016/j.rimni.2015.09.001
</task_result>
</task>
```

**Tool: task**

**Input:**
```json
{
  "description": "Pesquisar refs em PT/ES sobre aletas LED",
  "subagent_type": "general",
  "prompt": "Você é um pesquisador buscando literatura latino-americana. Faça APENAS pesquisa na web (websearch/webfetch) — NÃO escreva arquivos no disco.\n\nTema EXCLUSIVO: referências em PORTUGUÊS ou ESPANHOL sobre: aletas/dissipadores/fins para transferência de calor, luminárias LED (iluminação LED, disipación de calor en luminarias), convecção natural, gestão térmica, simulação numérica (CFD/FEM) de transferência de calor. NÃO inclua referências em inglês.\n\nGere de 8 a 12 referências. Fontes sugeridas para buscar: SciELO, Revista Brasileira de Engenharia Mecânica (RBE), Revista Internacional de Métodos Numéricos para Cálculo y Diseño en Ingeniería (RIMNI), Revista Facultad de Ingeniería (UdeA, Colômbia), Ingeniería Investigación (UNAM, México), Dyna (Colômbia), Revista de Engenharia Térmica/Thermal Engineering, périódicos brasileiros de engenharia mecânica e engenharia elétrica, proceedings do ICBEM/ENCIT/COBEM, teses do CAPES/Repositórios Institucionais (se fortes o suficiente, preferir artigos revisados).\n\nPARÂMETRO OBRIGATÓRIO: cada referência DEVE ter DOI verificado (testado via https://doi.org/...) OU link válido (SciELO, ResearchGate com acesso, periódico, Google Scholar) testado com webfetch retornando 200. Sem link verificado = descartar.\n\nPara CADA referência retorne bloco biblatex completo (@article, @inproceedings, @phdthesis) com: author, title, journal/booktitle, year, volume, number, pages, doi OU url, langid (portuguese/spanish). Chaves citáveis tipo `silva2018aletas`.\n\nFormato: apenas blocos biblatex seguidos; ao final, uma linha por chave com o link verificado. Referências sem link verificado não devem ser reportadas."
}
```

---

