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

\pagestyle{empty} % No headers or footers

% FONT %

\usepackage[default]{carlito}
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

\usepackage{longtable}
\setlength{\LTpre}{0pt} % Remove default whitespace before longtable
\setlength{\LTpost}{0pt} % Remove default whitespace after longtable

\setlength{\tabcolsep}{0pt} % No spacing between table columns

% Environment to hold a new list of entries
\newenvironment{entrylist}{
  \begin{longtable}[H]{l l}}
    {\end{longtable}
}


% CUSTOM COMMANDS %
\newcommand{\icon}[3]{
  \vcenteredhbox{{\makebox(#2, #2){\large\csname #1\endcsname}}}
    \hspace{0.1cm}
  \vcenteredhbox{#3}
}

\newcommand{\vcenteredhbox}[1]{
  \begingroup
    \setbox0=\hbox{#1}\parbox{\wd0}{\box0}
  \endgroup
}

\newcommand{\cvsection}[1]{
  \vspace{\baselineskip}
  {\LARGE\bfseries\colorbox{black}{\textcolor{white}{#1}}}\\[-1.6ex]
  {\rule{\linewidth}{2pt}\par}\medskip
}
\newcommand{\entry}[4]{
  \parbox[t]{0.175\textwidth}{
    #1
  }
  &\parbox[t]{0.825\textwidth}{
    \textbf{#2}
    \hfill
    {\footnotesize \textbf{\textcolor{black}{#3}}}\\
    #4
  }\\\\}
