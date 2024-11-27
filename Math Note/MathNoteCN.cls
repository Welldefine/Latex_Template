\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MathNote}[2024/11/27 Maths Notes Template]
\LoadClass{ctexart} % 基于 crexart 文档类

% 加载必要的宏包
\RequirePackage{tcolorbox, varwidth}
\RequirePackage{amsthm}

% 加载 tcolorbox 的额外库
\tcbuselibrary{breakable}
\tcbuselibrary{theorems}
\tcbuselibrary{skins}

% 定义颜色
\definecolor{TheoremColor}{RGB}{34,139,34} 
\definecolor{DefColor}{RGB}{45, 52, 151}
\definecolor{CorollaryColor}{RGB}{158, 80, 143} 
\definecolor{ExampleColor}{RGB}{226,135,67} 
\definecolor{ProofColor}{RGB}{34,139,34} 

% 定义标题样式
\newtcbtheorem[number within = section]{theorem}{定理}%
{enhanced,frame empty,interior empty,colframe=TheoremColor!50!white,
	coltitle=TheoremColor!50!black,fonttitle=\bfseries,colbacktitle=TheoremColor!15!white,
	borderline={0.5mm}{0mm}{TheoremColor!15!white},
	borderline={0.5mm}{0mm}{TheoremColor!50!white,dashed},
	attach boxed title to top left={yshift=-2mm,xshift=2mm},
	boxed title style={boxrule=0.4pt},varwidth boxed title}{theo}

\newtcbtheorem[number within = section]{definition}{定义}%
{enhanced,frame empty,interior empty,colframe=DefColor!50!white,
	coltitle=DefColor!50!black,fonttitle=\bfseries,colbacktitle=DefColor!15!white,
	borderline={0.5mm}{0mm}{DefColor!15!white},
	borderline={0.5mm}{0mm}{DefColor!50!white,dashed},
	attach boxed title to top left={yshift=-2mm,xshift=2mm},
	boxed title style={boxrule=0.4pt,colframe=DefColor!50!white,
     colback=DefColor!15!white, left=0mm, right=0mm, top=0mm, bottom=0mm}
     ,varwidth boxed title}{defo}

\newtcbtheorem[number within = section]{corollary}{推论}%
{enhanced,frame empty,interior empty,colframe=CorollaryColor!50!white,
	coltitle=CorollaryColor!50!black,fonttitle=\bfseries,colbacktitle=CorollaryColor!15!white,
	borderline={0.5mm}{0mm}{CorollaryColor!15!white},
	borderline={0.5mm}{0mm}{CorollaryColor!50!white,dashed},
	attach boxed title to top left={yshift=-2mm,xshift=2mm},
	boxed title style={boxrule=0.4pt},varwidth boxed title}{defo}

\newtcbtheorem[number within = section]{example}{例题}%
{enhanced,frame empty,interior empty,colframe=ExampleColor!50!white,
	coltitle=ExampleColor!50!black,fonttitle=\bfseries,colbacktitle=ExampleColor!15!white,
	borderline={0.5mm}{0mm}{ExampleColor!15!white},
	borderline={0.5mm}{0mm}{ExampleColor!50!white,dashed},
	attach boxed title to top left={yshift=-2mm,xshift=2mm},
	boxed title style={boxrule=0.4pt},varwidth boxed title}{defo}

\tcolorboxenvironment{proof}{%
	blanker,breakable,left=5mm,
	before skip=10pt,after skip=10pt,
	borderline west={1mm}{0pt}{ProofColor!50!white}}

% 添加背景
\usepackage{background}
\backgroundsetup{scale=0.6, angle=0, opacity = 1,contents = {\includegraphics[width=\paperwidth, height=\paperwidth, keepaspectratio]{logo-RUC.png}}}