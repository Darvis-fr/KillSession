query session /sm | find "D‚co" >Session3.txt 
timeout 3 
for /f "skip=1 eol=> tokens=1," %%i in (session3.txt) DO (timeout 2 && rwinsta %%i)
del session3.txt
