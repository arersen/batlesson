    @echo
      
      
      off
      
      set OUTPUTFILE=%1
echo<html>                                  >%OUTPUTFILE%
echo<head>                                 >>%OUTPUTFILE%
echo<title>This is a greeting page</title> >>%OUTPUTFILE%
echo</head>                                >>%OUTPUTFILE%
echo<body>                                 >>%OUTPUTFILE%
echoHello World!                           >>%OUTPUTFILE%
echo</body>                                >>%OUTPUTFILE%
echo</html>                                >>%OUTPUTFILE%
echo
"<html>"                                 >%OUTPUTFILE%
@echo off
set OUTPUTFILE=%1

echo^<html^>                                    >%OUTPUTFILE%
echo^<head^>                                   >>%OUTPUTFILE%
echo^<title^>This is a greeting page^</title^> >>%OUTPUTFILE%
echo^</head^>                                  >>%OUTPUTFILE%
echo^<body^>                                   >>%OUTPUTFILE%
echoHello World!                               >>%OUTPUTFILE%
echo^</body^>                                  >>%OUTPUTFILE%
echo^</html^>                                  >>%OUTPUTFILE%
@echo off
set OUTPUT=out.html

if "%STDOUT_REDIRECTED%" == "" (
set STDOUT_REDIRECTED=yes
cmd.exe /c %0 %* >%OUTPUT%
exit /b %ERRORLEVEL%
)


echo^<html^>
echo^<head^>
echo^<title^>This is a greeting page^</title^>
echo^</head^>
echo^<body^>
echo Hello World!
echo^</body^>
echo^</html^>

@echo off

set ARG=1


rem Переменные окружения в выражении не обязательно заключать в %...%
set /a RESULT=ARG + 2
echo%RESULT%
remЕсли выражение содержит какие-либо из символов non grata, надо
remзаключить его в кавычкиset /a RESULT="ARG << 2"
echo%RESULT%
remШестнадцатеричная арифметика
set /a RESULT=0x1234 + 0x6786
echo%RESULT%
rem И многое-многое другое...

exit /b [опциональный код возврата]

@echo off

call :factorial %1
echo %RESULT%
exit
rem Функция для подсчета значения факториала
rem Вход:
rem       %1        Число, для которого необходимо подсчитать факториал
rem Выход:
rem       %RESULT%  Значение факториала
:factorial


if %1 == 0 (
set RESULT=1
exit /b
)


if %1 == 1 (
set RESULT=1
exit /b
)


set /a PARAM=%1 - 1


call :factorial %PARAM%


set /a RESULT=%1 * %RESULT%


exit /b

if condition (
rem Команды ветки ‘then’
rem ...
) else (
rem Команды ветки ‘else’
rem ...
)

@echo off

set BUILDMODE=%1


if "%BUILDMODE%" == "" (
echoFAIL: Аргумент является обязательным ^(--debug, --release^)exit /b 1
)


rem Удаляем из аргумента все дефисы для упрощения обработки
set BUILDMODE=%BUILDMODE:-=%


if "%BUILDMODE%" == "debug" (
echoINFO: Устанавливаем debug-режим окруженияset CCFLAGS=/Od /MDd /Z7
) else (
echoINFO: Устанавливаем release-режим окруженияset CCFLAGS=/O2 /MD
)

if "%BUILDMODE%" == "debug" (
echoINFO: Устанавливаем debug-режим окружения
set OPTFLAGS=/Od
set CCFLAGS=%OPTFLAGS% /MDd /Z7
) else (
echoINFO: Устанавливаем release-режим окружения
set OPTFLAGS=/O2
set CCFLAGS=%OPTFLAGS% /MD
)

@echo off

rem Читаем настройки из файла settings.txt, который должен располагаться в
rem том же каталоге, что и bat-файл. Если не удалось распарсить настройки -
rem выходим с ненулевым кодом возврата.
call :read_settings %~dp0\settings.txt || exit /b 1


rem Прочитанные настройки:
echoBuild mode  : %BUILDMODE%echoCompiler    : %COMPILER%
echoArchitecture: %ARCH%
rem Выход из сценария. Дальше - только функции.
exit /b 0


remrem Функция для чтения настроек из файла.
rem Вход:
rem       %1           - Имя файла с настройками
:read_settings


set SETTINGSFILE=%1


rem Проверка существования файла
if not exist %SETTINGSFILE% (
echoFAIL: Файл с настройками отсутствуетexit /b 1
)


rem Обработка файла c настройками
rem Здесь:
rem     eol=# указывает на то, что содержимое строки начиная с символа #
rem     и до ее конца может быть пропущено как комментарий.
remrem     delims== указывает, что разделителем значений является символ =
remrem     tokens=1,2 приводит к тому, что в переменную %%i будет занесен первый
rem     токен, а в %%j - второй.
remfor /f "eol=# delims== tokens=1,2" %%i in (%SETTINGSFILE%) do (
rem В переменной i - ключ
rem В переменной j - значение
rem Мы транслируем это в переменные окружения
set %%i=%%j
)


exit /b 0
