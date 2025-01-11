% ******************************************************************************
%
%  This LaTeX template is specifically designed for students at the Faculty of
%  Electronics, Telecommunications and Information Technology, National
%  University of Science and Technology POLITEHNICA Bucharest. It is tailored
%  for writing the Diploma or Dissertation Thesis in English.
%
%  Students are encouraged to follow the provided structure and guidelines to
%  ensure uniformity and adherence to academic standards.
%
% ------------------------------------------------------------------------------
%  Changelog / Version History
% ------------------------------------------------------------------------------
%
% - 2025.01.10: Initial version adapted from the old template (Cristian Cristea)
%
% ------------------------------------------------------------------------------
%  Notes
% ------------------------------------------------------------------------------
%
% - Ensure you have all necessary LaTeX packages installed before using this
%   template.
% - Customize sections as needed while adhering to faculty guidelines.
%
% ******************************************************************************

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{etti-en}[2025/01/10 LaTeX ETTI Diploma or Dissertation Thesis English Template]
\LoadClass[12pt, a4paper, twoside, english]{report}

% ******************************************************************************
%
%  Required packages
%
% ******************************************************************************

\RequirePackage[
    showframe=false,
    left=2cm,
    right=2cm,
    headheight=15pt,
    headsep=10pt,
    top=2.5cm,
    bottom=2.5cm,
]{geometry}
\RequirePackage[
    backend=biber,
    style=ieee,
    hyperref=true,
    abbreviate=false,
    alldates=comp,
    dateabbrev=false,
    language=english,
    sorting=none,
    arxiv=abs,
]{biblatex}
\RequirePackage[romanian, english]{babel}
\RequirePackage[labelfont=bf, justification=centering]{caption}
\RequirePackage[skip=5pt, indent=30pt]{parskip}
\RequirePackage[lined, longend, hangingcomment, algochapter]{algorithm2e}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[titletoc, title]{appendix}
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{ifdraft}
\RequirePackage[final]{graphicx}
\RequirePackage{subcaption}
\RequirePackage{indentfirst}
\RequirePackage{datatool}
\RequirePackage{enumitem}
\RequirePackage{booktabs}
\RequirePackage{minted}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{hhline}
\RequirePackage{makecell}
\RequirePackage{titlesec}
\RequirePackage[useregional]{datetime2}
\RequirePackage{kantlipsum}
\RequirePackage[hyphenation]{impnattypo}
\RequirePackage[style=american]{csquotes}
\RequirePackage{pgfplots}
\RequirePackage{amsmath, amsthm, amssymb, amsxtra}
\RequirePackage{mathtools}
\RequirePackage{unicode-math}
\RequirePackage{newcomputermodern}

% ******************************************************************************
%
%  General thesis template values
%
% ******************************************************************************

\newcommand{\student}{\gdef\@student}
\newcommand{\covertitle}{\gdef\@covertitle}
\newcommand{\pagetitle}{\gdef\@pagetitle}
\newcommand{\domain}{\gdef\@domain}
\newcommand{\programme}{\gdef\@programme}
\newcommand{\advisors}{\gdef\@advisors}
\newcommand{\thesismonth}{\gdef\@thesismonth}
\newcommand{\thesisyear}{\gdef\@thesisyear}

% ******************************************************************************
%
%  English thesis topic template values
%
% ******************************************************************************

\newcommand{\topicfullstudent}{\gdef\@topicfullstudent}
\newcommand{\topicgroup}{\gdef\@topicgroup}
\newcommand{\topicdescription}{\gdef\@topicdescription}
\newcommand{\topiccourses}{\gdef\@topiccourses}
\newcommand{\topicresources}{\gdef\@topicresources}
\newcommand{\topicdirector}{\gdef\@topicdirector}
\newcommand{\topicdean}{\gdef\@topicdean}
\newcommand{\topicdate}{\gdef\@topicdate}
\newcommand{\topicvalidation}{\gdef\@topicvalidation}

% ******************************************************************************
%
%  Romanian thesis topic template values
%
% ******************************************************************************

\newcommand{\topicprogrammero}{\gdef\@topicprogrammero}
\newcommand{\topiccovertitlero}{\gdef\@topiccovertitlero}
\newcommand{\topicdescriptionro}{\gdef\@topicdescriptionro}
\newcommand{\topiccoursesro}{\gdef\@topiccoursesro}
\newcommand{\topicresourcesro}{\gdef\@topicresourcesro}
\newcommand{\topicadvisorsro}{\gdef\@topicadvisorsro}
\newcommand{\topicdirectorro}{\gdef\@topicdirectorro}
\newcommand{\topicdeanro}{\gdef\@topicdeanro}

% ******************************************************************************
%
%  Copyright page template values
%
% ******************************************************************************

\newcommand{\copyrightentity}{\gdef\@copyrightentity}

% ******************************************************************************
%
%  Full page quotation template values
%
% ******************************************************************************

\newcommand{\quotationcontent}{\gdef\@quotationcontent}
\newcommand{\quotationauthor}{\gdef\@quotationauthor}

% ******************************************************************************
%
%  Acronyms filename template value
%
% ******************************************************************************

\newcommand{\addacronyms}{\gdef\@acronymsfile}

% ******************************************************************************
%
%  Settings for the thesis template
%
% ******************************************************************************

% Center the chapter titles and make them a little bit smaller
\titleformat{\chapter}[display]{\normalfont\LARGE\bfseries\centering}{\chaptertitlename\ \thechapter}{0pt}{}

% Center the Table of Contents title and make it a little bit smaller, while reducing the space before and after it
\renewcommand{\cfttoctitlefont}{\hfill\normalfont\LARGE\bfseries}
\renewcommand{\cftaftertoctitle}{\hspace*{\fill}}
\setlength{\cftbeforetoctitleskip}{30pt}
\setlength{\cftaftertoctitleskip}{40pt}

% Center the List of Figures title and make it a little bit smaller, while reducing the space before and after it
\renewcommand{\cftloftitlefont}{\hfill\normalfont\LARGE\bfseries}
\renewcommand{\cftafterloftitle}{\hspace*{\fill}}
\setlength{\cftbeforeloftitleskip}{30pt}
\setlength{\cftafterloftitleskip}{40pt}

% Center the List of Tables title and make it a little bit smaller, while reducing the space before and after it
\renewcommand{\cftlottitlefont}{\hfill\normalfont\LARGE\bfseries}
\renewcommand{\cftafterlottitle}{\hspace*{\fill}}
\setlength{\cftbeforelottitleskip}{30pt}
\setlength{\cftafterlottitleskip}{40pt}

% Format the chapter title in the table of contents to include a dot and a space
\renewcommand{\cftchapaftersnum}{.}

% Format the section title in the table of contents to include a dot and a space
\renewcommand{\cftsecaftersnum}{.}

% Add dots to all elements in the table of contents and make them closer
\renewcommand{\cftdotsep}{3}
\addtocontents{toc}{\protect\renewcommand{\protect\cftchapleader}{\protect\cftdotfill{\cftdotsep}}}
\addtocontents{toc}{\protect\renewcommand{\protect\cftsecleader}{\protect\cftdotfill{\cftdotsep}}}

% Make the chapter and section titles in the table of contents bold
\renewcommand{\cftchapfont}{\bfseries}
\renewcommand{\cftsecfont}{\bfseries}

% Make the chapter and section numbers in the table of contents bold
\renewcommand{\cftchappagefont}{\bfseries}
\renewcommand{\cftsecpagefont}{\bfseries}

% Make the space on the page before the chapters titles smaller
\titlespacing*{name=\chapter}{0pt}{20pt}{40pt}
\titlespacing*{name=\chapter, numberless}{0pt}{20pt}{40pt}

% Make the space on the page before the section titles smaller
\titlespacing*{name=\section}{0pt}{25pt}{15pt}
\titlespacing*{name=\section, numberless}{0pt}{25pt}{15pt}

% Set numbering up to subsubsection
\setcounter{secnumdepth}{3}

% Disaply only chapters and sections in the table of contents
\setcounter{tocdepth}{1}

% Set the in-between spacing for the footnotes
\setlength{\footnotesep}{0.5cm}

% Set the listing caption name to "Source Code"
\renewcommand\listingscaption{Source Code}

% Set the listing autorefname to "Source Code"
\providecommand*{\listingautorefname}{Source Code}

% Enable the listings numbering inside the chapters
\counterwithin{listing}{chapter}

% Custom colour that can be used in the document when writing at night
\definecolor{seashell}{RGB}{255, 241, 231}

% Format the URL date in the bibliography to be displayed as "(Accessed <date>)"
\DeclareFieldFormat{urldate}{(Accessed on #1)}

% Reduce the top margin by 2.5pt to balance the page header
\addtolength{\topmargin}{-2.5pt}

% Convenience commands to switch between one-sided and two-sided printing
\newcommand\oneside{\@twosidefalse}
\newcommand\twoside{\@twosidetrue}

% Define a new code environment that can span multiple pages, using the minted package
\newenvironment{code}{\captionsetup{type=listing}\vspace{\intextsep}}{\vspace{\intextsep}}

% Define the background colour for the code listings
\definecolor{codebg}{rgb}{0.95,0.95,0.95}

% Define a new font family for listings using JetBrains Mono
\defaultfontfeatures[JetBrainsMono]{
    Path=./fonts/mono/,
    Extension = .ttf,
    UprightFont=*-Medium,
    BoldFont=*-Bold,
    ItalicFont=*-Italic,
    BoldItalicFont=*-BoldItalic
}
\newfontfamily{\jbmono}[NFSSFamily=JetBrainsMono]{JetBrainsMono}

% Set the default minted style for the code listings
\usemintedstyle{emacs}

% Add a blank page with no header or footer
\def\blankpage{%
    \clearpage
    \thispagestyle{empty}
    \addtocounter{page}{-1}
    \null
    \clearpage
}

% Create the front cover of the thesis
\newcommand{\frontcover}{%
    \thispagestyle{empty}
    \vbox to \textheight{%
        \begin{center}
            \large{National University of Science and Technology POLITEHNICA Bucharest\\
            Faculty of Electronics, Telecommunications and Information Technology}
        \end{center}
        \ifdraft
        {%
        \centering\vspace{20mm}\LARGE{\textcolor{red}{\textbf{DRAFT VERSION -- \today}\\[10mm]}}}
        {%
            \vspace{40mm}\nobreak\vspace{10bp}
        }
        \begin{center}
            \Large{\textbf{\@covertitle}}
        \end{center}
        \vspace{20mm}
        \begin{center}
            \ifisdissertation
            \Huge{\textbf{Dissertation Thesis}}
            \else
            \Huge{\textbf{Diploma Thesis}}
            \fi
        \end{center}
        \nobreak\vspace{4ex plus 2ex minus 2ex}
        \begin{center}
            \begin{large}
                \textbf{Submitted in partial fulfilment of the requirements}\\
                \ifisdissertation
                \textbf{for the degree of} \textit{Master of Science}\\
                \else
                \textbf{for the degree of} \textit{Engineer}\\
                \fi
                \textbf{in the domain of} \textit{\@domain}\\
                \textbf{\ifisdissertation master\else bachelor\fi\ study programme} \textit{\@programme}\\
            \end{large}
        \end{center}
        \vfil
        \begin{large}
            \textbf{%\
                \begin{tabularx}{\textwidth}{@{}>{\raggedright}Xr@{}}
                    \ifmultipleadvisors
                    \Large{Thesis advisors} & \Large{Student}\\
                    \else
                    \Large{Thesis advisor} & \Large{Student}\\
                    \fi
                    \@advisors & \@student\\
                \end{tabularx}
            }
        \end{large}
        \vfil
        \begin{center}
            \large{\textbf{\@thesismonth\ \@thesisyear}}
        \end{center}
    }
}

% Create the statement of academic honesty page
\newcommand{\statement}{%
    \thispagestyle{empty}
    \vfil
    \begin{center}
        \large\textbf{Statement of Academic Honesty}\\[15mm]
    \end{center}

    I hereby declare that the thesis titled \textit{\@covertitle}, submitted to the Faculty of Electronics, Telecommunications and Information Technology, National University of Science and Technology POLITEHNICA Bucharest, in partial fulfilment of the requirements for the degree of \ifisdissertation\textit{Master of Science}\else \textit{Engineer}\fi\ in the domain of \textit{\@domain}, \ifisdissertation master\else bachelor\fi\ study programme \textit{\@programme}, is written by myself and was never before submitted to any faculty or any higher learning institution in Romania or any other country.

    I declare that all information sources I used, including the ones I found on the Internet, are properly cited in the thesis as bibliographical references. Text fragments cited \enquote{as is} or translated from other languages are written between quotes and are referenced to the source. Reformulation using different words from certain texts is also properly referenced. I understand that plagiarism constitutes an offence punishable by law.

    I declare that all the results I present as coming from simulations, experiments, and measurements I performed, together with the procedures used to obtain them, are real and indeed come from respective simulations, experiments, or measurements. I understand that faking data or results is punishable per the university's regulations.

    \vfil
    Bucharest, \@thesismonth\ \@thesisyear

    \@student\\[0.5em]

    % \includegraphics{signature.png}\\[-2.5em]

    .........................
    \vfil
}

% Create the copyright page
\newcommand{\pagecopyright}{%
    \thispagestyle{empty}
    \vspace*{12em}
    \noindent Copyright \copyright\ \@thesisyear\ by \@copyrightentity\\[1em]
    All rights reserved\\[3em]

    \noindent Permission is hereby granted by the author to the National University of Science and Technology POLITEHNICA Bucharest to reproduce and publicly distribute this document, in whole or in part, in both paper and electronic formats.
    \vfil
}

% Create the English version of the Appendix no. 1/2 page
\newcommand{\appendixenglish}{%
    \newgeometry{left=1.5cm, right=1.5cm, top=1.5cm, bottom=1.5cm, headsep=0.5cm, footskip=0.5cm}
    \thispagestyle{empty}
    \begin{small}
        \begin{center}
            National University of Science and Technology POLITEHNICA Bucharest\\
            Faculty of Electronics, Telecommunications and Information Technology\\
            \ifisdissertation
            Master study programme \textbf{\@programme}
            \else
            Bachelor study programme \textbf{\@programme}
            \fi
        \end{center}
        \vspace{0.5em}
        \begin{center}
            \ifisdissertation
            \textbf{DISSERTATION THESIS TOPIC}\\
            \else
            \textbf{DIPLOMA THESIS TOPIC}\\
            \fi
            of student \textbf{\@topicfullstudent}, \textbf{\@topicgroup}
        \end{center}
        \begin{enumerate}[wide, leftmargin=*, label=\textbf{\arabic*.}, labelwidth=!, labelindent=0pt]
            \item \textbf{Thesis title:} \textit{\@covertitle}
            \item \textbf{Description of the research topic and the student's individual contributions (apart from the documentation part):}\\[0.5em]
                \@topicdescription
            \item \textbf{Academic courses upon which the thesis is based on:}\\[0.5em]
                \@topiccourses
                \ifisdissertation
            \item \textbf{Resources and bibliography:}
                \@topicresources
                \fi
            \item \textbf{Thesis registration date:} \@topicdate
        \end{enumerate}
        \begin{tabularx}{\textwidth}{@{}>{\raggedright}Xr@{}}
            \ifmultipleadvisors
            \textbf{Thesis advisors,} & \textbf{Student,}\\
            \else
            \textbf{Thesis advisor,} & \textbf{Student,}\\
            \fi
            \@advisors & \@topicfullstudent\\[2em]
        \end{tabularx}
        \ifisdissertation
        \textbf{Master programme coordinator,}\hfill \textbf{Dean,}\\
        \else
        \textbf{Department director,}\hfill \textbf{Dean,}\\
        \fi
        \@topicdirector\hfill \@topicdean\\[2.5em]
        Validation code: \textbf{\@topicvalidation}
    \end{small}
    \restoregeometry
}

% Create the Romanian version of the Appendix no. 1/2 page
\newcommand{\appendixromanian}{%
    \newgeometry{left=1.5cm, right=2cm, top=1.5cm, bottom=1.5cm, headsep=0.5cm, footskip=0.5cm}
    \begin{small}
        \begin{otherlanguage}{romanian}
            \thispagestyle{empty}
            \begin{center}
                Universitatea Națională de Știință și Tehnologie POLITEHNICA București\\
                Facultatea de Electronică, Telecomunicații și Tehnologia Informației\\
                \ifisdissertation
                Programul de studii de masterat \textbf{\@topicprogrammero}
                \else
                Programul de studii de licență \textbf{\@topicprogrammero}
                \fi
            \end{center}
            \vspace{0.5em}
            \begin{center}
                \ifisdissertation
                \textbf{TEMA PROIECTULUI DE DISERTAȚIE}\\
                \else
                \textbf{TEMA PROIECTULUI DE DIPLOMĂ}\\
                \fi
                a studentului \textbf{\@topicfullstudent}, \textbf{\@topicgroup}
            \end{center}
            \begin{enumerate}[wide, leftmargin=*, label=\textbf{\arabic*.}, labelwidth=!, labelindent=0pt]
                \item \textbf{Titlul proiectului:} \textit{\@topiccovertitlero}
                    \ifisdissertation
                \item \textbf{Descrierea temei de cercetare și a contribuțiilor individuale ale studentului (în afară de partea de documentare):}\\[0.5em]
                    \@topicdescriptionro
                    \else
                \item \textbf{Descrierea temei și a contribuțiilor individuale ale studentului (în afară de partea de documentare):}\\[0.5em]
                    \@topicdescriptionro
                    \fi
                \item \textbf{Disciplinele pe care se bazează proiectul:}\\[0.5em]
                    \@topiccoursesro
                    \ifisdissertation
                \item \textbf{Resurse și bibliografie:}
                    \@topicresourcesro
                    \fi
                \item \textbf{Data înregistrării proiectului:} \@topicdate
            \end{enumerate}
            \begin{tabularx}{\textwidth}{@{}>{\raggedright}Xr@{}}
                \ifmultipleadvisors
                \textbf{Conducători lucrare,} & \textbf{Absolvent,}\\
                \else
                \textbf{Conducător lucrare,} & \textbf{Absolvent,}\\
                \fi
                \@topicadvisorsro & \@topicfullstudent\\[2em]
            \end{tabularx}
            \ifisdissertation
            \textbf{Coordonator program de master,}\hfill \textbf{Decan,}\\
            \else
            \textbf{Director de departament,}\hfill \textbf{Decan,}\\
            \fi
            \@topicdirectorro\hfill \@topicdeanro\\[2.5em]
            Cod validare: \textbf{\@topicvalidation}
        \end{otherlanguage}
    \end{small}
    \restoregeometry
}

% Centers the provided content if it fits within the page width, otherwise it is displayed as is
\newcommand{\smartcenter}[1]{%
    \noindent
    \settowidth{\@tempdima}{#1}
    \ifdim\@tempdima<\linewidth
    \centerline{#1}
    \else
    #1
    \fi
}

% Create a full-page quotation with the provided content and author
\newcommand{\pagequotation}[2]{%
    \thispagestyle{empty}
    \null\vfill
    \begin{center}
        \parbox{\textwidth}{%
            \smartcenter{\huge\textit{\enquote{#1}}}\par\bigskip
            \raggedleft\LARGE\textsc{#2}\par
        }
    \end{center}
    \vfill\vfill
}

% Create the table of contents with the title "Table of Contents" page
\newcommand{\printtableofcontents}{%
    \renewcommand{\contentsname}{Table of Contents}
    \thispagestyle{empty}
    \tableofcontents
}

% Create the list of figures with the title "List of Figures" page
\newcommand{\printlistoffigures}{%
    \thispagestyle{empty}
    \renewcommand{\listfigurename}{List of Figures}
    \phantomsection\addcontentsline{toc}{chapter}{List of Figures}\listoffigures
}

% Create the list of tables with the title "List of Tables" page
\newcommand{\printlistoftables}{%
    \thispagestyle{empty}
    \renewcommand{\listtablename}{List of Tables}
    \phantomsection\addcontentsline{toc}{chapter}{List of Tables}\listoftables
}

% Create the list of algorithms with the title "List of Algorithms" page
\newcommand{\printlistofalgorithms}{%
    \thispagestyle{empty}
    \renewcommand{\listalgorithmcfname}{List of Algorithms}
    \phantomsection\addcontentsline{toc}{chapter}{List of Algorithms}\listofalgorithms
}

% Create the list of source codes with the title "List of Source Codes" page
\newcommand{\printlistoflistings}{%
    \thispagestyle{empty}
    \renewcommand{\listoflistingscaption}{List of Source Codes}
    \phantomsection\addcontentsline{toc}{chapter}{List of Source Codes}\listoflistings
}

% Create the list of acronyms with the title "List of Acronyms" page
\newcommand{\printlistofacronyms}{%
    \thispagestyle{empty}
    \chapter*{List of Acronyms}
    \phantomsection\addcontentsline{toc}{chapter}{List of Acronyms}
    \input{\@acronymsfile}
}

% Creates all the lists of the document
\newcommand{\printlistof}{%
    \ifincludelistoffigures
    \printlistoffigures
    \blankpage
    \fi
    \ifincludelistoftables
    \printlistoftables
    \blankpage
    \fi
    \ifincludelistofalgorithms
    \printlistofalgorithms
    \blankpage
    \fi
    \ifincludelistofsourcecodes
    \printlistoflistings
    \blankpage
    \fi
    \printlistofacronyms
}

% Set the two sided page style with the chapter title on the left and the title
% of the document on the right. The page number is displayed on the outer side
% of the page. Also, the header and footer lines are displayed.
\newcommand{\setpagesstyle}{%
    \pagenumbering{arabic}
    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[LE]{\nouppercase{\leftmark}}
    \fancyhead[RO]{\@pagetitle}
    \fancyfoot[LE, RO]{\thepage}
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\footrulewidth}{1pt}
}

% Redefine the plain page style as the one used for the rest of the document.
% This is used for the first page of each chapter.
\newcommand{\redifineplainstyle}{%
    \fancypagestyle{plain}{%
        \fancyhf{}
        \fancyhead[LE]{\nouppercase{\leftmark}}
        \fancyhead[RO]{\@pagetitle}
        \fancyfoot[LE, RO]{\thepage}
        \renewcommand{\headrulewidth}{1pt}
        \renewcommand{\footrulewidth}{1pt}
    }
}

% ******************************************************************************
%
%  Conditional and command definitions for the thesis type
%
% ******************************************************************************

\newif\ifisdissertation
\isdissertationfalse

\newcommand{\SetToDissertation}{%
    \isdissertationtrue
}

% ******************************************************************************
%
%  Conditional and command definitions for the multiple advisors
%
% ******************************************************************************

\newif\ifmultipleadvisors
\multipleadvisorsfalse

\newcommand{\SetToMultipleAdvisors}{%
    \multipleadvisorstrue
}

% ******************************************************************************
%
%  Conditional and command definitions for the full-page quotation
%
% ******************************************************************************

\newif\ifquotationpage
\quotationpagefalse

\newcommand{\IncludeQuotationPage}{%
    \quotationpagetrue
}

% ******************************************************************************
%
%  Conditional and command definitions for the copyright page
%
% ******************************************************************************

\newif\ifcopyrightpage
\copyrightpagefalse

\newcommand{\IncludeCopyrightPage}{%
    \copyrightpagetrue
}

% ******************************************************************************
%
%  Conditional and command definitions for the Englsh Appendix no. 1/2 page
%
% ******************************************************************************

\newif\ifappendixenglishpage
\appendixenglishpagefalse

\newcommand{\IncludeEnglishAppendixPage}{%
    \appendixenglishpagetrue
}

% ******************************************************************************
%
%  Conditional and command definitions for the Romanian Appendix no. 1/2 page
%
% ******************************************************************************

\newif\ifappendixromanianpage
\appendixromanianpagefalse

\newcommand{\IncludeRomanianAppendixPage}{%
    \appendixromanianpagetrue
}

% ******************************************************************************
%
%  Conditional and command definitions for the List Of Figures page
%
% ******************************************************************************

\newif\ifincludelistoffigures
\includelistoffigurestrue

\newcommand{\DoNotIncludeListOfFigures}{%
    \includelistoffiguresfalse
}

% ******************************************************************************
%
%  Conditional and command definitions for the List Of Tables page
%
% ******************************************************************************

\newif\ifincludelistoftables
\includelistoftablestrue

\newcommand{\DoNotIncludeListOfTables}{%
    \includelistoftablesfalse
}

% ******************************************************************************
%
%  Conditional and command definitions for the List Of Algorithms page
%
% ******************************************************************************

\newif\ifincludelistofalgorithms
\includelistofalgorithmstrue

\newcommand{\DoNotIncludeListOfAlgorithms}{%
    \includelistofalgorithmsfalse
}

% ******************************************************************************
%
%  Conditional and command definitions for the List Of Source Codes page
%
% ******************************************************************************

\newif\ifincludelistofsourcecodes
\includelistofsourcecodestrue

\newcommand{\DoNotIncludeListOfSourceCodes}{%
    \includelistofsourcecodesfalse
}

% ******************************************************************************
%
%  Set the PDF links for the document to be coloured when in draft mode.
%  Must be called before the document starts.
%
% ******************************************************************************

\newcommand{\setpdflinks}{%
    \ifdraft{%
        \hypersetup{
            bookmarksopen=true,
            breaklinks=true,
            colorlinks=true,
            linkcolor=red,
            filecolor=red,
            urlcolor=blue,
            anchorcolor=red,
            citecolor=magenta,
            pdftitle={\@covertitle},
            pdfauthor={\@student},
            final
        }
    }
    {%
        \hypersetup{
            bookmarksopen=true,
            breaklinks=true,
            colorlinks=true,
            linkcolor=black,
            filecolor=black,
            urlcolor=black,
            anchorcolor=black,
            citecolor=black,
            pdftitle={\@covertitle},
            pdfauthor={\@student},
            final
        }
    }
}

% ******************************************************************************
%
%  Creates all the necessary pages before the content of the document.
%  Must be called after the document starts but before the content.
%
% ******************************************************************************

\newcommand{\beforecontent}{%
    \pagenumbering{gobble}
    \setstretch{1.1}
    \oneside
    \frontcover
    \blankpage
    \setstretch{1.2}
    \statement
    \blankpage
    \ifcopyrightpage
    \setstretch{1.2}
    \pagecopyright
    \blankpage
    \fi
    \setstretch{1}
    \ifappendixenglishpage
    \appendixenglish
    \blankpage
    \fi
    \ifappendixromanianpage
    \appendixromanian
    \blankpage
    \fi
    \setstretch{1.2}
    \ifquotationpage
    \pagequotation{\@quotationcontent}{\@quotationauthor}
    \blankpage
    \fi
    \normalsize
    \printtableofcontents
    \blankpage
    \pagenumbering{Roman}
    \printlistof
    \blankpage
    \twoside
    \redifineplainstyle
    \setpagesstyle
}

% ******************************************************************************
%
%  Creates all the necessary pages after the content of the document.
%  Must be called after the document starts, but after the content and before
%  the appendices.
%
% ******************************************************************************

\newcommand{\aftercontent}{%
    \cleardoublepage
    \setstretch{1}
    \printbibliography[title=Bibliography, heading=bibintoc]
    \setstretch{1.2}
    \appendix
    \counterwithin{figure}{chapter}
    \counterwithin{table}{chapter}
    \renewcommand\thefigure{\thechapter\arabic{figure}}
    \renewcommand\thetable{\thechapter\arabic{table}}
}

% ******************************************************************************
%
%  Creates a new chapter with a number and a title.
%
% ******************************************************************************

\newcommand{\numberedchapter}[1]{%
    \cleardoublepage
    \chapter{#1}
}

% ******************************************************************************
%
%  Creates a new section with a number and a title.
%
% ******************************************************************************

\newcommand{\numberedsection}[1]{%
    \section{#1}
}

% ******************************************************************************
%
%  Creates a new subsection with a number and a title.
%
% ******************************************************************************

\newcommand{\numberedsubsection}[1]{%
    \subsection{#1}
}

% ******************************************************************************
%
%  Creates a new unnumbered chapter with a title.
%
% ******************************************************************************

\newcommand{\unnumberedchapter}[1]{%
    \cleardoublepage
    \chapter*{#1}
    \phantomsection\addcontentsline{toc}{chapter}{#1}
    \markboth{#1}{#1}
}

% ******************************************************************************
%
%  Creates a new unnumbered section with a title.
%
% ******************************************************************************

\newcommand{\unnumberedsection}[1]{%
    \section*{#1}
    \phantomsection\addcontentsline{toc}{section}{#1}
}

% ******************************************************************************
%
%  Creates a new unnumbered subsection with a title.
%
% ******************************************************************************

\newcommand{\unnumberedsubsection}[1]{%
    \subsection*{#1}
    \phantomsection\addcontentsline{toc}{subsection}{#1}
}

% ******************************************************************************
%
%  Defines a new acronyms environment where acronyms can be added and are
%  automatically sorted.
%
% ******************************************************************************

\newenvironment{acronyms}{\DTLifdbexists{acronymslist}{\DTLcleardb{acronymslist}}{\DTLnewdb{acronymslist}}}{%
    \DTLsort{sortlabel}{acronymslist} % Sort the list
    \noindent
    \DTLforeach*{acronymslist}{\theName=sortlabel,\theDesc=description}{\textbf{\theName} \textbf{--} \theDesc\\[5pt]}
}

% ******************************************************************************
%
%  Defines a new acronym with a label and a description.
%  Must be used inside the acronyms environment.
%
% ******************************************************************************

\newcommand{\acronym}[2][]{%
    \DTLnewrow{acronymslist} % Create a new entry
    \DTLnewdbentry{acronymslist}{sortlabel}{#1} % Add acronym
    \DTLnewdbentry{acronymslist}{description}{#2} % Add description
}

% ******************************************************************************
%
%  Creates a new code listing with the provided language, filename, caption, and
%  label. The code is read from the "code" folder.
%
% ******************************************************************************

\newcommand{\newcode}[4]{%
    \begin{code}
        \inputminted[fontsize=\scriptsize, baselinestretch=1, framesep=5pt, bgcolor=codebg, breaklines=true, codetagify=true, fontfamily=JetBrainsMono]{#1}{code/#2}
        \caption{#3}
        \label{code:#4}
    \end{code}
}
