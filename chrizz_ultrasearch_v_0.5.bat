@echo off
::#####################################################
::################ Chrizz Ultra Search ################
::####################### v 0.5 #######################
::#####################################################


set /p SUCHE=Hier gesuchten Artikel eingeben:
set SUCHE=%SUCHE: =+%

:: URL ohne &
start https://www.google.de/search?q=%SUCHE%
start https://www.otto.de/suche/%SUCHE%/
start https://www.expert.de/suche?q=%SUCHE%
start https://www.conrad.de/de/Search.html?search=%SUCHE%
start https://www.schwanthaler-computer.de/search?sSearch=%SUCHE%
start https://www.notebooksbilliger.de/produkte/%SUCHE%
start https://www.saturn.de/de/search.html?query=%SUCHE%&searchProfile=onlineshop&channel=sedede


:: URL�s mit &
:: Amazon
set url=start "" "https://www.amazon.de/s?url=search-alias+3Daps&field-keywords="
set url=%url%%SUCHE%
%url%

::Media Markt
set url=start "" "https://www.mediamarkt.de/de/search.html?query=%SUCHE%&searchProfile=onlineshop&channel=mmdede"
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
