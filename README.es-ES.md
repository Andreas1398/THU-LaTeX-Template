

# Plantilla LaTeX de la THU
Esta plantilla permite escribir trabajos, como por ejemplo trabajos de grado o de máster, cómodamente con LaTeX. Se cumple con el formato oficial de la Escuela Técnica de Ulm (THU).

**Contenido:**
* [Estructura de la plantilla](#estructura-de-la-plantilla)
* [Archivos a editar](#archivos-a-editar)
* [Uso de la plantilla](#uso-de-la-plantilla)
* [Consejos y trucos para el uso de la plantilla](#consejos-y-trucos-para-el-uso-de-la-plantilla)

&nbsp;
# Estructura de la plantilla
La plantilla está dividida esencialmente en tres partes:
* El archivo *main.tex*
* La carpeta *static*
* La carpeta *content*

Los archivos en la carpeta *static* y el archivo *main.tex* solo deben modificarse si se desea alterar la plantilla en sí. Para llenar la plantilla con contenido, solo se necesitan los archivos en la carpeta *content*.

El archivo *main.tex* sirve como archivo principal de la plantilla y, por lo tanto, es el que debe compilarse.

> Los archivos *LICENSE*, *.gitignore*, *README.md* y *README_english.md* son irrelevantes para el uso de la plantilla LaTeX.

&nbsp;
# Archivos a editar
Los archivos en la carpeta *content* están destinados a ser editados y llenados con contenido. Se explican a continuación.

## El archivo *settings.tex*
El archivo *settings.tex* contiene varias variables que deben configurarse. Estas se dividen en dos categorías. Primero se definen las propiedades del documento y luego se ofrece la posibilidad de excluir o incluir páginas especiales.

### Propiedades del documento
Aquí se asignan variables como el nombre, el número de matrícula, etc., para que aparezcan con el formato correcto en la portada.

| Variable                     | Descripción                                                                                                     | Valores posibles                             |
|------------------------------|-----------------------------------------------------------------------------------------------------------------|----------------------------------------------|
| `\documentType`              | Tipo de trabajo                                                                                                 |                                              |
| `\documentTitle`             | Título del trabajo                                                                                              |                                              |
| `\academicDegree`            | Grado académico a obtener (solo necesario para trabajos de grado, máster o doctorado)                           | *(dejar vacío si no existe)*                 |
| `\studyProgram`              | Plan de estudios                                                                                                |                                              |
| `\name`                      | Nombre del autor                                                                                                |                                              |
| `\studentNumber`             | Número de matrícula del autor                                                                                   | *(dejar vacío si no existe)*                 |
| `\secondName`                | Nombre del segundo autor                                                                                        | *(dejar vacío si no existe)*                 |
| `\secondMatriculationNumber` | Número de matrícula del segundo autor                                                                           | *(irrelevante si `\secondName` está vacío)*  |
| `\thirdName`                 | Nombre del tercer autor                                                                                         | *(dejar vacío si no existe)*                 |
| `\thirdMatriculationNumber`  | Número de matrícula del tercer autor                                                                            | *(irrelevante si `\thirdName` está vacío)*   |
| `\fourthName`                | Nombre del cuarto autor                                                                                         | *(dejar vacío si no existe)*                 |
| `\fourthMatriculationNumber` | Número de matrícula del cuarto autor                                                                            | *(irrelevante si `\fourthName` está vacío)*  |
| `\fifthName`                 | Nombre del quinto autor                                                                                         | *(dejar vacío si no existe)*                 |
| `\fifthMatriculationNumber`  | Número de matrícula del quinto autor                                                                            | *(irrelevante si `\fifthName` está vacío)*   |
| `\firstExaminer`             | Nombre del primer examinador                                                                                    |                                              |
| `\secondExaminer`            | Nombre del segundo examinador                                                                                   | *(dejar vacío si no existe)*                 |
| `\coSupervisor`              | Nombre del co-supervisor                                                                                        | *(dejar vacío si no existe)*                 |
| `\courseOfStudies`           | Nombre del módulo                                                                                               | *(dejar vacío si no existe)*                 |
| `\submissionDate`            | Fecha de entrega                                                                                                |                                              |
| `\location`                  | Lugar de entrega                                                                                                |                                              |
| `\documentLanguage`          | Idioma del trabajo                                                                                              | `de`<br/>`en`                                |
| `\specialGrammar`            | En la declaración jurada aparece, por ejemplo, "[...] que he elaborado la presente tesis de grado [...]". Si la forma femenina no se ajusta al tipo de trabajo (por ejemplo, "**el** presente informe de laboratorio"), la gramática puede modificarse aquí. | `die vorliegende`<br/>`den vorliegenden`<br/>`das vorliegende`<br/><br/>*(relevante solo para idioma alemán)* |

### Inclusión de páginas especiales
Aquí se puede definir qué páginas (aparte de los capítulos) se deben incluir en el PDF. Se recomienda configurar estas opciones solo después de finalizar el trabajo, ya que podrían utilizarse funciones que de otro modo no se imprimirían. Por ejemplo, no se deben crear citas sin imprimir una bibliografía.

| Variable                   | Descripción                                               | Valores posibles                                  |
|----------------------------|-----------------------------------------------------------|---------------------------------------------------|
| `\printTitlepage`          | Si se debe utilizar la portada                            | `true`<br/>`false`                                |
| `\printCompanyLogo`        | Si se debe mostrar un logotipo de empresa adicional       | `true`<br/>`false`                                |
| `\companyLogoPath`         | Ruta al logotipo de la empresa                            | *(sin relevancia si `\printcompanyLogo` está vacío)* |
| `\printDeclaration`        | Si se debe utilizar la declaración jurada                 | `true`<br/>`false`                                |
| `\printForeword`           | Si se debe utilizar el preámbulo                          | `true`<br/>`false`                                |
| `\printAbstract`           | Si se debe utilizar el abstract (resumen)                 | `true`<br/>`false`                                |
| `\printTableOfContents`    | Si se debe utilizar el índice de contenidos               | `true`<br/>`false`                                |
| `\printListOfFigures`      | Si se debe utilizar el índice de figuras                  | `true`<br/>`false`                                |
| `\printListOfTables`       | Si se debe utilizar el índice de tablas                   | `true`<br/>`false`                                |
| `\printListOfEquations`    | Si se debe utilizar el índice de fórmulas                 | `true`<br/>`false`                                |
| `\printListOfListings`     | Si se debe utilizar el índice de listados                 | `true`<br/>`false`                                |
| `\printListOfAbbreviation` | Si se debe utilizar el índice de abreviaturas             | `true`<br/>`false`                                |
| `\printListOfSymbols`      | Si se debe utilizar el índice de símbolos                 | `true`<br/>`false`                                |
| `\printBibliography`       | Si se debe utilizar la bibliografía                       | `true`<br/>`false`                                |
| `\printGlossary`           | Si se debe utilizar el glosario                           | `true`<br/>`false`                                |
| `\printAppendix`           | Si se deben utilizar los apéndices                        | `true`<br/>`false`                                |

## La carpeta *chapters*
Aquí se crean archivos numerados. Para valores de un solo dígito, se añade un cero a la izquierda.
Ejemplo: *01.tex*, *09.tex* o *23.tex*
El compilador inserta estos archivos automáticamente en el orden correcto. No importa si se omiten números. No se admiten números mayores a 99.

## La carpeta *specialPages*
Aquí se crea el contenido para el preámbulo, el abstract, el índice de abreviaturas, el índice de símbolos y los apéndices. Se pueden encontrar ejemplos autoexplicativos en la plantilla. No es necesario añadir títulos de capítulo aquí, ya que se insertan automáticamente.

### Abreviaturas
Dado que las abreviaturas son menos autoexplicativas, se describen brevemente a continuación.

Las abreviaturas utilizadas en los capítulos se explican en el índice de abreviaturas. Se utilizan de la siguiente manera:
*   `\ac{Abk.}` inserta la abreviatura; en la primera llamada, también se inserta automáticamente la versión completa antes. -> *uso recomendado*
*   `\acs{Abk.}` inserta la abreviatura. -> *por ejemplo, "THU"*
*   `\acf{Abk.}` inserta la abreviatura **y** la explicación. -> *por ejemplo, "Escuela Técnica de Ulm (THU)"*
*   `\acl{Abk.}` inserta solo la explicación. -> *por ejemplo, "Escuela Técnica de Ulm"*
*   `\acp{Abk.}` imprime el plural (añade 's'). La 'p' adicional en el comando también funciona con los comandos anteriores.

Ejemplo de definiciones en el índice de abreviaturas *content/specialPages/ListOfAbbreviation.tex*:

	\acro{THU}{Technische Hochschule Ulm}
	\acro{LAN}{Local Area Network}

### Índice de símbolos
Los símbolos utilizados en los capítulos se explican en el índice de símbolos. Se utilizan de la siguiente manera:
*   `\sym{Abk.}` inserta la abreviatura. -> *por ejemplo, "V"*
*   `\symf{Abk.}` inserta la abreviatura **y** la explicación. -> *por ejemplo, "Volumen V"*
*   `\syml{Abk.}` inserta solo la explicación. -> *por ejemplo, "Volumen"*

Ejemplo de definiciones en el índice de símbolos *content/specialPages/SymbolDirectory.tex*:

	\newSymbol{V}{$V$}{Volumen}
	\newSymbol{v0}{$v_{0}$}{Anfangsgeschwindigkeit}
	\newSymbol{c2}{$c^2$}{Quadrierte Lichtgeschwindigkeit}
	\newSymbol{rho}{$\rho$}{Dichte}
	\newSymbol{DeltaT}{$\Delta T$}{Temperaturdifferenz}

En la primera llave se encuentra el identificador que se pasa al comando `\sym{}` para identificar el símbolo correcto. En la segunda llave se encuentra el símbolo matemático, que se marca como tal mediante los caracteres `$...$`. A continuación, en la tercera llave se encuentra el término que representa el símbolo.
> Diferentes símbolos matemáticos para insertar entre los caracteres `$...$` se pueden encontrar, por ejemplo, [aquí](https://www.cmor-faculty.rice.edu/~heinken/latex/symbols.pdf).

### Glosario
Los términos técnicos utilizados en los capítulos se explican en el glosario. Se utilizan de la siguiente manera:
*   `\gls{Wort}` inserta la palabra correspondiente con un enlace a la explicación en el glosario.
*   `\glspl{Wort}` inserta la palabra correspondiente en la definición de plural con un enlace a la explicación en el glosario.
*   `\Gls{Wort}` funciona igual que `\gls{}`, pero escribe la primera letra en mayúscula (más utilizable en inglés).
*   `\Glspl{Wort}` funciona igual que `\glspl{}`, pero escribe la primera letra en mayúscula (más utilizable en inglés).
*   `\glslink{Wort}{Anderes Wort}` imprime la segunda palabra en el texto, pero enlaza con la entrada del glosario de la primera palabra (por ejemplo, útil si se debe adaptar la palabra del glosario a la gramática y diferentes casos).

Ejemplo de una definición de glosario en *content/specialPages/Glossary.tex*:

	\newglossaryentry{Hash}
	{
	    name = {Hash},
	    plural = {Hashes},
	    description = {Hashen ist ein Verfahren, mithilfe dessen beispielsweise
		ein Passwort in einen nicht zurückkonvertierbaren Text verändert
		werden kann. So können Daten, welche nur zum Vergleich benutzt
		werden, sicherer gespeichert werden.}
	}

### Abstract / Resumen
En inglés, el abstract se muestra una sola vez; en la configuración alemana, primero se muestra el resumen en alemán y luego el inglés. Para ello, se deben editar ambos archivos *Abstract_en.tex* y *Abstract_de.tex*. Las palabras clave se introducen bajo las variables `\keywords` y `\germanKeywords` en cada archivo respectivo.
Ejemplo:

	\germanKeywords{
	Keyword 1, Keyword 2, Keyword 3
	}

## La carpeta *images*
Aquí se pueden insertar todas las imágenes y gráficos para poder incluirlos posteriormente. Se admiten los siguientes formatos: *jpg*, *png*, *svg*, *eps*, *pdf*.
Sin embargo, se recomienda utilizar gráficos vectoriales (*svg*, *eps*, y a menudo *pdf*) para ahorrar espacio y aumentar drásticamente la resolución de los gráficos.

> Nota: Para utilizar imágenes *svg*, se requiere el comando `\includesvg` en lugar de `\includegraphics`.

&nbsp;
# Uso de la plantilla
Esta plantilla puede editarse y utilizarse con diferentes programas. Aquí se pueden usar programas locales como TeXstudio o Visual Studio Code con los plugins adecuados para compilar la plantilla.

Sin embargo, se recomienda utilizar el editor en línea gratuito [Overleaf](https://www.overleaf.com/). Es más fácil de configurar, permite compartir y editar el documento colaborativamente, guarda el historial y mucho más. No obstante, es imprescindible aclarar la confidencialidad del trabajo con los examinadores y supervisores, ya que esto **podría oponerse al uso de Overleaf**. Overleaf almacena todo el contenido cargado en sus servidores, lo cual podría constituir una violación de la confidencialidad.

## Uso local
Descarga el repositorio completo de GitHub (*Código*->*Descargar ZIP*), descomprime el archivo zip y abre la carpeta resultante con el programa LaTeX de tu elección. Para generar el PDF, se debe compilar el archivo *main.tex*.

Se pueden utilizar compiladores LaTeX arbitrarios. Uno de ellos es MiKTeX (https://miktex.org/) o TEXworks. ¡Verifica las actualizaciones inmediatamente después de la instalación para utilizar la versión más reciente de MiKTeX o TEXworks! Para su uso, Inkscape debe estar instalado en la computadora (posiblemente también se debe configurar la ruta de instalación) y los siguientes argumentos deben establecerse para la compilación pdfLaTeX (Editar -> Configuración -> Compilación -> pdfLaTeX -> Editar):

$synctexoption

--shell-escape

-synctex=1

-interaction=nonstopmode

-undump=pdflatex

$fullname

%.tex


## Uso de Overleaf
Descarga el repositorio completo de GitHub (*Código*->*Descargar ZIP*). Crea un nuevo proyecto en Overleaf y sube el archivo zip. Verifica ahora en el menú si las siguientes configuraciones coinciden:

| Configuración | Valor    |
|---------------|----------|
| Compilador    | pdfLaTeX |
| Documento principal | main.tex |

&nbsp;
# Consejos y trucos para el uso de la plantilla
### Verificación ortográfica
Para utilizar la verificación ortográfica y gramatical mientras se escribe, se recomienda usar una herramienta como [LanguageTool](https://languagetool.org/). Esta puede configurarse como una extensión en el navegador para su uso en Overleaf, o instalarse localmente para su uso con, por ejemplo, Visual Studio Code o TeXstudio. Una lista de opciones de aplicación se encuentra [aquí](https://dev.languagetool.org/software-that-supports-languagetool-as-a-plug-in-or-add-on.html).
> Sin embargo, también para su uso es imprescindible aclarar la confidencialidad del trabajo con los examinadores y supervisores, ya que esto **podría oponerse al uso de LanguageTool**. LanguageTool sube todo el texto a sus servidores para verificarlo. Esto podría constituir una violación de la confidencialidad. (Excepción: En el uso local, por ejemplo como plugin en Visual Studio Code, también es posible una utilización sin conexión.)

### Bibtex
Para insertar las entradas correctas en el archivo Bibtex *bibliography.tex*, los siguientes enlaces pueden ayudar. Son capaces de convertir información de DOI, PMCID, arXivID o ISBN a formato Bibtex.
* <https://www.doi2bib.org/>
* <https://www.bibtex.com/c/doi-to-bibtex-converter/>

### Tablas en LaTeX
Crear tablas en LaTeX puede volverse rápidamente complicado y desordenado. Por eso existen herramientas que generan el código LaTeX directamente.
* <https://www.tablesgenerator.com/>
* <https://www.latex-tables.com/>
> Sin embargo, también para su uso es imprescindible aclarar la confidencialidad del trabajo con los examinadores y supervisores, ya que esto **podría oponerse al uso de estas herramientas**. Estas suben todo el contenido a sus servidores para convertirlo. Esto podría constituir una violación de la confidencialidad. Asegúrate de no ingresar información confidencial en dichas herramientas.
