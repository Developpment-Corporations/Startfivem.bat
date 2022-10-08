:menu
@echo off & color 0f & cls & title start.bat par !'Smik#0651
mode 60,20
color 06
echo.
echo        [1] Lance ton serveur  [2] Cree une backup
echo.
echo        [3] Supprime le cache  [4] Un Probleme / bug
echo.
set /p answer="Quelle option choisi tu ? : "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
goto :menu
exit

:1
color 06
echo.
echo Lancement du serveur en cours...
ping localhost -n 2 >nul
echo.
cd /d D:\BaseTemplate
D:\BaseTemplate\FXServer.exe +exec server.cfg
rem Changez les 2 chemins d'accès ci-dessus
pause
exit

:2
color 06
echo -----------------------------------
echo Creation d'une backup en cours...
echo -----------------------------------
ping localhost -n 5 >nul
XCOPY D:\BaseTemplate D:\BaseTemplate-backup\ /m /e /y 
rem Changez les 2 chemins d'accès ci-dessus
echo.
echo Backup cree avec succes !
ping localhost -n 3 >nul
echo.
echo Pour fermer cette fenetre appuie sur Enter. 
pause
exit

:3
color 06
echo.
echo Suppression du cache en cours...
RMDIR /s /q "D:\BaseTemplate\cache"
rem Changez le chemin d'accès ci-dessus
echo.
ping localhost -n 2 >nul
echo Dossier cache supprime !
echo.
echo Pour fermer cette fenetre appuie sur Enter. 
pause
exit

:4
echo.
color 06
echo Obtient de l'aide sur notre discord.
ping localhost -n 3 >nul
echo.
echo En ouvrant un ticket.
echo.
ping localhost -n 3 >nul
echo Redirection vers mon servuer Discord...
ping localhost -n 5 >nul
start https://discord.gg/AHxE7C5NaZ
ping localhost -n 3 >nul
echo Redirection effectuee
ping localhost -n 3 >nul
echo.
echo Repondez par [oui] ou [non]
set /p answer="Vous avez aimer le start > "
if /i {%ANSWER%}=={Oui} (goto :5)
if /i {%ANSWER%}=={Non} (goto :6)
goto :menu
exit

