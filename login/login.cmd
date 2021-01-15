@echo off

rem echo Logged in as %username% on %computername% on %date% %time% ... >> c:\tmp\log.log

rem Set environment variables

rem ...

rem Map drivers

rem Map home drive
subst h: /d > nul
subst h: %DATA_ROOT_DIR%\in_process\replicated\wir-entwickeln\home\%username% > nul

rem Map (personal) data drive
subst i: /d > nul
subst i: %DATA_ROOT_DIR%\in_process\replicated\wir-entwickeln\data\%username% > nul

rem Map logex.epos data drive
rem subst j: /d > nul
rem subst j: i:\wir-entwickeln\projekte\logex\epos > nul

rem Map wir-entwickeln.gandalf data drive
rem subst k: /d > nul
rem subst k: i:\wir-entwickeln\projekte\wir-entwickeln\gandalf > nul

rem Map wir-entwickeln global data drive
subst l: /d > nul
subst l: %DATA_ROOT_DIR%\in_process\replicated\wir-entwickeln\data\common\wir-entwickeln > nul

rem Map workspace drive
subst o: /d > nul
subst o: %DATA_ROOT_DIR%\in_process\local\wir-entwickeln\work\%username% > nul

rem Map progs drive
subst p: /d > nul
subst p: %DATA_ROOT_DIR%\in_process\local\wir-entwickeln\progs\%username% > nul

rem Map building kits repository drive
rem subst q: /d > nul
rem subst q: %DATA_ROOT_DIR%\in_process\replicated\wir-entwickeln\building_kits > nul
rem Map plenus workspace drive
subst q: /d > nul
subst q: %DATA_ROOT_DIR%\in_process\local\wir-entwickeln\work\%username%\wir-entwickeln\pallando\client

rem Map distribution space drive
subst r: /d > nul
subst r: %DATA_ROOT_DIR%\in_process\local\wir-entwickeln\dist > nul

rem Map replicated software repository drive
subst s: /d > nul
subst s: %DATA_ROOT_DIR%\in_process\replicated\wir-entwickeln\software > nul

rem Map temporary data drive
subst t: /d > nul
subst t: %DATA_ROOT_DIR%\in_process\replicated\wir-entwickeln\tmp_data\%username% > nul

rem Map build space drive
subst u: /d > nul
subst u: %DATA_ROOT_DIR%\in_process\local\wir-entwickeln\build > nul

rem Map YouTube media drive (used by Kodi)
net use x: /delete > nul
net use x: \\10.20.34.210\youtube_media /persistent:no

rem sleep 10

rem Start scheduled tasks
rem schtasks.exe /run /tn synchronize_profile

rem pause