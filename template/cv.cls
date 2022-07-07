\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2022/06/09 An unadorned CV]

\LoadClass[a4paper, 12pt]{article}
%          ^-- Change paper size and font size here

\RequirePackage[utf8]{inputenc}
\RequirePackage{csquotes}
\MakeOuterQuote{"}

\RequirePackage{fontawesome5}
\RequirePackage{xcolor}
\RequirePackage{libertine} % nicer fonts
\RequirePackage[libertine]{newtxmath} % math support for fonts

\RequirePackage{longtable, array, enumitem}

\definecolor{maincolor}{RGB}{114 142 214}

\RequirePackage{hyperref}
\hypersetup{colorlinks,linkcolor={blue!80!black}, urlcolor={blue!80!black}}

\RequirePackage{geometry}
\geometry{a4paper, total={170mm,257mm}, left=20mm, top=20mm}

\pagenumbering{gobble} % Remove page numbers

\newcommand{\headingfont}{\large\color{maincolor}}
\newcommand{\dotseparator}{$\;\boldsymbol{\cdot}\;$}
\newcolumntype{R}{>{\raggedleft}p{1in}}

% Contact header without icons
\newcommand{\contact}[5]{
    \begin{center}
        {\Large \textbf{#1}} \\[8pt]
        #2 \\
        \href{mailto:#3}{#3}\dotseparator \href{#4}{#4} \\
        #5 \\
    \end{center}
    \vspace{1em}
}

% Contact header with icons
\newcommand{\contactIcons}[5]{
    \begin{center}
        {\Large \textbf{#1}} \\[8pt]
        #2 \\[5pt]
        \raisebox{-0.1\height}{\faIcon{envelope}} \href{mailto:#3}{#3}\dotseparator
        \raisebox{-0.1\height}{\faIcon{globe}} \href{#4}{#4} \\[2pt]
        \raisebox{-0.15\height}{\faIcon{phone-alt}} #5 \\
    \end{center}
    \vspace{1em}
}

% General CV section
\newenvironment{CVSection}[1]{
    {\headingfont \textbf{#1}}
    \vspace{-.5em}
	\renewcommand*{\arraystretch}{1.5}
	\setlength{\tabcolsep}{10pt}
	\begin{longtable}{Rp{5.2in}}}
{\end{longtable}\vspace{-.3cm}}
