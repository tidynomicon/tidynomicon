%%
%% This is file `nostarch.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% nostarch.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from nostarch.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file nostarch.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nostarch}
[2008/06/06 v1.3 Typesetting books for No Starch Press]
\newif\ifnostarch@cfonts
\nostarch@cfontstrue
\DeclareOption{cfonts}{\nostarch@cfontstrue}
\DeclareOption{nocfonts}{\nostarch@cfontsfalse}
\long\def\nostarch@size@warning#1{%
  \ClassWarning{nostarch}{Size-changing option #1 will not be
    honored}}%
\DeclareOption{8pt}{\nostarch@size@warning{\CurrentOption}}%
\DeclareOption{9pt}{\nostarch@size@warning{\CurrentOption}}%
\DeclareOption{10pt}{\nostarch@size@warning{\CurrentOption}}%
\DeclareOption{11pt}{\nostarch@size@warning{\CurrentOption}}%
\DeclareOption{12pt}{\nostarch@size@warning{\CurrentOption}}%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\InputIfFileExists{nostarch.cfg}{%
  \ClassInfo{nostarch}{%
    Loading configuration file nostarch.cfg}}{%
  \ClassInfo{nostarch}{%
    Configuration file nostarch.cfg is not found}}
\ProcessOptions\relax
\LoadClass[10pt]{book}
\RequirePackage{ifpdf, fancyhdr, fancyvrb, booktabs, graphicx,
  listings, caption, makeidx, upquote, fontspec, pifont, xcolor, textcomp, lmodern, nameref, float}
\usepackage[framemethod=TikZ]{mdframed}
\RequirePackage[T1]{fontenc}  
\RequirePackage{ragged2e}
\setlength\RaggedRightParindent{\parindent}
\RaggedRight
\def\@nschapterpreamble{}
\ifnostarch@cfonts
  %\RequirePackage{nbaskerv}%
  %\RequirePackage{futurans}%
  %\RequirePackage[scaled=0.85]{thsmc}%
  %\RequirePackage{dogma}%
  \newcommand{\dgdefault}{fdg}
  \def\UrlFont{\emph}
  % ===== Wingdings =====
  \newcommand{\wingding}[1]
    {\ding{\the\numexpr #1 + 181 \relax}} 
    
\newcommand{\codewingding}[1]
    {\vbox{\llap{\wingding{#1}\hskip 1em}}}
    
    
% ===== Terms =====
\newcommand{\term}[1]{\emph{#1}\index{#1}}



  % ===== FONTS =====
  \newfontface\dogma[
    Path=fonts/dogma/,
    UprightFont=dogmab01.ttf,
]{dogma}  % Font used for chapter titles

  \newfontface\futurabook[
    Path=fonts/futurans/,
    UprightFont=FuturB37.ttf,
]{futurabook}

  \newfontface\futuraheavy[
    Path=fonts/futurans/,
    UprightFont=FuturH79.ttf,
]{futuraheavy}

  \newfontface\futuraboldc[
    Path=fonts/futurans/,
    UprightFont=futucb18.ttf,
]{futuraboldc}

  \newfontface\futuraboldcoblique[
    Path=fonts/futurans/,
    UprightFont=FutCBO63.ttf,
]{futuraboldcoblique}



\setmainfont[
    Path=fonts/nbaskerv/,
    UprightFont=NewBaskervilleEF-Roman.ttf,
    BoldFont=NewBaskervilleEF-Bold.ttf,
    ItalicFont=NewBaskervilleEF-RomanIta.ttf,
    BoldItalicFont=NewBaskervilleEF-BoldIta.ttf,
    Ligatures=TeX]{nbaskerv}
    
\setmonofont[
    Path=fonts/thsmc/,
    UprightFont=ThSMCP25.ttf,
    BoldFont=ThSMCB02.ttf,
    ItalicFont=ThSMCI29.ttf,
    BoldItalicFont=TSMCBI56.ttf,
    Ligatures=TeX]{thsmc}
    
\setsansfont[
    Path=fonts/futurans/,
    UprightFont=futura.ttf,
    BoldFont=FuturB41.ttf,
    ItalicFont=FutuBO08.ttf,
    BoldItalicFont=FutCBO63.ttf]{futurans}
    
\else
  \newcommand{\dgdefault}{\sfdefault}%
\fi
\normalsize
\setlength{\paperheight}{9.25in}
\setlength{\paperwidth}{7in}
\ifpdf\relax
  \pdfpageheight=\paperheight
  \pdfpagewidth=\paperwidth
  \pdfvorigin=1in
  \pdfhorigin=1in
\fi
\setlength\topmargin{0.625in}
\addtolength\topmargin{-1in}
\addtolength\topmargin{-12pt}
\setlength\textheight{8in}
\addtolength{\textheight}{-0.207in}
\addtolength\textheight{\topskip}
\setlength\evensidemargin{0.687in}
\addtolength{\evensidemargin}{-1in}
\addtolength{\evensidemargin}{0.833in}
\addtolength{\evensidemargin}{0.167in}
\setlength\oddsidemargin{\evensidemargin}
\setlength\textwidth{5.625in}
\addtolength\textwidth{-0.833in}
\addtolength\textwidth{-0.167in}
\setlength\parindent{0.25in}
\setlength\headheight{12pt}
\setlength\headsep{0pt}
\setlength{\footskip}{9in}
\addtolength{\footskip}{-\textheight}
\addtolength{\footskip}{0.067in}
\addtolength{\footskip}{\baselineskip}
\addtolength{\footskip}{-1in}
\widowpenalty=10000
\clubpenalty=10000
\raggedbottom
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}
\lhead{}
\rhead{}
\chead{}
\fancyhfoffset[L]{1in}
\fancyfoot[RO]{\sffamily \fontsize{6pt}{6pt}%
  \rightmark%
  \hspace{2em} \futuraboldc \fontsize{9pt}{6pt}\selectfont\thepage}
\fancyfoot[LO]{}
\fancyfoot[CO]{}
\fancyfoot[LE]{ \futuraboldc\fontsize{9pt}{6pt}%
  \selectfont\thepage\hspace{2em}%
  \fontseries{lq}\fontsize{6pt}{6pt}\selectfont%
  \leftmark}
\fancyfoot[RE]{}
\fancyfoot[CE]{}

% ===== SUBTITLE =====
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\def\@subtitle{}

% ===== LOGO =====
\newcommand{\nostarchlogo}[1]{\gdef\@nostarchlogo{#1}}
\def\@nostarchlogo{}
\newcommand{\nostarchlocation}[1]{\gdef\@nostarchlocation{#1}}
\def\@nostarchlocation{San Francisco}

% ===== HALF TITLE =====
\def\makehalftitle{%
  \clearpage
  {\pagestyle{empty}\cleardoublepage}%
  \thispagestyle{empty}%
  \null%\vskip1.025in%
  \leavevmode\noindent\hspace{1.66in}%
    \begin{minipage}[t]{2.5625in}%
    \flushright
    \sffamily\bfseries\fontsize{12\p@}{13\p@}
    \MakeUppercase{\@title}%
  \end{minipage}}
  
% ===== TITLE =====
\def\maketitle{%
  \bgroup
  \clearpage
  {\pagestyle{empty}\cleardoublepage}%
  \thispagestyle{empty}%
  \bgroup
  \list{}{\leftmargin-1in\rightmargin\z@\labelwidth\z@%
    \labelsep\z@\listparindent\z@\parsep\z@\itemsep\z@%
    \topsep\z@\partopsep\z@}%
  \item\relax
  \centering
  \null\vskip0.855in%
  {\dogma \fontsize{36\p@}{37\p@}\selectfont
    \MakeUppercase{\@title}\par}%
  \if\@subtitle\@empty\relax\else
     {\null\vskip25\p@%
     \dogma \fontsize{24\p@}{25\p@}\selectfont
    \@subtitle\par}%
  \fi
  \vspace{1.7in}%
  \vspace{-\baselineskip}%
  {\futuraheavy\fontsize{18\p@}{22\p@}\selectfont
    by \@author\par}%
  \vspace{0.45in}%
  \vspace{\baselineskip}%
  \if\@nostarchlogo\@empty\relax\else
    \includegraphics[height=1.08in]{\@nostarchlogo}\par
  \fi
  \vspace{12\p@}%
  \normalfont\@nostarchlocation\par
  \endlist
  \egroup
  \clearpage\egroup}

% ===== COPYRIGHT PAGE =====
\newenvironment{copyrightpage}{%
  \clearpage
  \bgroup
  \list{}{\leftmargin-1in\rightmargin\z@\labelwidth\z@%
    \labelsep\z@\listparindent\z@\parsep8\p@\itemsep\z@%
    \topsep\z@\partopsep\z@}%
  \item\relax
  \thispagestyle{empty}%
  \normalfont\fontsize{8\p@}{10\p@}\selectfont}{%
  \endlist
  \egroup
  \clearpage}
 
% ===== CIP BLOCK =====
\newenvironment{cipblock}{%
  \leavevmode\par\normalfont\fontsize{8\p@}{10\p@}\selectfont
  \textit{Library of Congress Cataloging-in-Publication Data}\par%
  \ttfamily\@vobeyspaces\obeylines
  \parindent\z@\parfillskip\@flushglue\parskip\z@skip}{\par\vskip8pt\relax}
  
% ===== DEDICATION PAGE =====
\newenvironment{dedicationpage}{%
  \clearpage
  {\pagestyle{empty}\cleardoublepage}%
  \thispagestyle{empty}%
  \null\vskip1.175in%
  \centering\normalfont}{\clearpage}
  
\def\briefcontentsname{{\dogma Brief Contents}}
\def\contentsname{{\dogma Contents in Detail}}%
\AtBeginDocument{\@ifpackageloaded{babel}{%
  \addto\captionsenglish{%
    \renewcommand{\contentsname}%
    {Contents in Detail}}}{}}
    
% ===== BRIEF TABLE OF CONTENTS =====
\newcommand\brieftableofcontents{%
  \clearpage
  {\pagestyle{empty}\cleardoublepage}%
  \bgroup
  \thispagestyle{empty}%
  \markboth{\briefcontentsname}{\briefcontentsname}%
  \null\vskip0.925in%
  \list{}{\leftmargin-1.0in\rightmargin0.4in\labelwidth\z@%
    \labelsep\z@\listparindent\z@\parsep\z@\itemsep\z@%
    \topsep\z@\partopsep\z@}%
  \item\relax
    {\centering
      \dogma\fontsize{16\p@}{18\p@}\selectfont
      \MakeUppercase{\briefcontentsname}\par}\vskip40pt%
  \@starttoc{tbc}%
  \endlist
  \egroup}

% ===== TABLE OF CONTENTS =====
\renewcommand\tableofcontents{%
  \clearpage
  {\pagestyle{empty}\cleardoublepage}%
  \bgroup
  \thispagestyle{empty}%
  \markboth{\contentsname}{\contentsname}%
  \null\vskip0.175in%
  \list{}{\leftmargin-1.0in\rightmargin0.6in\labelwidth\z@%
    \labelsep\z@\listparindent\z@\parsep\z@\itemsep\z@%
    \topsep\z@\partopsep\z@}%
  \item\relax
    {\centering
      \dogma\fontsize{16\p@}{18\p@}
      \MakeUppercase{\contentsname}\par}\vskip18pt%
  \@starttoc{toc}%
  \endlist
  \egroup}
\renewcommand\@dotsep{1.5}

% ===== PART IN ToC =====
\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{28\p@}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \sffamily\bfseries\fontsize{12\p@}{14\p@}\selectfont
       #1}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
  
% ===== CHAPTER IN ToC =====
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 20\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \sffamily \bfseries \fontsize{10\p@}{12\p@}
      {#1} \nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \vskip4\p@\penalty\@highpenalty
    \endgroup
  \fi}
\newlength{\sectionnumberwidth}
\settowidth{\sectionnumberwidth}{%
  \futurabook\fontsize{9\p@}{11\p@}\selectfont
  99.99}
\newlength{\subsectionnumberwidth}
\settowidth{\subsectionnumberwidth}{%
  \futurabook\fontsize{9\p@}{11\p@}\selectfont
  99.99.99}
  
% ===== SECTION IN ToC =====
\renewcommand{\l@section}[2]{\@dottedtocline{1}{\z@}{%
    \sectionnumberwidth}{%
    \futurabook \fontsize{9\p@}{11\p@}#1}{%
    \futurabook \fontsize{9\p@}{11\p@}#2}}
    
% ===== SUBSECTION IN ToC =====
\renewcommand{\l@subsection}[2]{\@dottedtocline{2}{0.5in}%
  {\subsectionnumberwidth}{%
    \futurabook \fontsize{9\p@}{11\p@}#1}{%
     \futurabook \fontsize{9\p@}{11\p@}#2}}

% ===== PART IN BRIEF ToC =====
\newcommand*\l@bpart[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{14\p@}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \futuraheavy\fontsize{9\p@}{14\p@}\selectfont
       #1}\par\vskip7\p@%
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
  
% ===== CHAPTER IN BRIEF ToC =====
\renewcommand{\@pnumwidth}{15pt}
\newcommand*\l@bchapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \futurabook\fontsize{9\p@}{14\p@}\selectfont
      #1\nobreak\leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
      \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
  
% ===== MAIN MATTER =====
\renewcommand\mainmatter{%
  \clearpage
  {\thispagestyle{empty}\cleardoublepage}%
  \@mainmattertrue
  \pagenumbering{arabic}}
  
% ===== BACK MATTER =====
\renewcommand\backmatter{%
  \clearpage
  {\thispagestyle{empty}\cleardoublepage}%
  \@mainmatterfalse}
%\setcounter{secnumdepth}{0}
\def\sectionmark#1{}%
\newif\if@firstpara
\@firstparafalse
\def\@chapterart{}
\def\secdef#1#2{\@ifstar{\@dblarg{#2}}{\@dblarg{#1}}}

% ===== PART =====
\renewcommand\part{%
  \clearpage
  {\pagestyle{empty}\cleardoublepage}%
  \everypar{}%
  \markboth{}{}%
  \def\@chapterart{}%
  \thispagestyle{empty}%
  \null\vskip0.715in%
  \secdef\@part\@spart}
\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\MakeUppercase{\partname}
        \thepart\protect\linebreak\penalty\@highpenalty\MakeUppercase{#1}}%
      \addcontentsline{tbc}{bpart}{\MakeUppercase{\partname~\thepart: \futuraheavy #1}}%
    \else
      \addcontentsline{toc}{part}{\MakeUppercase{#1}}%
      \addcontentsline{tbc}{bpart}{\MakeUppercase{ \futuraheavy #1}}%
    \fi
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \futuraboldc\fontsize{80pt}{80pt}\fontseries{bc}\selectfont
       \MakeUppercase{\partname\nobreakspace\thepart}%
       \par
       \vskip 0.45in%
     \fi
     \dogma \fontsize{16pt}{16pt}\fontseries{br}\selectfont
     \MakeUppercase{#2}\par}%
    \@endpart}
\def\@spart[#1]#2{%
  \addcontentsline{toc}{part}{\MakeUppercase{#1}}%
  \addcontentsline{tbc}{bpart}{\MakeUppercase{#1}}%
    {\centering
      \dogma\fontsize{16pt}{16pt}\fontseries{br}\selectfont
     \MakeUppercase{#2}\par}%
    \@endpart}
\def\@endpart{%
  \@afterindentfalse
  \vskip49\p@%
   \@firstparatrue
   \@afterheading}
   
% ===== CHAPTER =====
\def\chapter{%
  \clearpage
  {\pagestyle{empty}\cleardoublepage}%
  \everypar{}%
  \thispagestyle{empty}%
  \global\@topnum\z@
  \@afterindentfalse
  \gdef\@chapterart{}%
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
  \vspace*{0.622in}
  \ifnum \c@secnumdepth > \m@ne
  \refstepcounter{chapter}%
  \typeout{Chapter:\thechapter\space\@currentlabel}%
  \markboth{\@chapapp~\thechapter}{#1}%
  \typeout{\@chapapp\space\thechapter.}%
  \addcontentsline{toc}{chapter}{\thechapter%
    \protect\linebreak\penalty\@highpenalty
    \MakeUppercase{#1}}%
  \addcontentsline{tbc}{bchapter}{%
    \chaptername~\thechapter:~#1}%
  {\centering
    \futuraboldc\fontsize{120pt}{120pt}
    \selectfont
    \thechapter\par\nobreak\vskip27pt}%
  \else
  \addcontentsline{toc}{chapter}{%
    \MakeUppercase{#1}}%
  \addcontentsline{tbc}{bchapter}{#1}%
  \markboth{#1}{#1}%
  \fi
  {\centering
    \dogma\fontsize{16pt}{20pt}\selectfont
    \MakeUppercase{#2}\par}\nobreak\vskip25pt\relax%
  \@firstparatrue
  \@afterheading}%
\def\@schapter[#1]#2{%
  \vspace*{2.747in}
  {\centering
    \addcontentsline{toc}{chapter}{%
      \MakeUppercase{#1}}%
    \addcontentsline{tbc}{bchapter}{#1}%
    \markboth{#1}{#1}%
    {\fontsize{16pt}{20pt}\selectfont
      \MakeUppercase{\dogma #2}\par}}\nobreak\vskip25pt\relax%
   \@firstparatrue
   \@afterheading}%
\def\@afterheading{%
  \@nobreaktrue
  \everypar{%
    \if@nobreak
      \@nobreakfalse
      \clubpenalty \@M
       \setbox\z@\lastbox
    \else
      \clubpenalty \@clubpenalty
      \everypar{}%
    \fi
      \if@firstpara
       \rule{\z@}{49\p@}%
       \ifx\@chapterart\@empty%
       \else
         \makebox[0pt][r]{\raisebox{-0.5in}[0pt][0pt]{%
            \@chapterart\hspace{0.21in}}}%
        \parshape=5
        0.963in 3.622in
        0.913in 3.672in
        0.813in 3.772in
        0.563in 4.022in
        0in \textwidth
      \fi
      \fontsize{14pt}{16.5pt}\selectfont%
      \parskip=3pt
      \else
        \parskip=0pt
        \normalsize\selectfont
       \fi
    \@firstparafalse}}%

% ===== CHAPTER ART =====
\newcommand{\chapterart}[1]{\gdef\@chapterart{#1}}%
\newcommand{\chapterartfile}[1]{\gdef\@chapterart{%
    \includegraphics[width=1.264in]{#1}}}%

% ===== SECTION =====
\renewcommand{\section}{\everypar{}%
  \@startsection{section}{1}{-0.75in}{16pt}{6pt}{%
    \sffamily \bfseries \fontsize{12pt}{16pt}\selectfont}}%
    
% ===== SUBSECTION =====
\renewcommand{\subsection}{\everypar{}%
  \@startsection{subsection}{2}{0pt}{14pt}{4pt}{%
    \futuraboldcoblique %
    \fontsize{12pt}{17pt}\selectfont}}%
    
% ===== SUBSUBSECTION =====
\renewcommand{\subsubsection}{\everypar{}%
  \@startsection{subsubsection}{3}{0pt}{10pt}{2pt}{%
  \futuraboldc \fontsize{10pt}{14pt}%
    \selectfont}}%
\setlength{\leftmargin}{0.25in}
\setlength{\leftmargini}{0.25in}
\setlength{\leftmarginii}{0.25in}
\setlength{\leftmarginiii}{0.25in}
\setlength{\leftmarginiv}{0.25in}
\setlength{\rightmargin}{0pt}
\def\@listi{\leftmargin\leftmargini
  \labelwidth\leftmargin\relax
  \advance\labelwidth-\labelsep\relax
  \parsep0\p@\relax
  \topsep6\p@\relax
  \itemsep4\p@\relax}
\let\@listI\@listi
\def\@listii{\leftmargin\leftmarginii
  \labelwidth\leftmarginii
  \advance\labelwidth-\labelsep
  \parsep0\p@\relax
  \topsep0\p@\relax
  \itemsep0\p@\relax}
\def\@listiii{\leftmargin\leftmarginiii
  \labelwidth\leftmarginiii
  \advance\labelwidth-\labelsep
  \parsep0\p@\relax
  \topsep0\p@\relax
  \itemsep0\p@\relax}
\def\@listiv{\leftmargin\leftmarginiv
  \labelwidth\leftmarginiv
  \advance\labelwidth-\labelsep
  \parsep0\p@\relax
  \topsep0\p@\relax
  \itemsep0\p@\relax}
\def\@listv{\leftmargin\leftmarginv
  \labelwidth\leftmarginv
  \advance\labelwidth-\labelsep
  \parsep0\p@\relax
  \topsep0\p@\relax
  \itemsep0\p@\relax}
\def\@listvi{\leftmargin\leftmarginvi
  \labelwidth\leftmarginvi
  \advance\labelwidth-\labelsep
  \parsep0\p@\relax
  \topsep0\p@\relax
  \itemsep0\p@\relax}
\def\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\def\makelabel##1{##1}}%
  \fi}
  
% ===== BULLETS =====
\def\enumerate{%
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \expandafter
      \list
        \csname label\@enumctr\endcsname
        {\usecounter\@enumctr\def\makelabel##1{##1}}%
        \fi}
        
% ===== QUOTES =====
\renewenvironment{quotation}{%
  \list{}{\listparindent\parindent\relax
    \itemindent\listparindent\relax
    \rightmargin0.5in\relax
    \leftmargin0.5in\relax}%
    \item\fontsize{9pt}{11pt}\selectfont}{\endlist}
\renewenvironment{quote}{%
  \list{}{\listparindent0pt\relax
    \itemindent\listparindent\relax
    \rightmargin0.5in\relax
    \leftmargin0.5in\relax}%
    \item\fontsize{9pt}{11pt}\selectfont}{\endlist}

% ===== NOTE =====
\newenvironment{note}{%
  \list{\makebox[0pt][r]{\dogma \fontsize{9pt}{11pt}
       \colorbox{black}{\textcolor{white}{N~O~T~E}}\hspace{2em}}}{\listparindent0pt\relax
    \topsep9\p@\relax
    \itemindent0\p@\relax
    \rightmargin0\p@\relax
    \leftmargin0\p@\relax
    \labelwidth0\p@\relax
    \labelsep0\p@}%
    \item\itshape}{\vspace{-3pt}\endlist}
    
% ===== FOOTNOTE =====
\renewcommand\footnoterule{%
  \kern6\p@
  \hrule height 0.25pt depth 0pt width 1in
  \kern2\p@}
\long\def\@footnotetext#1{\insert\footins{%
    \reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
    \protected@edef\@currentlabel{%
       \csname p@footnote\endcsname\@thefnmark
    }%
    \color@begingroup
      \@makefntext{%
        \rule\z@{13.5pt}\ignorespaces#1}%
    \color@endgroup}}%
\setlength{\skip\footins}{16\p@ \@plus 4\p@ \@minus 0\p@}
\renewcommand\@makefntext[1]{%
    \parindent 0\p@%
    \RaggedRightParindent0\p@%
    \noindent
    \@makefnmark\space#1}

% ===== FIGURE =====
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter-\fi \@arabic\c@figure}
     
% ===== TABLE =====
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter-\fi \@arabic\c@table}

% ===== LISTING =====
\AtBeginDocument{%
  \renewcommand \thelstlisting
       {\ifnum \c@chapter>\z@ \thechapter-\fi \@arabic\c@lstlisting}%
}

\lstset{
    frame = lines, 
    showstringspaces=false,
    tabsize=4,
    title=\lstname,
    numbers = none,
    caption={},
    literate={\ }{{\ }}1{"}{\textquotedbl}1,  
    escapeinside={(*}{*)},
    captionpos=b,
    basicstyle=\ttfamily,
    columns=fullflexible,
    moredelim=[is][\bfseries]{***}{***},
    moredelim=[is][\itshape]{___}{___}
}

\lstnewenvironment
    {codewide}[1][]
    {
    \renewcommand{\codewingding}[1]
    {\ding{\the\numexpr ##1 + 181 \relax}} 
    \captionsetup[lstlisting]{font=nostarchfigfont,singlelinecheck=off,
  aboveskip=8pt, belowskip=8pt, margin=-50pt}
    \lstset{
    frame = lines, 
    showstringspaces=false,
    tabsize=4,
    title=\lstname,
    numbers = none,
    literate={\ }{{\ }}1{"}{\textquotedbl}1,  
    escapeinside={(*}{*)},
    captionpos=b,
    basicstyle=\ttfamily,
    columns=fullflexible,
    moredelim=[is][\bfseries]{***}{***},
    moredelim=[is][\itshape]{___}{___},
    xleftmargin=-50pt,
    #1
    }}
    {
    \renewcommand{\codewingding}[1]
    {\vbox{\llap{\wingding{#1}\hskip 1em}}}
    \captionsetup[lstlisting]{font=nostarchfigfont,singlelinecheck=off,
  aboveskip=8pt, belowskip=8pt, margin=0pt}}



% ===== CAPTIONS =====
\DeclareCaptionFont{nostarchfigfont}{\sffamily \itshape \fontsize{8.5pt}{9pt}}
\DeclareCaptionFont{nostarchtabfont}{\sffamily \fontsize{8.5pt}{9pt}}
\captionsetup[figure]{font=nostarchfigfont,singlelinecheck=off,
  aboveskip=8pt,belowskip=8pt}
\captionsetup[lstlisting]{font=nostarchfigfont,singlelinecheck=off,
  aboveskip=8pt, belowskip=8pt}
\captionsetup[table]{font=nostarchtabfont,singlelinecheck=off,
  aboveskip=0pt,belowskip=4pt}

  
% ===== TABLES =====
\def\tbfont{%
  \futurabook\fontsize{8pt}{10pt}}
\def\thfont{%
  \futuraheavy\fontsize{8pt}{10pt}\selectfont}
 
\heavyrulewidth=3\p@
\lightrulewidth=1.5\p@
\cmidrulewidth=1.5\p@
\def\bottomrule{\noalign{\ifnum0=`}\fi
  \@aboverulesep=\aboverulesep
  \global\@belowrulesep=\belowbottomsep
  \global\@thisruleclass=\@ne
  \@ifnextchar[{\@BTrule}{\@BTrule[\lightrulewidth]}}
\belowrulesep=0.7ex
\belowbottomsep=0.65pt
\aboverulesep=0.7ex
\abovetopsep=0.65pt
\DefineVerbatimEnvironment{Code}{Verbatim}{frame=lines,framerule=0.25pt, commandchars=\\\{\}}
\FV@AddToHook\FV@ListParameterHook{\vspace{-6pt}}
\VerbatimFootnotes

% ===== BOX =====
\mdfdefinestyle{nspbox}{%
    linecolor=black,
    outerlinewidth=1pt,
    roundcorner=5pt,
    innertopmargin=\baselineskip,
    innerbottommargin=\baselineskip,
    innerrightmargin=30pt,
    innerleftmargin=30pt,
    backgroundcolor=gray!50!white}
    
\newenvironment{nspbox}[1]
{\begin{mdframed}[style=nspbox]
    \begin{center} 
    {\dogma \fontsize{9pt}{11pt} \MakeUppercase{#1}} \vspace{6pt}
    \end{center}
}
{\end{mdframed}}


% ===== BIBLIOGRAPHY =====
\AtBeginDocument{
  \def\bibsection{%
    \clearpage
    {\pagestyle{empty}\cleardoublepage}%
    \everypar{}%
    \thispagestyle{empty}%
    \global\@topnum\z@
    \@afterindentfalse
    \gdef\@chapterart{}%
    \@nschapterpreamble
    \vspace*{0.622in}%
    \addcontentsline{toc}{chapter}{\MakeUppercase{\bibname}}%
    \addcontentsline{tbc}{bchapter}{\bibname}%
    {\centering
      {\dogma\fontsize{16pt}{20pt}\selectfont
        \MakeUppercase{\bibname}\par}}\nobreak\vskip25pt\relax%
    \@mkboth{\bibname}{\bibname}}}%
\renewenvironment{thebibliography}[1]{%
  \bibsection
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
      
% ===== INDEX =====
\renewenvironment{theindex}{%
  \clearpage
  {\pagestyle{empty}\cleardoublepage}%
  \everypar{}%
  \thispagestyle{empty}%
  \global\@topnum\z@
  \@afterindentfalse
  \gdef\@chapterart{}%
  \if@twocolumn
  \@restonecolfalse
  \else
  \@restonecoltrue
  \fi
  \twocolumn[%
  \@nschapterpreamble
  \vspace*{0.622in}%
  \addcontentsline{toc}{chapter}{\MakeUppercase{\indexname}}%
  \addcontentsline{tbc}{bchapter}{\indexname}%
  {\centering
    {\dogma%
      \fontsize{16pt}{20pt}\selectfont
      \MakeUppercase{\indexname}\par}}%
  \nobreak\vskip25pt\relax]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  \parindent\z@
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 0.25in%
  \let\item\@idxitem}
{\if@restonecol\onecolumn\else\clearpage\fi}
\renewcommand\@idxitem{%
  \par\hangindent0.45in\normalfont\fontsize{9.5\p@}{11.5\p@}\selectfont
  \raggedright}
\renewcommand\subitem{\@idxitem \hspace*{0.15in}}
\renewcommand\subsubitem{\@idxitem \hspace*{0.3in}}
\renewcommand\indexspace{\par \vskip 14\p@\relax}
\newcommand\indexgroup[1]{{ \futuraboldc\fontsize{11\p@}{13\p@}\selectfont#1}\par\vskip4\p@}
    
% ===== UPDATES =====
\def\updatesname{Updates}
\newcommand\updatespage{%
  \clearpage
  {\pagestyle{empty}\cleardoublepage}%
  \everypar{}%
  \thispagestyle{empty}%
  \global\@topnum\z@
  \gdef\@chapterart{}%
  \vspace*{1.875in}%
  {\centering
   \dogma%
    \fontsize{16pt}{20pt}\selectfont
    \MakeUppercase{\updatesname}\par\nobreak\vskip40\p@}%
  \@nobreaktrue
  \everypar{%
    \if@nobreak
    \@nobreakfalse
    \clubpenalty \@M
    \setbox\z@\lastbox
    \else
    \clubpenalty \@clubpenalty
    \everypar{}%
    \fi}}
    
% ===== COLOPHON =====
\def\colophonname{Colophon}
\newcommand\colophon{%
  \everypar{}%
  \global\@topnum\z@
  \gdef\@chapterart{}%
  \vspace*{0.875in}%
  {\centering
    \dogma%
    \fontsize{16pt}{20pt}\selectfont
    \MakeUppercase{\colophonname}\par\nobreak\vskip40\p@}%
  \@nobreaktrue
  \everypar{%
    \if@nobreak
    \@nobreakfalse
    \clubpenalty \@M
    \setbox\z@\lastbox
    \else
    \clubpenalty \@clubpenalty
    \everypar{}%
    \fi}\par
    The fonts used in \emph{\@title} are New Baskerville, Futura, The
    Sans Mono Condensed and Dogma.  The book was typeset with
    \LaTeXe{} package
    \texttt{nostarch} by Boris Veytsman
    \emph{(\csname ver@nostarch.cls\endcsname).}\par}
\endinput
%%
%% End of file `nostarch.cls'.
