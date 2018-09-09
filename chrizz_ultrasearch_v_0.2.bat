@echo on
::#####################################################
::################ Chrizz Ultra Search ################
::####################### v 0.2 #######################
::#####################################################
::#                                                   #
::#    Dieses Script öffnet gesuchte Artikel im       #
::#	     Standard Browser der mit der             #
::#    Suchengine verschiedener Anbieter und Hilft    #
::#   einen überblick zu schaffe, wo ein Artikel am   #
::#           Günstigsten erhältlich ist.             #
::#                                                   #	
::# ###################################################
::#                                                   #
::#     Für erweiterungen mittels mehr Anbieter       #
::#                 bitte E-Mail an		      #
::#                chf1985@gmail.com                  #
::#                                                   #
::# ###################################################

set /p SUCHE=Hier gesuchten Artikel eingeben:
set SUCHE=%SUCHE: =+%

:: URL ohne &
start https://www.google.de/search?q=%SUCHE%
start https://www.otto.de/suche/%SUCHE%/
start https://www.expert.de/suche?q=%SUCHE%
start https://www.conrad.de/de/Search.html?search=%SUCHE%
start https://www.schwanthaler-computer.de/search?sSearch=%SUCHE%
start https://www.notebooksbilliger.de/produkte/%SUCHE%

:: URL´s mit &
:: Amazon
set url=start "" "https://www.amazon.de/s?url=search-alias+3Daps&field-keywords="
set url=%url%%SUCHE%
%url%

::Media Markt
set url=start "" "https://www.mediamarkt.de/de/search.html?query=%SUCHE%&searchProfile=onlineshop&channel=mmdede"
set url=%url%%SUCHE%
%url%

::Saturn
set url=start "" "https://www.saturn.de/de/search.html?query=iphone+x&searchProfile=onlineshop&channel=sedede"
set url=%url%%SUCHE%
%url%

::Check 24
set url=start "" "https://preisvergleich.check24.de/suche.html?query=%SUCHE%&searchtype=hd_searchredirect"
set url=%url%%SUCHE%
%url%

::Alternate
set url=start "" "https://www.alternate.de/html/search.html?query=%SUCHE%&x=0
set url=%url%%SUCHE%
%url%
exit
