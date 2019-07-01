@echo off
setlocal EnableDelayedExpansion
set dir=%~dp0

for /r %%a in (*.txt) do (

	set name=%%a
	set "dir2=!name:%dir%=!"

   for /f "delims=\" %%h in ("!dir2!") do (	
	set stage=%%h
	
   )
  for /f "delims=" %%b in ('findstr "setTitle\(\"*\""  "%%a"') do (	
	 set title=%%b
	
   ) 
   for /f "delims=" %%c in ('findstr "setDescription\(\"*\""  "%%a"') do (	
	 set desc=%%c
	
   )
 set line1=advancements.!stage!.!dir2:~7,-4!.title=!title:~10,-2! 
 set line2=advancements.!stage!.!dir2:~7,-4!.description=!desc:~16,-2!
 echo !line1! 
 echo !line2! 
 echo !line1!  >> zh_cn.lang
 echo !line2!  >> zh_cn.lang
)

pause