%!TEX root = ../main.tex

% font
\RequirePackage{helvet}
\renewcommand{\familydefault}{\sfdefault}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{format}[2023/10/23]

% Load the base class and necessary packages
\LoadClass[11pt]{report}
\RequirePackage[a4paper, top=2.5cm, bottom=2cm, left=2.5cm, right=2.5cm]{geometry}
\RequirePackage{relsize}
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{caption}
\RequirePackage{tocloft}
\RequirePackage{svg}
\RequirePackage{titletoc}
\RequirePackage[colorlinks=true, linkcolor=black, citecolor=black, urlcolor=black]{hyperref}
\RequirePackage{listings}



% Define page styles

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{1pt}
\fancyhead[R]{\includesvg[height=1cm]{static/THU_Logo.svg}}
\fancyhead[L]{\begin{minipage}{12cm}\nouppercase{\textit{\leftmark}}\end{minipage}\vspace{1pt}}
\cfoot{\thepage} % Page number

\fancypagestyle{plain}{
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{1pt}
    \fancyhead[R]{\includesvg[height=1cm]{static/THU_Logo.svg}}
    \cfoot{\thepage} % Page number
}

\fancypagestyle{titlePageheader}{
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyhead[R]{\includesvg[height=3.5cm]{static/THU_Logo.svg}}
    
    \ifTrue{\printCompanyLogo} % if \printCompanyLogo is true
    % then:
        {
        \IfEndWith{\companyLogoPath}{.svg} % if file at \companyLogoPath exists
        % then:
        {
            \fancyhead[L]{\raisebox{(3.5cm-\height)/2}{\includesvg[height=3.5cm, width=7cm]{\companyLogoPath}}}
        }
        % else:
        {
            \fancyhead[L]{\raisebox{(3.5cm-\height)/2}{\includegraphics[max size={7cm}{3.5cm}]{\companyLogoPath}}}
        }
    }
    % else:
    {}
}

% customize chapter title in head
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}


% Other custom settings
\setlength{\parindent}{0pt} % Remove indentation
\renewcommand{\familydefault}{\sfdefault} % Font settings
\linespread{1.5} % Line spacing

% Formatting chapter, section, and caption
\titleformat{\chapter}[block]
{\normalfont\bfseries\fontsize{20pt}{16pt}\selectfont}{\thechapter}{0.5em}{\fontsize{20pt}{16pt}\selectfont}
\titlespacing*{\chapter}{0pt}{-2ex}{2ex}

\titleformat{\section}{\bfseries\fontsize{16pt}{16pt}\selectfont}{\thesection}{1em}{}
\titleformat{\subsection}{\bfseries\fontsize{14pt}{18pt}\selectfont}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\bfseries\fontsize{12pt}{20pt}\selectfont}{\thesubsubsection}{1em}{}

%Customizing captions
\captionsetup{font=footnotesize}
\captionsetup{justification=raggedright,singlelinecheck=false}
\captionsetup[figure]{position=bottom}
\captionsetup[table]{position=above}

% Customizing table of contents
\renewcommand{\contentsname}{\tableOfContentsPhrase}
\renewcommand{\cfttoctitlefont}{\bfseries\fontsize{20}{24}\selectfont}
\renewcommand \cftchapdotsep{3.7}
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{0pt}


% Customizing list of figures
\renewcommand{\cftloftitlefont}{\bfseries\fontsize{20}{24}\selectfont}
\setlength{\cftbeforeloftitleskip}{0pt}
\setlength{\cftafterloftitleskip}{0pt}

% Customizing list of tables
\renewcommand{\cftlottitlefont}{\bfseries\fontsize{20}{24}\selectfont}
\setlength{\cftbeforelottitleskip}{0pt}
\setlength{\cftafterlottitleskip}{0pt}


% Remove chapter number from figure and table numbering
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\counterwithout{equation}{chapter}
\AtBeginDocument{ % this counter is defined later
  \counterwithout{lstlisting}{chapter}
}

% custom function to lign up titles in List of Figures e.g.
\newcommand*{\getHSpace}[1]{
\ifnumless{#1}{10}
    % then:
    {\hspace{6pt}} % length of one number character
    % else:
    {}
}

% Format List of Figures
\titlecontents{figure}
  [0pt] % left margin
  {} % above code
  {\figurePhrase{} \thecontentslabel:\getHSpace{\thecontentslabel}} % label format
  {} % before code
  {\titlerule*[.7pc]{.}\contentspage} % filler page format with dots
  %[\vspace{5pt}] % below code


% Format List of Tables
\titlecontents{table}
  [0pt] % left margin
  {} % above code
  {\tablePhrase{} \thecontentslabel:\getHSpace{\thecontentslabel}} % label format
  {} % before code
  {\titlerule*[.7pc]{.}\contentspage} % filler page format with dots
  %[\vspace{5pt}] % below code

% Format List of Equations
\newlistof{eqcaption}{equ}{}
\newcommand{\eqcaption}[1]{%
\addcontentsline{equ}{eqcaption}{\protect\numberline{\theequation}#1}\par}
\contentsuse{eqcaption}{equ}
\titlecontents{eqcaption}
  [0pt] % left margin
  {\markboth{\listOfEquationsPhrase}{}} % above code
  {\equationsPhrase{} \thecontentslabel:\getHSpace{\thecontentslabel}} % label format
  {} % before code
  {\titlerule*[.7pc]{.}\contentspage} % filler page format with dots
  %[\vspace{5pt}] % below code



% Format List of Listings
\contentsuse{lstlisting}{lol}
\titlecontents{lstlisting}
  [0pt] % left margin
  {} % above code
  {\listingPhrase{} \thecontentslabel:\getHSpace{\thecontentslabel}} % label format
  {} % before code
  {\titlerule*[.7pc]{.}\contentspage} % filler page format with dots
  %[\vspace{5pt}] % below code

% Frequently used programing languages
\lstloadlanguages{PHP,Python,Java,C,C++,bash,SQL,R}

\definecolor{LightGrey}{HTML}{F8F8F8}
\definecolor{Blue}{HTML}{0055a3}
\definecolor{Green}{HTML}{208a20}
\definecolor{Purple}{HTML}{8b11c6}

% Listing settings
\lstset{%
    language=Java,			% default language
    numbers=left,			% position of line numbers (left, right)
    stepnumber=1,			% set number to each line
    numbersep=5pt,			% 5pt between number and source code
    numberstyle=\tiny,		% letter size of numbers
    breaklines=true,		        % break lines if necessary (true, false)
    breakautoindent=true,	        % indenting after break line (true, false)
    postbreak=\space,		% break line after space
    tabsize=2,				% tabulator size
    basicstyle=\ttfamily\footnotesize, % font style
    showspaces=false,		% show space (true, false)
    showstringspaces=true,	% show space in strings (true, false)
    extendedchars=true,		% show all Latin1 characters (true, false)
    captionpos=b,			% sets the caption-position to bottom
    backgroundcolor=\color{LightGrey}, % source code background
    xleftmargin=10pt,		        % margin left
    xrightmargin=5pt,		        % margin right
    frame=single,			        % border settings
    frameround=ffff,
    rulecolor=\color{darkgray},	% border color
    fillcolor=\color{LightGrey}, % margin color
    aboveskip=20pt,
    keywordstyle=\color{Blue},
    commentstyle=\color{Green},
    stringstyle=\color{Purple}
}

% Redefine @chapter so that it doesn't put vertical space in List of Figures and List of Tables (see lines that are commented out)
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}
                         \typeout{\@chapapp\space\thechapter.}
                         \addcontentsline{toc}{chapter}
                                   {\protect\numberline{\thechapter}#1}
                    \else
                      \addcontentsline{toc}{chapter}{#1}
                    \fi
                    \chaptermark{#1}
                    %\addtocontents{lof}{\protect\addvspace{10\p@}}
                    %\addtocontents{lot}{\protect\addvspace{10\p@}}
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]
                    \else
                      \@makechapterhead{#2}
                      \@afterheading
                    \fi}


% Add vertical space between List of Content, List of Figures, List of Tables, List of Listings and its header each
\addtocontents{toc}{\protect\vspace{7pt}}
\addtocontents{lof}{\protect\vspace{18pt}}
\addtocontents{lot}{\protect\vspace{18pt}}
\addtocontents{lol}{\protect\vspace{18pt}}


% End of the class file
\endinput
