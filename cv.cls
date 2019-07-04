% Author:
% Marc Planelles (marc@planelles.dev)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2019/06/28 CV class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass{extarticle}

\setlength{\parindent}{0mm}

\usepackage[hidelinks]{hyperref}
\usepackage{xcolor}
\usepackage{graphicx}

\pagestyle{empty} % No headers or footers

% FONT %

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[default]{raleway}
\usepackage{moresize}
\usepackage{fontawesome}
\usepackage{setspace}

% LAYOUT %

\usepackage{geometry}

\geometry{
  paper=a4paper,
  top=1.75cm,
  bottom=1.75cm,
  left=2cm,
  right=2cm,
  headheight=0.75cm,
  footskip=1cm,
  % showframe,
}

\usepackage{enumitem}
\setlist{nosep}

\usepackage{longtable}
\setlength{\LTpre}{0pt}
\setlength{\LTpost}{0pt}

\setlength{\tabcolsep}{0pt}

\newenvironment{entrylist}{
  \begin{longtable}[H]{l l}}
    {\end{longtable}
}

% CUSTOM COMMANDS %
\usepackage{tikz}
\usepackage{etoolbox}

\newcommand{\icon}[3]{
  \vcenteredhbox{{\makebox(#2, #2){\large\csname #1\endcsname}}}
  \vcenteredhbox{#3}
}

\newcommand{\vcenteredhbox}[1]{%
  \begingroup%
    \setbox0=\hbox{#1}\parbox{\wd0}{\box0}%
  \endgroup%
}

\newcommand{\cvsection}[1]{%
  \vspace{\baselineskip}%
  \hrulefill[0.8ex]{2pt}\hspace{0.5ex}{\Large\bfseries\colorbox{black}{\textcolor{white}{#1}}}\hspace{0.5ex}\hrulefill[0.8ex]{2pt}\\[1ex]
}

\newcommand{\entry}[4]{
  \parbox[t]{0.19\textwidth}{#1}
  &\parbox[t]{0.81\textwidth}{\textbf{#2} \hfill {\footnotesize \textbf{\textcolor{black}{#3}}}\\ #4}\\\\}

\newcommand{\smallentry}[3]{
  \parbox[t]{0.19\textwidth}{#1}
  &\parbox[t]{0.81\textwidth}{\textbf{#2} \hfill {\footnotesize \textbf{\textcolor{black}{#3}}}\\}\\}

\renewcommand*{\hrulefill}[2][0pt]{\leavevmode \leaders \hbox to 1pt{\rule[#1]{2pt}{#2}} \hfill \kern 0pt}
