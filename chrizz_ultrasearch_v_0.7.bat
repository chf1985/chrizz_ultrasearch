@echo off
::#####################################################
::################ Chrizz Ultra Search ################
::####################### v 0.7 #######################
::#####################################################
::# Konfig Section                                    #

set land=by



IF "%land%" == "de" (goto de) 
IF "%land%" == "at" (goto at)
IF "%land%" == "by" (goto by)


:by
set /p SUCHE=Was megst sucha zefix:
set land=de
goto nachby

:de

set /p SUCHE=Hier gesuchten Artikel eingeben:

:nachby
set SUCHE=%SUCHE: =+%

:: URL ohne &
start https://www.google.%land%/search?q=%SUCHE%
start https://www.otto.%land%/suche/%SUCHE%/
start https://www.expert.%land%/suche?q=%SUCHE%
start https://www.conrad.%land%/de/Search.html?search=%SUCHE%
start https://www.schwanthaler-computer.%land%/search?sSearch=%SUCHE%
start https://www.notebooksbilliger.%land%/produkte/%SUCHE%
start https://www.saturn.%land%/de/search.html?query=%SUCHE%&searchProfile=onlineshop&channel=sedede



:: URL´s mit &
:: Amazon
set url=start "" "https://www.amazon.%land%/s?url=search-alias+3Daps&field-keywords="
set url=%url%%SUCHE%
%url%

::Media Markt
set url=start "" "https://www.mediamarkt.%land%/de/search.html?query=%SUCHE%&searchProfile=onlineshop&channel=mmdede"
set url=%url%%SUCHE%
%url%

::Check 24
set url=start "" "https://preisvergleich.check24.%land%/suche.html?query=%SUCHE%&searchtype=hd_searchredirect"
set url=%url%%SUCHE%
%url%

::Alternate
set url=start "" "https://www.alternate.%land%/html/search.html?query=%SUCHE%&x=0
set url=%url%%SUCHE%
%url%

goto ende

:at

set /p SUCHE=Hier den zachen Artikel fix eingem:
set SUCHE=%SUCHE: =+%

:: URL ohne &
start https://www.google.%land%/search?q=%SUCHE%
start https://www.conrad.%land%/de/Search.html?search=%SUCHE%
start https://www.saturn.%land%/de/search.html?query=%SUCHE%&searchProfile=onlineshop&channel=sedede




:: URL´s mit &
::Alternate
set url=start "" "https://www.alternate.%land%/html/search.html?query=%SUCHE%&x=0
set url=%url%%SUCHE%
%url%

::Media Markt
set url=start "" "https://www.mediamarkt.%land%/de/search.html?query=%SUCHE%&searchProfile=onlineshop&channel=mmdede"
set url=%url%%SUCHE%
%url%

goto ende

:ende
exit






