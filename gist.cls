%
%      Original Title:  gist.cls
%
%      LaTeX class file for GIST thesis
%      Gwangju Institute of Science and Technology
%
% Modification Log:
% -----------------
% .01  11/21/96        S.H. Lee    Set page dimensions
% .02  12/30/96        Y. Chung    Redefine plain pagestyle
%                                  Reformat and rearrage cover sheets
% .03  01/14/97        Y. Chung    Added dedication page
% .04  01/17/97        S.H. Lee    Correct the page mismatching
%
% .05  11/25/98        S.H. Lee    Enable more referees up to 7
% .06  12/25/98        S.H. Lee    Respell "&" to "and"
% .07  06/30/99        S.H. Lee    Added Curriculum Vitae
% .08  07/01/99        S.H. Lee    Support Hangul thesis
% .09  01/01/00        S.H. Lee    Support doctoral dissertation
% .10  08/30/12        M.-C. Park    color package inclusion

%
% LaTeX customizations (Y. Chung, 12/30/96)
%

%
% Redefine plain pagestyle.
%

\def\ps@plain{\def\@oddhead{}\def\@oddfoot{\rm\hfil-- \thepage\ --
     \hfil}\def\@evenhead{}\let\@evenfoot\@oddfoot}

%
% End of LaTeX customizations
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gist}[1996/12/30 Document class for GIST thesis]

%\RequirePackage{hfont}
\LoadClass[11pt,oneside,a4paper]{report}

\DeclareOption{korean}{\gdef\@korean{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

\usepackage{color}

\AtBeginDocument{\make@covertitle}

\topmargin=10mm
\oddsidemargin=4mm
\evensidemargin=\oddsidemargin
\textwidth=155mm
\textheight=224mm
\footskip=14mm
\headheight=0mm
\headsep=0mm
\topskip=0mm
\overfullrule=0pt
\def\baselinestretch{2.0}
\def\bibname{Bibliography}
\def\code#1{\def\@code{#1}} 
\def\emajor#1{\def\@emajor{#1}}
\def\kmajor#1{\def\@kmajor{#1}}
\def\etitle#1{\def\@etitle{#1}}
\def\ktitle#1{\def\@ktitle{#1}}
\def\advisor#1{\def\@advisor{#1}}
\def\coadvisor#1{\def\@coadvisor{#1}}
\def\kadvisor#1{\def\@kadvisor{#1}}
\def\kcoadvisor#1{\def\@kcoadvisor{#1}}
\def\ename#1{\def\@ename{#1}}
\def\kname#1{\def\@kname{#1}}
\def\studentid#1{\def\@studentid{#1}}
\def\coveryear#1{\def\@coveryear{#1}}
\def\advisorsigndate#1#2#3{\def\@advisorsigndate{#1 #2, #3}}

\ifx\@korean\@@@@undefined@@@@
\def\refereesigndate#1#2#3{\def\@refereesigndate{#1 #2, #3}}
\def\@reftitlea{Thesis Advisor}
\def\@reftitleb{Committee Member}
\def\birthday#1#2#3{\def\@birthday{#1 #2, #3}}
\else
\def\refereesigndate#1#2#3{\def\@refereesigndate{#1�� #2�� #3��}}
\def\@reftitlea{�ɻ�������}
\def\@reftitleb{��~��~��~��}
\def\birthday#1#2#3{\def\@birthday{#1�� #2�� #3��}}
\fi

\def\refereeA#1{\def\@refereeA{#1}}
\def\refereeB#1{\def\@refereeB{#1}}
\def\refereeC#1{\def\@refereeC{#1}}
\def\refereeD#1{\def\@refereeD{#1}}
\def\refereeE#1{\def\@refereeE{#1}}
\def\refereeF#1{\def\@refereeF{#1}}
\def\refereeG#1{\def\@refereeG{#1}}
\def\npages#1{\def{\@npages{#1}}}
\def\@npages{\pageref{paperlastpagelabel}}
\def\dedication#1{\def\@dedication{#1}}
\def\birthplace#1{\def\@birthplace{#1}}
\def\addr#1{\def\@addr{#1}}

\def\MS@char{MS/}
\def\split@code#1#2\eop{\def\@md{#1}\def\@dept{#2}}
\def\split@kname#1#2#3\eop{\def\@korname{#1 #2 #3}}
\def\SIM{SIM}
\def\ME{ME}
\def\MS{MS}
\def\ES{ES}
\def\LS{LS}

\pagestyle{plain}
\def\insert@hss#1#2{#1#2\hss}
\def\maketitlebreakwork{\def\titlebreak{\\\ignorespaces}}
\def\maketitlebreaknotwork{\def\titlebreak{\ }}
\maketitlebreaknotwork
\def\make@covertitle{
  \ifx\@korean\@@@@undefined@@@@
    \def\contentsnamen{List of Contents}
    \else
    \def\contentsname{��~~~~~~~~��}
    \def\contentsnamen{��~~~~~~~~��}
    \def\listfigurename{�� �� �� ��}
    \def\listtablename{ǥ~~\,\,��~~\,��}
    \def\refname{�� �� �� ��}
    \def\bibname{�� �� �� ��}
    \def\indexname{ã �� �� ��}
    \def\figurename{�׸�}
    \def\tablename{ǥ}
  \fi
  \expandafter\split@code\@code\eop
  \expandafter\split@kname\@kname\eop
  \ifx\@dept\SIM	\def\@edept{School of Information and Mechatronics} 
                \def\@kdept{�����������к�}
                \def\@kdeptn{�� �� �� �� �� �� ��}
                \def\@em{Science}\fi
  \ifx\@dept\ME	\def\@edept{School of Mechanical Engineering} 
                \def\@kdept{�������к�}
                \def\@kdeptn{�� �� �� �� ��}
                \def\@em{Science}\fi
  \ifx\@dept\MS \def\@edept{Department of Materials Science and Engineering}
                \def\@kdept{�ż������а�}
                \def\@kdeptn{�� �� �� �� �� ��}
                \def\@em{Science}\fi
  \ifx\@dept\ES \def\@edept{Department of Environmental Science and Engineering}
                \def\@kdept{ȯ�����а�}
                \def\@kdeptn{ȯ �� �� �� ��}
                \def\@em{Science}\fi
  \ifx\@dept\LS \def\@edept{Department of Life Science}
                \def\@kdept{�������а�}
                \def\@kdeptn{�� �� �� �� ��}
                \def\@em{Science}\fi

  \ifx \MS@char\@md \def\@kmd{����} \def\@emd{Master of \@em}
  \else \def\@kmd{�ڻ�} \def\@emd{Doctor of Philosophy} \fi

\ifx\@korean\@@@@undefined@@@@

%
% cover sheet in English
%

  \thispagestyle{empty}
    \vspace*{24mm}
    \maketitlebreakwork
    \leavevmode{
    \fontsize{14}{1pt}\selectfont
    \hspace{12mm}
    \ifx\MS@char\@md
    Thesis\ for\ Master's\ Degree
    \else
    Dissertation for Doctor of Philosophy
    \fi } \\
    \vbox to 1mm {
      \vspace*{30mm}
      \begin{center}
        \fontsize{18}{13pt}\selectfont \@etitle  \\
      \end{center}
    }
    \vspace*{79mm}
    \begin{center}  
      \fontsize{13}{1pt}\selectfont \@ename{ } \\
      \vspace*{10mm}
      \@edept \\
      \fontsize{17}{1pt}\selectfont
      \vspace*{15mm}
      Gwangju Institute of Science and Technology\\
      \vspace*{20mm}
      \fontsize{13}{1pt}\selectfont
      \@coveryear
      \maketitlebreaknotwork
    \end{center}

\fi

%
% cover sheet in Korean
%
%  \newpage
%  \thispagestyle{empty}
%    \vspace*{24mm}
%    \maketitlebreakwork
%    \leavevmode\hbox to50mm{
%    \fontsize{14}{1pt}\selectfont
%    \hspace{12mm}
%    \expandafter\insert@hss\@kmd\hss ��\hss ��\hss ��\hss ��} \\
%    \vbox to 1mm {
%      \vspace*{30mm}
%      \begin{center}
%        \fontsize{20.74}{14pt}\selectfont \@ktitle  \\
%      \end{center}
%    }
%    \vspace*{79mm}
%    \begin{center}  
%      \fontsize{14}{1pt}\selectfont \@korname \\
%      \vspace*{10mm}
%      \@kdeptn{ }\\
%      \fontsize{17}{1pt}\selectfont
%      \vspace*{15mm}
%      �� �� �� �� �� �� ��\\
%      \vspace*{20mm}
%      \fontsize{14}{1pt}\selectfont
%      \@coveryear
%      \maketitlebreaknotwork
%    \end{center}

%
% Submission of thesis
%

  \newpage\thispagestyle{empty}
  \vbox to\textheight{
  \begin{center}
    \fontsize{18}{13pt}\selectfont{\maketitlebreakwork
    \@etitle
    \maketitlebreaknotwork}\\
    \vspace{6mm}
    \fontsize{14}{14pt}\selectfont
    Advisor: \@advisor\\
    \ifx\@coadvisor\@@@@undefined@@@@ \else Co-Advisor: \@coadvisor\\ \fi
    \vspace{2mm} by\\\vspace{2mm}\@ename\\[2mm]
    \@edept{ } \\%%%\mbox{(\@emajor{ }program)}\\
    Gwangju Institute of Science and Technology
  \end{center}
  \vfill
  \begin{trivlist}
    \item[]\fontsize{14}{14pt}\selectfont
    \hskip 1em A thesis submitted to the faculty of the Gwangju Institute
    of Science and Technology in partial fulfillment
    of the requirements for the degree of {\@emd} in the {\@edept} %%%({\@emajor} program)
  \end{trivlist}
  \vfill
  \begin{flushright}
   \fontsize{14}{14pt}\selectfont
   \parbox{7cm}{
     \raggedright\noindent Gwangju, Republic of Korea\\\@advisorsigndate\\Approved by\\
     \vskip 10mm\hrule\vskip 8pt
     \noindent Professor \@advisor \\
     \noindent Thesis Advisor \\
   }
  \end{flushright}
  }

%
% Acceptance of thesis
%

\ifx\@korean\@@@@undefined@@@@

  \newpage\thispagestyle{empty}
  \vbox to\textheight{
  \vspace*{5mm}
  \begin{center}\fontsize{18}{14pt}\selectfont{\maketitlebreakwork
    \@etitle
    \maketitlebreaknotwork}\\[1cm]
    \fontsize{17}{14pt}\selectfont
    \@ename \\
  \vspace*{10mm}
  \fontsize{14}{16pt}\selectfont
  Accepted in partial fulfillment of the requirements for the\\
  degree of {\@emd}
  \end{center}
  \vspace*{10mm}
  \begin{flushright}\fontsize{14}{10pt}\selectfont
    \@refereesigndate\\[1cm]
    \begin{tabular}{rlc@{}}
      \@reftitlea & \hrulefill \\[1pt] & \@refereeA \\[25pt]
      \ifx\@refereeB\@@@@undefined@@@@\else
      \@reftitleb & \hrulefill \\[1pt] & \@refereeB \\[25pt]
      \fi
      \ifx\@refereeC\@@@@undefined@@@@\else
      \@reftitleb & \hrulefill \\[1pt] & \@refereeC \\[25pt]
      \fi
      \ifx\@refereeD\@@@@undefined@@@@\else
      \@reftitleb & \hrulefill \\[1pt] & \@refereeD \\[25pt]
      \fi
      \ifx\@refereeE\@@@@undefined@@@@\else
      \@reftitleb & \hrulefill \\[1pt] & \@refereeE \\[25pt]
      \fi
      \ifx\@refereeF\@@@@undefined@@@@\else
      \@reftitleb & \hrulefill \\[1pt] & \@refereeF \\[25pt]
      \fi
      \ifx\@refereeG\@@@@undefined@@@@\else
      \@reftitleb & \hrulefill \\[1pt] & \@refereeG \\[25pt]
      \fi
    \end{tabular}
  \end{flushright}
  \vskip-9pt}

\else

  \newpage\thispagestyle{empty}
  \vbox to\textheight{
  \vspace*{5mm}
  \begin{center}\fontsize{20.74}{14pt}\selectfont{\maketitlebreakwork
    \@ktitle
    \maketitlebreaknotwork}\\[1cm]
    \fontsize{17}{20pt}\selectfont
    \@korname \\
  \vspace*{20mm}
  \fontsize{14}{16pt}\selectfont
  �� ������ ���ְ��б����� 
  {\@kmd}������������ ������
  \end{center}
  \vspace*{10mm}
  \begin{flushright}\fontsize{14}{10pt}\selectfont
    \@refereesigndate\\[1cm]
    \begin{tabular}{rlc@{}}
      \@reftitlea & \@refereeA & ~~(��) \\[25pt] 
      \ifx\@refereeB\@@@@undefined@@@@\else
      \@reftitleb & \@refereeB & ~~(��) \\[25pt]
      \fi
      \ifx\@refereeC\@@@@undefined@@@@\else
      \@reftitleb & \@refereeC & ~~(��) \\[25pt]
      \fi
      \ifx\@refereeD\@@@@undefined@@@@\else
      \@reftitleb & \@refereeD & ~~(��) \\[25pt]
      \fi
      \ifx\@refereeE\@@@@undefined@@@@\else
      \@reftitleb & \@refereeE & ~~(��) \\[25pt]
      \fi
      \ifx\@refereeF\@@@@undefined@@@@\else
      \@reftitleb & \@refereeF & ~~(��) \\[25pt]
      \fi
      \ifx\@refereeG\@@@@undefined@@@@\else
      \@reftitleb & \@refereeG & ~~(��) \\[25pt]
      \fi
    \end{tabular}
  \end{flushright}
  \vskip-9pt}

\fi

%
% dedication
%

  \newpage\thispagestyle{empty}
  \vbox to\textheight{
    \begin{center}
    \vfill \@dedication \vfill
    \end{center}
  }
  \newpage
}
	
%
% abstract definition - English
%

\def\eabstract{
  \ifx\@korean\@@@@undefined@@@@
    \pagenumbering{roman}
    \setcounter{page}{1}
  \fi
  \addcontentsline{toc}{chapter}{\fontsize{12}{1pt}\selectfont
  \ifx\@korean\@@@@undefined@@@@ Abstract \else �� �� �� �� \fi}
  {\fontsize{12}{7pt}\selectfont
  \hbox{\parbox[t]{2cm}{\strut\@code\\\@studentid}\advance\linewidth by-2cm
  \hspace{1mm}
  \parbox[t]{132mm}{\@ename. {\maketitlebreaknotwork \@etitle.}
  \@edept.
  \@coveryear. \@npages{p}. Advisor: Prof. \@advisor \ifx\@coadvisor\@@@@undefined@@@@
  \else, \@coadvisor\fi.}}}
  \vskip3cm
  \begin{center}
  {\fontsize{14}{1pt}\selectfont \bf{Abstract}}
  \end{center}
  \vskip0.5cm
  \fontsize{12}{10pt}\selectfont
  \hspace{8mm}
}
\def\endeabstract{
  \vfill
  \begin{center}
  \rm
  \ \copyright \@coveryear \\
  \@ename \\
  ALL RIGHTS RESERVED
  \end{center}
  \ifx\@korean\@@@@undefined@@@@
  \thispagestyle{plain}\pagestyle{plain}
  \newpage
  \else
  \newpage
  \thispagestyle{empty}\pagestyle{empty}
  \vbox to\textheight{}
  \newpage    
  \thispagestyle{plain}\pagestyle{plain}
  \fi
}

%
% abstract definition - Korean
%

%\def\kabstract{
%  \ifx\@korean\@@@@undefined@@@@\else
%    \pagenumbering{roman}
%    \setcounter{page}{1}
%  \fi
%  \addcontentsline{toc}{chapter}{\fontsize{12}{1pt}\selectfont
%  \ifx\@korean\@@@@undefined@@@@ Abstract (Korean) \else �� �� �� �� \fi}
%  {\fontsize{12}{7pt}\selectfont
%  \hbox{\parbox[t]{2cm}{\strut\@code\\\@studentid}\advance\linewidth by-2cm
%  \hspace{1mm}
%  \parbox[t]{132mm}{\@kname. {\maketitlebreaknotwork \@ktitle.}
%  \@kdept.
%  \@coveryear. \@npages{p}. ��������: \@kadvisor \ifx\@kcoadvisor\@@@@undefined@@@@
%  \else, \@kcoadvisor\fi.}}}
%  \vskip3cm
%  \begin{center}
%  {\fontsize{14}{1pt}\selectfont \bf{�� �� �� ��}}
%  \end{center}
%  \vskip0.5cm
%  \fontsize{12}{10pt}\selectfont
%  \hspace{8mm}
%}
%\def\endkabstract{
%  \vfill
%  \begin{center}
%  \rm
%  \ \copyright \@coveryear \\
%  \@korname\\
%  ALL RIGHTS RESERVED
%  \end{center}
%  \thispagestyle{plain}\pagestyle{plain}
%  \newpage
%}

%
% Figure and Table definition
%

\def\listtables{
  \addcontentsline{toc}{chapter}{\fontsize{12}{1pt}\selectfont \listtablename} % List of Tables}
  {\let\thispagestyle\@gobble \listoftables }
  \thispagestyle{plain}\pagestyle{plain}
  \newpage
}

\def\listfigures{
  \addcontentsline{toc}{chapter}{\fontsize{12}{1pt}\selectfont \listfigurename} % List of Figures}
  {\let\thispagestyle\@gobble \listoffigures }
  \thispagestyle{plain}\pagestyle{plain}
  \newpage
}

%
% contents definition
%

\def\makecontents{
  \addcontentsline{toc}{chapter}{\fontsize{12}{1pt}\selectfont \contentsnamen} % List of Contents}
  {\let\thispagestyle\@gobble 
   \fontsize{12}{10}\selectfont
   \tableofcontents
  }
  \thispagestyle{plain}\pagestyle{plain}
  \newpage
}

%
% chapter definition
%

\def\@makechapterhead#1{
  {
	\parindent=0pt
		\ifnum \c@secnumdepth >\m@ne
      \LARGE\bf
      \ifx\@korean\@@@@undefined@@@@
        \@chapapp{} \thechapter
      \else
        �� \thechapter ��
      \fi
    \vskip0pt
    \fi
    \LARGE\bf #1 \vskip50pt
    \nobreak
  }
}

\def\@makeschapterhead#1{
  {\parindent=0pt\begin{center}
    \Large\bf #1\par
    \nobreak\vskip10pt \end{center}
  }
}

%
% numbering definition
%

\def\@chapapp{Chapter}
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\thesection}{\thechapter.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}

%
% section definition
%

\def\section{
  \@startsection {section}{1}{\z@}
  {3.5ex plus 1ex minus .2ex}
  {1.7ex plus.2ex}
  {\bf}
}

%
% subsection definition
%

\def\subsection{
  \@startsection{subsection}{2}{\z@}
  {3.25ex plus 1ex minus .2ex}
  {1.7ex plus.2ex}
%  {-1em}
  {\bf}
}

%
% appendix definition
%

\def\appendix{\par\setcounter{chapter}{0}\setcounter{section}{0}
  \def\@chapapp{Appendix}
  \def\thechapter{\Alph{chapter}}
}

%
% summary definition
%
%
%\def\summary{\chapter*{Summary}
%  \addcontentsline{toc}{chapter}{Summary (in Korean)}
%  \thispagestyle{empty}\pagestyle{empty}
%  \begin{center}\fontsize{14}{20pt}\selectfont{\maketitlebreakwork\@ktitle
%    \maketitlebreaknotwork}
%  \end{center}\vspace{1.5cm}
%}

%
% bibliography definition
%

\def\thebibliography#1{\chapter*{\bibname\@mkboth
 {\uppercase{\bibname}}{\uppercase{\bibname}}}
 \addcontentsline{toc}{chapter}{\bibname}\list
 {\arabic{enumi}.~}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
 \advance\leftmargin\labelsep
 \usecounter{enumi}}
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy\clubpenalty4000\widowpenalty4000
 \sfcode`\.=1000\relax\thispagestyle{plain}\pagestyle{plain}\relax
}

\def\endthebibliography{\label{paperlastpagelabel}
  \def\@noitemerr{\@warning{Empty `thebibliography' environment}}
  \thispagestyle{plain}\pagestyle{plain}
  \endlist
}

%
% acknowledgements definition
%

\def\acknowledgements{\chapter*{\ifx\@korean\@@@@undefined@@@@ Acknowledgements \else �� �� �� �� \fi}
  \addcontentsline{toc}{chapter}{\fontsize{12}{1pt}\selectfont
  \ifx\@korean\@@@@undefined@@@@ Acknowledgements \else �� �� �� �� \fi }
}
\def\endacknowledgements{
    \ifx\@korean\@@@@undefined@@@@
    \newpage
    % \thispagestyle{empty}\pagestyle{empty}
    % \vbox to\textheight{}
    \newpage    
    \thispagestyle{plain}\pagestyle{plain}
    \else
    \thispagestyle{plain}\pagestyle{plain}
    \newpage
    \fi
}

%
% Curriculum Vitae definition
%

\ifx\@korean\@@@@undefined@@@@

\def\vitae{\chapter*{Curriculum Vitae}
  \thispagestyle{empty}\pagestyle{empty}
  \begin{tabular}{@{}ccl}
    \hbox to 35mm{Name\hss}&:& \@ename \\[-10pt]
    \hbox to 35mm{Birth Date\hss}&:& \@birthday \\[-10pt]
    \hbox to 35mm{Birth Place\hss}&:& \@birthplace \\[-10pt]
    \hbox to 35mm{Permanent Address\hss}&:& \@addr \\
  \end{tabular}}
\newlength{\temp@len}

\else

\def\vitae{\chapter*{�� �� ��}
  \thispagestyle{empty}\pagestyle{empty}
  \begin{tabular}{@{}ccl}
    \hbox to 20mm{��~~~~~~~~~��\hss}&:& \@korname \\[-10pt]
    \hbox to 20mm{�� �� �� ��\hss}&:& \@birthday \\[-10pt]
    \hbox to 20mm{��~~~��~~~��\hss}&:& \@birthplace \\[-10pt]
    \hbox to 20mm{��~~~~~~~~~��\hss}&:& \@addr \\
  \end{tabular}}
\newlength{\temp@len}

\fi

\def\education#1{\vspace{.5cm}
  \begin{center} \ifx\@korean\@@@@undefined@@@@ Education \else ��~~~~~~~~�� \fi
  \end{center}\vspace{.5cm}\settowidth{\temp@len}{#1}
  \begin{list}{}{\labelwidth=\temp@len\labelsep=.5cm
  \advance\temp@len by.5cm\leftmargin=\temp@len
  \def\makelabel##1{##1\hss}} \fontsize{12}{5pt}\selectfont}
\def\endeducation{\end{list}}

\def\experience#1{%\vspace{.5cm}
  \begin{center} \ifx\@korean\@@@@undefined@@@@ Work Experience \else ��~~~~~~~~�� \fi
  \end{center}\vspace{.1cm}\settowidth{\temp@len}{#1}
  \begin{list}{}{\labelwidth=\temp@len\labelsep=.5cm
  \advance\temp@len by.5cm\leftmargin=\temp@len
  \def\makelabel##1{##1\hss}} \fontsize{12}{5pt}\selectfont}
\def\endexperience{\end{list}}

\def\publication#1{\vspace{.5cm}
	\begin{center} \ifx\@korean\@@@@undefined@@@@ Publications \else ��~~~~~~~~�� \fi
	\end{center}\vspace{.1cm}\settowidth{\temp@len}{#1}
	\begin{enumerate}{}{\labelwidth=\temp@len\labelsep=.5cm
	\advance\temp@len by.5cm\leftmargin=\temp@len
	\def\makelabel##1{##1\hss}} \fontsize{12}{5pt}\selectfont}
\def\endpublication{\end{enumerate}}

\def\activity{%\vspace{.5cm}
  \begin{center} \ifx\@korean\@@@@undefined@@@@ Professional Activities \else �� ȸ Ȱ �� \fi
  \end{center}\vspace{.5cm} \fontsize{12}{8pt}\selectfont}
\def\endactivity{}

\def\awards{\vspace{.5cm}
  \begin{center} \ifx\@korean\@@@@undefined@@@@ Honors and Awards \else �� �� �� �� \fi
  \end{center}\vspace{.5cm} \fontsize{12}{8pt}\selectfont}
\def\endawards{}

%
% end of gist.cls
%
