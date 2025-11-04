# THU LaTeX Vorlage
Diese Vorlage bietet die Möglichkeit, Arbeiten wie beispielsweise Bachelor- oder Masterarbeiten bequem mit LaTeX zu schreiben. Dabei wird die offizielle Formatierung der Technischen Hochschule Ulm eingehalten.

**Inhalt:**
* [Struktur der Vorlage](#struktur-der-vorlage)
* [Zu bearbeitende Dateien](#zu-bearbeitende-dateien)
* [Nutzung der Vorlage](#nutzung-der-vorlage)
* [Tipps und Tricks zur Nutzung der Vorlage](#tipps-und-tricks-zur-nutzung-der-vorlage)

&nbsp;
# Struktur der Vorlage
Die Vorlage ist im Wesentlichen in drei Teile unterteilt:
* Die Datei *main.tex*
* Der Ordner *static*
* Der Ordner *content*

Die Dateien im Ordner *static* und die *main.tex* müssen nur dann geändert werden, wenn man die Vorlage an sich verändern will. Zum Befüllen der Vorlage mit Inhalt sind lediglich die Dateien im Ordner *content* nötig.

Die *main.tex*-Datei dient als Kerndatei der Vorlage und ist somit auch die, welche kompiliert werden muss.

> Die Dateien *LICENSE*, *.gitignore*, *README.md* und *README_english.md* sind irrelevant für die Verwendung der LaTeX-Vorlage.

&nbsp;
# Zu bearbeitende Dateien
Dateien im Ordner *content* sind dafür da, um bearbeitet und mit Inhalt gefüllt zu werden. Diese werden im Folgenden erklärt.

## Die Datei *settings.tex*
Die Datei *settings.tex* beinhaltet verschiedene Variablen, die eingestellt werden müssen. Diese werden in zwei Themenbereiche unterteilt. Zuerst werden Dokumenteigenschaften definiert und danach die Möglichkeit zum Ausschluss bzw. zur Einbeziehung spezieller Seiten gegeben.

### Dokumenteigenschaften
Hier werden Variablen wie beispielsweise der Name, die Matrikelnummer etc. vergeben, damit diese richtig formatiert auf der Titelseite erscheinen.

| Variable                     | Beschreibung                                                                          | Mögliche Werte                               |
|------------------------------|---------------------------------------------------------------------------------------|----------------------------------------------|
| `\documentType`              | Art der Arbeit                                                                        |                                              |
| `\documentTitle`             | Titel der Arbeit                                                                      |                                              |
| `\academicDegree`            | Zu erreichender Abschluss (nur notwendig bei Bachelor-, Master- oder Doktorarbeiten)  | *(leer lassen, wenn keiner existiert)*       |
| `\studyProgram`              | Studiengang                                                                           |                                              |
| `\name`                      | Name des Autors                                                                       |                                              |
| `\studentNumber`             | Matrikelnummer des Autors                                                             | *(leer lassen, wenn keine existiert)*        |
| `\secondName`                | Name des zweiten Autors                                                               | *(leer lassen, wenn keiner existiert)*       |
| `\secondMatriculationNumber` | Matrikelnummer des zweiten Autors                                                     | *(irrelevant, wenn `\secondName` leer ist)*  |
| `\thirdName`                 | Name des dritten Autors                                                               | *(leer lassen, wenn keiner existiert)*       |
| `\thirdMatriculationNumber`  | Matrikelnummer des dritten Autors                                                     | *(irrelevant, wenn `\thirdName` leer ist)*   |
| `\fourthName`                | Name des vierten Autors                                                               | *(leer lassen, wenn keiner existiert)*       |
| `\fourthMatriculationNumber` | Matrikelnummer des vierten Autors                                                     | *(irrelevant, wenn `\fourthName` leer ist)*  |
| `\fifthName`                 | Name des fünften Autors                                                               | *(leer lassen, wenn keiner existiert)*       |
| `\fifthMatriculationNumber`  | Matrikelnummer des fünften Autors                                                     | *(irrelevant, wenn `\fifthName` leer ist)*   |
| `\firstExaminer`             | Name des Erstprüfers                                                                  |                                              |
| `\secondExaminer`            | Name des Zweitprüfers                                                                 | *(leer lassen, wenn keiner existiert)*       |
| `\coSupervisor`              | Name des Co-Betreuers                                                                 | *(leer lassen, wenn keiner existiert)*       |
| `\courseOfStudies`           | Name des Moduls                                                                       | *(leer lassen, wenn keins existiert)*        |
| `\submissionDate`            | Abgabedatum                                                                           |                                              |
| `\location`                  | Ort der Abgabe                                                                        |                                              |
| `\documentLanguage`          | Sprache der Arbeit                                                                    | `de`<br/>`en`                                |
| `\specialGrammar`            | In der eidesstattlichen Erklärung steht z.B. "[...] dass ich die vorliegende Bachelorarbeit [...] angefertigt habe". Wenn die weibliche Form nicht auf die Art der Arbeit passt (z.B. "**den** vorliegend**en** Laborbericht"), dann kann die Grammatik hier abgeändert werden. | `die vorliegende`<br/>`den vorliegenden`<br/>`das vorliegende`<br/><br/>*(nur bei deutscher Sprache relevant)* |

### Einbeziehung spezieller Seiten
Hier kann definiert werden, welche Seiten (abgesehen der Kapitel) mit in das PDF hineingenommen werden sollen. Es wird empfohlen, diese Einstellungen erst nach Beendigung der Arbeit vorzunehmen, da gegebenenfalls Funktionen genutzt werden, die sonst nicht abgedruckt werden. Beispielsweise sollte man keine Zitate erstellen, ohne ein Literaturverzeichnis abzudrucken.

| Variable                   | Beschreibung                                              | Mögliche Werte                                    |
|----------------------------|-----------------------------------------------------------|---------------------------------------------------|
| `\printTitlepage`          | Ob die Titelseite benutzt werden soll                     | `true`<br/>`false`                                |
| `\printCompanyLogo`        | Ob ein zusätzliches Firmenlogo abgebildet werden soll     | `true`<br/>`false`                                |
| `\companyLogoPath`         | Pfad zum Firmenlogo                                       | *(irrelevant, wenn `\printcompanyLogo` leer ist)* |
| `\printDeclaration`        | Ob die eidesstattliche Erklärung benutzt werden soll      | `true`<br/>`false`                                |
| `\printForeword`           | Ob das Vorwort benutzt werden soll                        | `true`<br/>`false`                                |
| `\printAbstract`           | Ob das Abstract (die Zusammenfassung) benutzt werden soll | `true`<br/>`false`                                |
| `\printTableOfContents`    | Ob das Inhaltsverzeichnis benutzt werden soll             | `true`<br/>`false`                                |
| `\printListOfFigures`      | Ob das Abbildungsverzeichnis benutzt werden soll          | `true`<br/>`false`                                |
| `\printListOfTables`       | Ob das Tabellenverzeichnis benutzt werden soll            | `true`<br/>`false`                                |
| `\printListOfEquations`    | Ob das Formelverzeichnis benutzt werden soll              | `true`<br/>`false`                                |
| `\printListOfListings`     | Ob das Listingverzeichnis benutzt werden soll             | `true`<br/>`false`                                |
| `\printListOfAbbreviation` | Ob das Abkürzungsverzeichnis benutzt werden soll          | `true`<br/>`false`                                |
| `\printListOfSymbols`      | Ob das Symbolverzeichnis benutzt werden soll              | `true`<br/>`false`                                |
| `\printBibliography`       | Ob das Literaturverzeichnis benutzt werden soll           | `true`<br/>`false`                                |
| `\printGlossary`           | Ob das Glossar benutzt werden soll                        | `true`<br/>`false`                                |
| `\printAppendix`           | Ob der Anhang benutzt werden soll                         | `true`<br/>`false`                                |

## Der Ordner *chapters*
Hier werden Dateien durchnummeriert angelegt. Bei einstelligen Werten wird eine führende Null angehängt.
Beispiel: *01.tex*, *09.tex* oder *23.tex*
Der Compiler setzt diese Dateien automatisch in die richtige Reihenfolge. Dabei ist es egal, ob Zahlen übersprungen werden. Zahlen über 99 werden nicht unterstützt.

## Der Ordner *specialPages*
Hier wird der Inhalt für das Vorwort, das Abstract, das Abkürzungsverzeichnis, das Symbolverzeichnis und den Anhang erstellt. Selbsterklärende Beispiele sind in der Vorlage zu finden. Kapitelüberschriften müssen hier nicht mehr hinzugefügt werden, da diese bereits automatisch eingefügt werden.

### Abkürzungen
Da die Abkürzungen weniger selbsterklärend sind, werden sie im Folgenden kurz beschrieben.

In den Kapiteln verwendete Abkürzungen werden im Abkürzungsverzeichnis erklärt. Diese verwendet man wie folgt:
*   `\ac{Abk.}` fügt die Abkürzung ein, beim ersten Aufruf wird zusätzlich automatisch die ausgeschriebene Version davor eingefügt. -> *empfohlene Verwendung*
*   `\acs{Abk.}` fügt die Abkürzung ein. -> *z.B. "THU"*
*   `\acf{Abk.}` fügt die Abkürzung **und** die Erklärung ein. -> *z.B. "Technische Hochschule Ulm (THU)"*
*   `\acl{Abk.}` fügt nur die Erklärung ein. -> *z.B. "Technische Hochschule Ulm"*
*   `\acp{Abk.}` gibt Plural aus (angefügtes 's'). Das zusätzliche 'p' im Befehl funktioniert auch bei obigen Befehlen.

Beispiel der Definitionen im Abkürzungsverzeichnis *content/specialPages/ListOfAbbreviation.tex*:

	\acro{THU}{Technische Hochschule Ulm}
	\acro{LAN}{Local Area Network}

### Symbolverzeichnis
In den Kapiteln verwendete Symbole werden im Symbolverzeichnis erklärt. Diese verwendet man wie folgt:
*   `\sym{Abk.}` fügt die Abkürzung ein. -> *z.B. "V"*
*   `\symf{Abk.}` fügt die Abkürzung **und** die Erklärung ein. -> *z.B. "Volumen V"*
*   `\syml{Abk.}` fügt nur die Erklärung ein. -> *z.B. "Volumen"*

Beispiel der Definitionen im Symbolverzeichnis *content/specialPages/SymbolDirectory.tex*:

	\newSymbol{V}{$V$}{Volumen}
	\newSymbol{v0}{$v_{0}$}{Anfangsgeschwindigkeit}
	\newSymbol{c2}{$c^2$}{Quadrierte Lichtgeschwindigkeit}
	\newSymbol{rho}{$\rho$}{Dichte}
	\newSymbol{DeltaT}{$\Delta T$}{Temperaturdifferenz}

In der ersten geschweiften Klammer steht hierbei der Indikator, der dem Befehl `\sym{}` mitgegeben wird, um das richtige Symbol zu identifizieren. In der zweiten geschweiften Klammer steht das mathematische Symbol, welches durch die umklammerten `$...$` Zeichen als solches gekennzeichnet werden. Daraufhin steht in der dritten geschweiften Klammer der Begriff, welcher für das Symbol steht.
> Verschiedene mathematische Symbole zum Einfügen in den `$...$` Zeichen finden sich z.B. [hier](https://www.cmor-faculty.rice.edu/~heinken/latex/symbols.pdf).

### Glossar
In den Kapiteln verwendete Fachbegriffe werden im Glossar erklärt. Diese verwendet man wie folgt:
*   `\gls{Wort}` fügt das dazugehörige Wort mit einer Verlinkung zur Erklärung im Glossar ein.
*   `\glspl{Wort}` fügt das dazugehörige Wort in der Plural-Definition mit einer Verlinkung zur Erklärung im Glossar ein.
*   `\Gls{Wort}` funktioniert gleich wie `\gls{}`, schreibt aber den ersten Buchstaben groß (eher im Englischen benutzbar).
*   `\Glspl{Wort}` funktioniert gleich wie `\glspl{}`, schreibt aber den ersten Buchstaben groß (eher im Englischen benutzbar).
*   `\glslink{Wort}{Anderes Wort}` gibt das andere Wort im Text aus, verlinkt jedoch auf den Glossareintrag des ersten Wortes (z.B. nützlich, wenn man das Glossar-Wort an Grammatik und verschiedene Fälle anpassen muss).

Beispiel einer Glossar-Definition in *content/specialPages/Glossary.tex*:

	\newglossaryentry{Hash}
	{
	    name = {Hash},
	    plural = {Hashes},
	    description = {Hashen ist ein Verfahren, mithilfe dessen beispielsweise
		ein Passwort in einen nicht zurückkonvertierbaren Text verändert
		werden kann. So können Daten, welche nur zum Vergleich benutzt
		werden, sicherer gespeichert werden.}
	}

### Abstract / Zusammenfassung
Im Englischen wird das Abstract einmalig abgebildet, in den deutschen Einstellungen wird erst die deutsche, dann die englische Zusammenfassung abgebildet. Dazu muss man beide Dateien *Abstract_en.tex* und *Abstract_de.tex* bearbeiten. Keywords werden unter der Variablen `\keywords` und `\germanKeywords` in der jeweiligen Datei eingetragen.
Beispiel:

	\germanKeywords{
	Keyword 1, Keyword 2, Keyword 3
	}

## Der Ordner *images*
Hier können sämtliche Bilder und Grafiken eingefügt werden, um sie daraufhin einbinden zu können. Unterstützt werden folgende Formate: *jpg*, *png*, *svg*, *eps*, *pdf*.
Es wird jedoch empfohlen, Vektorgrafiken (*svg*, *eps*, meistens auch *pdf*) zu nutzen, um Speicherplatz zu sparen und die Auflösung der Grafiken drastisch zu erhöhen.

> Hinweis: Für die Verwendung von *svg*-Bildern wird der Befehl `\includesvg` anstelle von `\includegraphics` benötigt.

&nbsp;
# Nutzung der Vorlage
Diese Vorlage kann mit unterschiedlichen Programmen bearbeitet und genutzt werden. Hier können lokale Programme wie TeXstudio oder Visual Studio Code mit den richtigen Plugins genutzt werden, um die Vorlage zu kompilieren.

Es wird jedoch empfohlen, den kostenlosen Online-Editor [Overleaf](https://www.overleaf.com/) zu nutzen. Dieser ist leichter einzurichten, ermöglicht das Teilen und das gemeinsame Bearbeiten des Dokuments, speichert die Historie und vieles mehr. Es ist jedoch unabdinglich, die Vertraulichkeit der Arbeit mit Prüfern und Betreuern abzuklären, da dies **gegen eine Nutzung von Overleaf** sprechen würde. Overleaf speichert sämtliche hochgeladenen Inhalte auf deren Servern, was gegebenenfalls eine Verletzung der Vertraulichkeit bedeuten könnte.

## Lokale Nutzung
Lade das ganze Repository von GitHub herunter (*Code*->*Download ZIP*), entpacke die zip-Datei und öffne den entstandenen Ordner mit dem LaTeX-Programm deiner Wahl. Zum Erstellen der PDF muss die Datei *main.tex* kompiliert werden.

Es können beliebige LaTeX-Compiler verwendet werden. Einer von ihnen ist MiKTeX (https://miktex.org/) bzw. TEXworks. Bitte direkt nach der Installation auf Updates überprüfen, um die aktuellste Version von MiKTeX bzw. TEXworks zu verwenden! Für die Verwendung muss Inkscape auf dem Rechner installiert werden (evtl. auch der Pfad zur Installation eingestellt werden) und folgende Argumente müssen für die pdfLaTeX-kompilierung gesetzt sein (Bearbeiten -> Einstellungen -> Textsatz -> pdfLaTeX -> Bearbeiten):

$synctexoption

--shell-escape

-synctex=1

-interaction=nonstopmode

-undump=pdflatex

$fullname

%.tex


## Nutzung von Overleaf
Lade das ganze Repository von GitHub herunter (*Code*->*Download ZIP*). Erstelle auf Overleaf ein neues Projekt und lade dabei die zip-Datei hoch. Prüfe nun im Menu, ob folgende Einstellungen übereinstimmen:

| Einstellung   | Wert     |
|---------------|----------|
| Compiler      | pdfLaTeX |
| Main document | main.tex |

&nbsp;
# Tipps und Tricks zur Nutzung der Vorlage
### Rechtschreibprüfung
Um beim Schreiben eine Rechtschreib- und Grammatikprüfung zu nutzen, empfiehlt es sich, ein Tool wie beispielsweise [LanguageTool](https://languagetool.org/) zu benutzen. Dieses lässt sich für die Nutzung in Overleaf als Add-on im Browser einrichten, für die lokale Nutzung mit beispielsweise Visual Studio Code oder TeXstudio jedoch auch lokal installieren. Eine Liste der Anwendungsmöglichkeiten findet sich [hier](https://dev.languagetool.org/software-that-supports-languagetool-as-a-plug-in-or-add-on.html).
> Für dessen Nutzung ist es jedoch auch hier unabdinglich, die Vertraulichkeit der Arbeit mit Prüfern und Betreuern abzuklären, da dies **gegen eine Nutzung von LanguageTool** sprechen würde. LanguageTool lädt sämtlichen Text auf deren Server, um ihn dort zu überprüfen. Dies kann gegebenenfalls eine Verletzung der Vertraulichkeit bedeuten. (Ausnahme: Bei der lokalen Nutzung, beispielsweise als Plugin in Visual Studio Code, ist auch eine offline Benutzung möglich.)

### Bibtex
Um die richtigen Einträge in die Bibtex-Datei *bibliography.tex* einzufügen, können folgende Links dabei helfen. Diese sind in der Lage, DOI-, PMCID-, arXivID- oder ISBN-Informationen zu Bibtex zu konvertieren.
* <https://www.doi2bib.org/>
* <https://www.bibtex.com/c/doi-to-bibtex-converter/>

### Tabellen in LaTeX
Tabellen zu erstellen kann in LaTeX schnell kompliziert und unübersichtlich werden. Deswegen gibt es Tools, die einem den LaTeX-Code direkt erstellen.
* <https://www.tablesgenerator.com/>
* <https://www.latex-tables.com/>
> Für dessen Nutzung ist es jedoch auch hier unabdinglich, die Vertraulichkeit der Arbeit mit Prüfern und Betreuern abzuklären, da dies **gegen eine Nutzung dieser Tools** sprechen würde. Diese laden sämtlichen Inhalt auf deren Server, um ihn dort zu konvertieren. Dies kann gegebenenfalls eine Verletzung der Vertraulichkeit bedeuten. Achte darauf, keine vertraulichen Informationen in solche Tools einzugeben.
