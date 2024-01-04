# THU LaTeX template

This template makes it easy to write papers such as Bachelor's or Master's theses using LaTeX. The official formatting of the "Technische Hochschule Ulm" is adhered to.

**Contents:**

*   [Structure of the template](#structure-of-the-template)
*   [Files to be edited](#files-to-be-edited)
*   [Using the template](#using-the-template)
*   [Tips and tricks for using the template](#tips-and-tricks-for-using-the-template)

&nbsp;
# Structure of the template

The template is essentially divided into three parts:

*   The *main.tex* file
*   The *static* folder
*   The *content* folder

The files in the *static* folder and *main.tex* only need to be changed if you want to change the template itself. Only the files in the *content* folder are required to fill the template with content.

The *main.tex* file serves as the core file of the template and is therefore also the one that needs to be compiled.

> The files *LICENSE*, *.gitignore*, *README.md* and *README_english.md* are irrelevant for using the LaTeX template.

&nbsp;
# Files to be edited
Files in the *content* folder are there to be edited and filled with content. These are explained below.

## The *settings.tex* file
The *settings.tex* file contains various variables that need to be set. These are divided into two subject areas. Firstly, document properties are defined and then the option to exclude or include specific pages is given.

### Document properties
Variables such as the name, matriculation number etc. are assigned here so that they appear correctly formatted on the title page.

| Variable                     | Description                                                                        | Possible Values                           |
|------------------------------|------------------------------------------------------------------------------------|-------------------------------------------|
| `\documentType`              | Document type                                                                      |                                           |
| `\documentTitle`             | Title of the thesis                                                                |                                           |
| `\academicDegree`            | Degree to be obtained (only necessary for Bachelor's, Master's or doctoral theses) | *(leave empty if there is none)*          |
| `\studyProgram`              | Study program                                                                      |                                           |
| `\name`                      | Name of the author                                                                 |                                           |
| `\studentNumber`             | Matriculation number of the author                                                 | *(leave empty if there is none)*          |
| `\secondName`                | Name of the second author                                                          | *(leave empty if there is none)*          |
| `\secondMatriculationNumber` | Matriculation number of the second author                                          | *(irrelevant if `\secondName` is empty)*  |
| `\thirdName`                 | Name of the third author                                                           | *(leave empty if there is none)*          |
| `\thirdMatriculationNumber`  | Matriculation number of the third author                                           | *(irrelevant if `\thirdName` is empty)*   |
| `\fourthName`                | Name of the fourth author                                                          | *(leave empty if there is none)*          |
| `\fourthMatriculationNumber` | Matriculation number of the fourth author                                          | *(irrelevant if `\fourthName` is empty)*  |
| `\fifthName`                 | Name of the fifth author                                                           | *(leave empty if there is none)*          |
| `\fifthMatriculationNumber`  | Matriculation number of the fifth author                                           | *(irrelevant if `\fifthName` is empty)*   |
| `\firstExaminer`             | Name of the first examiner                                                         |                                           |
| `\secondExaminer`            | Name of the second examiner                                                        | *(leave empty if there is none)*          |
| `\coSupervisor`              | Name of the co-supervisor                                                          | *(leave empty if there is none)*          |
| `\courseOfStudies`           | Name of the course of studies                                                      | *(leave empty if there is none)*          |
| `\submissionDate`            | Date of submission                                                                 |                                           |
| `\location`                  | Place of submission                                                                |                                           |
| `\documentLanguage`          | Language of the thesis                                                             | `de`<br/>`en`                             |
| `\specialGrammar`            | *just relevant in German language (see README.md)*                                 |                                           |

### Inclusion of special pages
Here you can define which pages (apart from the chapters) are to be included in the PDF. It is recommended that these settings are only made after the work has been completed, as functions may be used that would otherwise not be printed. For example, you should not create any citations without printing a bibliography.

| Variable                   | Description                                       | Possible values                                |
|----------------------------|---------------------------------------------------|------------------------------------------------|
| `\printTitlepage`          | Whether the title page should be used             | `true`<br/>`false`                             |
| `\printcompanyLogo`        | Whether an extra company logo should be used      | `true`<br/>`false`                             |
| `\companyLogoPath`         | Path to company logo                              | *(irrelevant if `\printcompanyLogo` is empty)* |
| `\printDeclaration`        | Whether the declaration under oath should be used | `true`<br/>`false`                             |
| `\printForeword`           | Whether the foreword should be used               | `true`<br/>`false`                             |
| `\printAbstract`           | Whether the abstract should be used               | `true`<br/>`false`                             |
| `\printTableOfContents`    | Whether the table of contents should be used      | `true`<br/>`false`                             |
| `\printListOfFigures`      | Whether the list of figures should be used        | `true`<br/>`false`                             |
| `\printListOfTables`       | Whether the list of tables should be used         | `true`<br/>`false`                             |
| `\printListOfEquations`    | Whether the list of equations should be used      | `true`<br/>`false`                             |
| `\printListOfListings`     | Whether the list of listings should be used       | `true`<br/>`false`                             |
| `\printListOfAbbreviation` | Whether the list of abbreviation should be used   | `true`<br/>`false`                             |
| `\printListOfSymbols`      | Whether the list of symbols should be used        | `true`<br/>`false`                             |
| `\printBibliography`       | Whether the bibliography should be used           | `true`<br/>`false`                             |
| `\printGlossary`           | Whether the glossary should be used               | `true`<br/>`false`                             |
| `\printAppendix`           | Whether the appendix should be used               | `true`<br/>`false`                             |

## The *chapters* folder
Files are numbered consecutively here. For single-digit values, a leading zero is appended.
Example: *01.tex*, *09.tex* or *23.tex*
The compiler automatically places these files in the correct order. It does not matter whether numbers are skipped. Numbers above 99 are not supported.

## The *specialPages* folder
The content for the foreword, the abstract, the list of abbreviations, the list of symbols and the appendix is created here. Self-explanatory examples can be found in the template. Chapter headings no longer need to be added here as they are already inserted automatically.

### Abbreviations
As the abbreviations are less self-explanatory, they are briefly described below.

Abbreviations used in the chapters are explained in the list of abbreviations. These are used as follows:
*   `\ac{abb.}` inserts the abbreviation but the first time it is called, the full version is also automatically inserted before it. -> *recommended use*
*   `\acs{abb.}` inserts the abbreviation. ->* e.g. "THU"*
*   `\acf{abb.}` inserts the abbreviation **and** the explanation. -> *e.g. "Technische Hochschule Ulm (THU)"*
*   `\acl{abb.}` inserts only the explanation. -> *e.g. "Technische Hochschule Ulm"*
*   `\acp{abb.}` outputs plural (adds 's'). The additional 'p' in the command also works with the above commands.

Example of the definitions in the list of abbreviations *content/specialPages/ListOfAbbreviation.tex*:

    \acro{THU}{Technische Hochschule Ulm}
    \acro{LAN}{Local Area Network}

### Symbol Directory
Symbols used in the chapters are explained in the list of symbols. These are used as follows:
*   `\sym{abb.}` inserts the abbreviation. -> *e.g. "V"*
*   `\symf{abb.}` inserts the abbreviation **and** the explanation. -> *e.g. "volume V"*
*   `\syml{abb.}` inserts only the explanation. ->* e.g. "volume"*

Example of the definitions in the symbol directory *content/specialPages/SymbolDirectory.tex*:

    \newSymbol{V}{$V$}{volume}
    \newSymbol{v0}{$v_{0}$}{initial speed}
    \newSymbol{c2}{$c^2$}{squared speed of light}
    \newSymbol{rho}{$\rho$}{density}
    \newSymbol{DeltaT}{$\Delta T$}{temperature difference}

The first curly bracket contains the indicator that is added to the command `\sym{}` to identify the correct symbol. The second curly bracket contains the mathematical symbol, which is identified as such by the bracketed `$...$` characters. The third curly bracket then contains the term that stands for the symbol.
> Various mathematical symbols for inserting inside the `\$...$` characters can be found [here](https://www.cmor-faculty.rice.edu/\~heinken/latex/symbols.pdf), for example.

### Glossary
Technical terms used in the chapters are explained in the glossary. These are used as follows:
*   `\gls{word}` inserts the corresponding word with a link to the explanation in the glossary.
*   `\glspl{word}` inserts the corresponding word in the plural definition with a link to the explanation in the glossary.
*   `\Gls{word}` same as `\gls{}` but capitalizes the first letter.
*   `\Glspl{word}` same as `\glspl{}` but capitalizes the first letter.
*   `\glslink{word}{other word} outputs the other word in the text, but links to the glossary entry of the first word.

Example of a glossary entry in *content/specialPages/Glossary.tex*:

    \newglossaryentry{hash}
    {
        name = {hash},
        plural = {hashes},
        description = {Hashing is a process that can be used, for example, to change a password into a text that cannot be converted back. In this way, data that is only used for comparison can be stored more securely.}
    }

### Abstract
In English the abstract is displayed once, in the German settings first the German, then the English abstract is displayed. To do this, both files *Abstract_en.tex* and *Abstract_de.tex* must be edited. Keywords are entered under the variables `\keywords` and `\germanKeywords` in the respective file.
Example:

    \keywords{
    Keyword 1, Keyword 2, Keyword 3
    }

## The *images* folder
All images and graphics can be inserted here so that they can then be integrated. The following formats are supported: *jpg*, *png*, *svg*, *eps*, *pdf*. However, it is recommended to use vector graphics (*svg*, *eps*, usually also *pdf*) to save storage space and drastically increase the resolution of the graphics.

> Notice: For using *svg* images, you need the command `\includesvg` instead of `\includegraphics`

&nbsp;
# Using the template
This template can be edited and used with different programs. Local programs such as TeXstudio or Visual Studio Code with the right plugins can be used to compile the template.

However, it is recommended to use the free online editor [Overleaf](https://www.overleaf.com/). This is easier to set up, enables sharing and collaborative editing of the document, saves the history and much more. However, it is essential to clarify the confidentiality of the work with examiners and supervisors, as this would speak **against the use of Overleaf**. Overleaf stores all uploaded content on their servers, which could mean a breach of confidentiality.

## Local useage
Download the entire repository from GitHub (*Code*->*DownloadZIP*), unzip the zip file and open the resulting folder with the LaTeX program of your choice. To create the PDF, the file *main.tex* must be compiled.

## Usage of Overleaf
Download the entire repository from GitHub (*Code*->*DownloadZIP*). Create a new project on Overleaf and upload the zip file. Now check in the menu whether the following settings match:

| Setting       | Value    |
| ------------- | -------- |
| Compiler      | pdfLaTeX |
| Main document | main.tex |


&nbsp;
# Tips and tricks for using the template
### Spell checker
To use a spelling and grammar checker when writing, it is recommended to use a tool such as [LanguageTool](https://languagetool.org/). This can be set up as an add-on in the browser for use in Overleaf, but can also be installed locally for local use with Visual Studio Code or TeXstudio, for example. A list of possible applications can be found [here](https://dev.languagetool.org/software-that-supports-languagetool-as-a-plug-in-or-add-on.html).
> However, it is essential to clarify the confidentiality of the work with examiners and supervisors before using LanguageTool, as this would speak **against the use of LanguageTool**. LanguageTool uploads all text to their server to check it there. This may constitute a breach of confidentiality. (Exception: When used locally, for example as a plug-in in Visual Studio Code, offline use is also possible.)

### Bibtex
The following links can help you to insert the correct entries into the Bibtex file *bibliography.tex*. These are able to convert DOI, PMCID, arXivID or ISBN information to Bibtex.
* <https://www.doi2bib.org/>
* <https://www.bibtex.com/c/doi-to-bibtex-converter/>

### Tables in in LaTeX
Creating tables in LaTeX can quickly become complicated and confusing. That's why there are tools that create the LaTeX code directly.
* <https://www.tablesgenerator.com/>
* <https://www.latex-tables.com/>
> However, it is essential to clarify the confidentiality of the work with examiners and supervisors before using these tools, as this would speak **against their use**. They upload all content to their server in order to convert it there. This may constitute a breach of confidentiality. Be careful not to enter any confidential information into such tools.