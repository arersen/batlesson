
<html><head><title>Урок bat-аники</title><meta name="description" content="Статья рассказывает о малоизвестных возможностях командного языка Windows." /><meta name="keywords" content="bat файлы" /><meta name="robots" content="index,follow" /><link rel="stylesheet" href="/css/article.css" type="text/css" /><script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.2.3/jquery.min.js"></script><script type="text/javascript" src="/Script/rsdn.v1.js"></script><script type="text/javascript" src="/Forum/Forum.v3.js" charset="utf-8"></script><link rel="canonical" href="" /></head><body marginwidth="20" marginheight="20"><table width="100%" border="0" cellspacing="0" celpadding="2" style="font-family:verdana;font-weight:bold;padding: 0px 5px; BORDER: #9daabd 1px 	solid; 	COLOR: #646464; BACKGROUND-COLOR: #e6e6e6;"><tr><td nowrap="nowrap"><font size="1" style="font-weight:normal"><script src="/script/shMenu.v1.js" type="text/javascript" charset="utf-8"></script></font></td><td nowrap="nowrap" align="right" width="100%"><font size="2"> <A href="?print" target="_blank" title="Версия для печати"><IMG align="absmiddle" width="16" height="14" src="/images/printer2.gif" border="0" /></A>  <a href="/forum/other/1267611" target="_self" title="Перейти к обсуждению статьи"><font size="1" color="#646464"> Сообщений </font><font color="black">47</font></a>  <a href="/forum/other/1267611" target="_self" title="Перейти к обсуждению статьи"><img src="/forum/images/showfr.gif" align="absmiddle" border="0" width="18px" height="14px" /></a> <a href="/Forum/RateList.aspx?mid=1267611"><font color="#646464"><font size="1"> Оценка </font><font color="black">2986</font></font></a>   <a target="_blank" rel="nofollow" href="/Users/Private/AddFav.aspx?mid=1267611" onclick="return AddFav(this.href);" title="Добавить в избранное"><img align="absmiddle" src="/images/fav.gif" border="0" height="14px" /></a>  <a href="/Forum/Private/Subscr.aspx?tid=1267611" onclick="return SubMsg(this.href)" title="Подписка на сообщения" rel="nofollow"><img class="i" align="absmiddle" src="/forum/images/sub.gif" border="0" width="18px" height="14px" /></a>   <font size="1">Оценить </font><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=-3" onclick="return RateMsg(this.href);" title="+1"><img align="absmiddle" src="/forum/images/n11.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=1" onclick="return RateMsg(this.href);" title="Интересно"><img align="absmiddle" src="/forum/images/n1.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=2" onclick="return RateMsg(this.href);" title="Спасибо"><img align="absmiddle" src="/forum/images/n2.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=3" onclick="return RateMsg(this.href);" title="Супер"><img align="absmiddle" src="/forum/images/n3.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=-1" onclick="return RateMsg(this.href);" title="Удалить оценку"><img align="absmiddle" src="/forum/images/nx.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=-4" onclick="return RateMsg(this.href);" title="Согласен"><img align="absmiddle" src="/forum/images/np.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=0" onclick="return RateMsg(this.href);" title="Не согласен"><img align="absmiddle" src="/forum/images/nm.gif" border="0" width="18px" eight="14px" /></a> 
					</font></td></tr></table><script type="text/javascript" src="/Script/orphus.js"></script><a href="//orphus.ru" id="orphus"><img alt="Система Orphus" src="/Script/orphus.gif" border="0" width="100" height="25" /></a><H1>Урок bat-аники</H1><H5><SPAN class="title">Автор: </SPAN><SPAN class="value"><a target="_blank" href="http://rsdn.org/account/info/20458"></a></SPAN><br /><SPAN class="title"> </SPAN><SPAN class="value"><a target="_blank" href="http://rsdn.ru/mag/main.htm">RSDN Magazine #2-2005</a></SPAN></H5><H6><SPAN class="title">Опубликовано: </SPAN><SPAN class="value"></SPAN><BR /><SPAN class="title">Исправлено: </SPAN><SPAN class="value">10.12.2016</SPAN><BR /><SPAN class="title"> </SPAN><SPAN class="value">1.0</SPAN></H6><TABLE width="98%"><TR><TD valign="top" class="contents"><A href="#E4"><B>Введение</B></A><BR /><A href="#EPB"><B>Как экранировать символ?</B></A><BR /><A href="#EFG"><B>Как перенести длинную строку?</B></A><BR /><A href="#EXG"><B>Как определить имя каталога, в котором находится запущенный командный файл?</B></A><BR /><A href="#EFAAC"><B>Как получить короткое (8.3) имя файла?</B></A><BR /><A href="#ELBAC"><B>Как перенаправить стандартный вывод в файл?</B></A><BR /><A href="#E6CAC"><B>Как сложить два числа?</B></A><BR /><A href="#EKEAC"><B>А можно создать в bat-файле функцию?</B></A><BR /><A href="#EXGAC"><B>Как можно избежать использования goto?</B></A><BR /><A href="#EPLAC"><B>Как обработать текстовый файл?</B></A><BR /><A href="#ENPAC"><B>Что это за упомянутые ранее операторы объединения команд?</B></A><BR /><A href="#ENAAE"><B>Можно ли написать на bat-языке серьезную программу?</B></A><BR /><A href="#EDBAE"><B>Материалы по теме</B></A><BR /></TD><TD valign="top" align="center" class="contents"><IMG src="/mag/cover/mag0205.jpg"></IMG></TD></TR></TABLE><SCRIPT LANGUAGE="javascript">
			function ToggleCode(id)
			{
				el=document.getElementById(id);
				img=document.getElementById("img"+id);
				if(el.style.display=="none")
				{
					img.src="/images/ls2.gif";
					el.style.display="";
				}
				else
				{
					img.src="/images/ls1.gif";
					el.style.display="none";
				}
				return false;
			}
		</SCRIPT><H2>Введение<A name="E4"></A></H2>
    
    <P>Мы все любим писать серьезные вещи на серьезных языках. Шаблоны, C++, Reflection, Perl и многое другое – вот то, что мы любим, то, чему посвящаем длинные сообщения в форумах, то, что снится нам по ночам.</P>
    <P>Однако в нашей повседневной деятельности встречаются и вещи, которые не так интересны и интеллектуальны. Мы не очень любим говорить об этом, делаем вид, что Это – грязно, нечистоплотно и недостойно нашего внимания. Однако, приходит день, приходит час и перст Судьбы находит нас – нам надо написать еще один батничек… Иногда это запускалка для построения проекта, которая должна при ошибке компиляции скопировать логи на сетевой диск, иногда – запуск обновления исходных текстов из SVN. Иногда – что-нибудь еще.</P>
    <P>К чему я это все? А к тому, что поговорим мы о полезных хитростях при написании файлов сценариев на встроенном командном языке Windows. К счастью, это занятие не является доминирующим в профессиональной деятельности автора, так что я не обязуюсь заполнить абсолютно все пробелы в данной области. Кроме того, рожденный ползать летать не может, и из cmd.exe, увы, не получится ни /usr/bin/perl, ни даже /bin/sh. Так что, все нижеприведенное – просто некоторые интересные факты из жизни файлов с расширением bat, на которые автор обратил внимание во время решения различных практических задач автоматизации.</P>
    <P>Наш урок будет построен по сугубо практическому принципу, известному в народе как Cookbook. Иными словами, я не буду вдаваться в синтаксические и семантические дебри командного языка Windows, а лишь продемонстрирую его возможности (хотел написать «мощь», но все-таки передумал). Именно поэтому большинство следующих заголовков будет начинаться со слова «Как». Впрочем, для полноты по ходу развития событий будут даваться подробные комментарии, в том числе и по языковым конструкциям.</P>
    <TABLE class="warning" width="98%"><TR><TD><strong>ПРЕДУПРЕЖДЕНИЕ</strong><br />
      <P>Практически все описанные здесь рецепты подойдут только для Windows 2000 и старше. Bat-язык Windows 9x, к счастью, можно считать почившим, так что здесь он не рассматривается. Более того, диалекты cmd.exe операционных систем Windows 2000, Windows XP и Windows Server 2003 также немного различаются. Все приведенное ниже создано и проверено на компьютере под управлением операционной системы Windows XP. За подробной информацией по различиям в реализации той или иной команды обращайтесь к [1].</P>
    </TD></TR></TABLE>
  <H2>Как экранировать символ?<A name="EPB"></A></H2>
    
    <P>В командном языке Windows существует некоторый набор символов с высоким приоритетом, которые всегда трактуются как спецсимволы. К ним, в частности, относятся:</P>
    <UL style="LIST-STYLE:square">
      <LI>Операторы перенаправления ввода-вывода &lt;, &gt;, &gt;&gt;.</LI>
      <LI>Оператор конвейера |.</LI>
      <LI>Операторы объединения команд ||, &amp; и &amp;&amp;.</LI>
      <LI>Оператор разыменования переменной %…%.</LI>
    </UL>
    <P>В случае если символ, относящийся к одному из таких операторов, должен быть включен в вашу команду в его литеральном смысле, вас ждут определенные неожиданности. Например, при выполнении вот такой строки</P>
    <DIV id="ECC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">echo</SPAN>
      <SPAN class="STRING">The ratio should be up to 10%.</SPAN>
    </PRE></TD></TR></TABLE></DIV>
    <P>символ процента будет «съеден» интерпретатором, который решит, что это попытка вывода значения какой-то переменной. В случае со знаком процента решение довольно хорошо известно и состоит в удвоении этого символа:</P>
    <DIV id="ELC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">echo</SPAN>
      <SPAN class="STRING"> The ratio should be up to 10%%.</SPAN>
    </PRE></TD></TR></TABLE></DIV>
    <P>после чего все заработает так, как надо. Однако в других случаях все менее очевидно. Рассмотрим командный сценарий, который генерирует незатейливый HTML-файл:</P>
    <DIV id="EUC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">@echo</SPAN>
      <SPAN class="STRING"></SPAN>
      <SPAN class="KEYWORD">off</SPAN>
      <SPAN class="STRING"></SPAN>
      <SPAN class="KEYWORD">set</SPAN> OUTPUTFILE=%1

<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">&lt;html&gt;</SPAN>                                  &gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">&lt;head&gt;</SPAN>                                 &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">&lt;title&gt;This is a greeting page&lt;/title&gt;</SPAN> &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">&lt;/head&gt;</SPAN>                                &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">&lt;body&gt;</SPAN>                                 &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">Hello World!</SPAN>                           &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">&lt;/body&gt;</SPAN>                                &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">&lt;/html&gt;</SPAN>                                &gt;&gt;%OUTPUTFILE%
</PRE></TD></TR></TABLE></DIV>
    <P>К сожалению, при попытке запуска этого "чуда инженерного разума" нас постигнет неудача в виде сообщения об ошибке</P>
    <DIV id="E2D"><TABLE class="code" width="98%"><TR><TD><PRE>
&gt; was unexpected at this time.
</PRE></TD></TR></TABLE></DIV>
    <P>Оно и понятно: командный интерпретатор не в силах разобраться, где его просят вывести на экран символ HTML-тега, а где перенаправить вывод. В нормальных языках программирования эта проблема обычно решается обрамлением строковых литералов кавычками. Отчасти это помогает и в bat-файлах. Но лишь отчасти. Выполнение строки</P>
    <DIV id="E6D"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">echo</SPAN>
      <SPAN class="STRING">"&lt;html&gt;"</SPAN>                                 &gt;%OUTPUTFILE%
</PRE></TD></TR></TABLE></DIV>
    <P>приведет к тому, что в выходной файл будут записаны и сами кавычки. Это явно не совсем то, что требуется.</P>
    <P>К счастью, есть один малоизвестный способ, позволяющий добиться требуемого результата. Символ ^ позволяет экранировать любой другой символ с безусловным приоритетом. Таким образом, вышеприведенный пример генерации HTML может быть успешно записан так:</P>
    <DIV id="EKE"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">@echo</SPAN> off
<SPAN class="KEYWORD">set</SPAN> OUTPUTFILE=%1

<SPAN class="KEYWORD">echo</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&lt;html</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&gt;</SPAN>                                    &gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&lt;head</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&gt;</SPAN>                                   &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&lt;title</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&gt;This is a greeting page</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&lt;/title</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&gt;</SPAN> &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&lt;/head</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&gt;</SPAN>                                  &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&lt;body</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&gt;</SPAN>                                   &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">Hello World!</SPAN>                               &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&lt;/body</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&gt;</SPAN>                                  &gt;&gt;%OUTPUTFILE%
<SPAN class="KEYWORD">echo</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&lt;/html</SPAN><SPAN class="ACCENT">^</SPAN><SPAN class="STRING">&gt;</SPAN>                                  &gt;&gt;%OUTPUTFILE%
</PRE></TD></TR></TABLE></DIV>
    <P>Таким же способом можно экранировать любой другой специальный символ. Очевидно, можно экранировать и сам ^. Не очень эстетично, зато дешево и практично. Слово «надежно» я пропустил умышленно…</P>
  <H2>Как перенести длинную строку?<A name="EFG"></A></H2>
    
    <P>Совет по поводу экранирующего символа ^ имеет еще одно применение: перенос строк. Я (как и многие из вас, наверное) люблю, чтобы любой исходный текст, который я пишу, выглядел красиво – даже *.bat-файлы. Одним из обязательных условий красоты и удобочитаемости кода для меня является его ширина: все строки должны умещаться в 78 столбцов. Можно поспорить по поводу числа 78, но в одном я непреклонен – ограничение на ширину текста кода должно быть, иначе это не код, а макароны.</P>
    <P>Так вот долгое время *.bat-файлы портили мне жизнь тем, что иногда приходилось писать длинную строку – например, вызов какой-нибудь другой программы с кучей опций, и я не знал, что с этим делать. Происходило это нечасто, но всегда было неприятно. Но, к счастью, моя жизнь изменилась с тех пор, как я открыл для себя Супер-Символ ^:</P>
    <DIV id="ENG"><TABLE class="code" width="98%"><TR><TD><PRE>
packagebin.exe --recursive-search=yes --files-mask=exe,dll,pdb,obj <SPAN class="ACCENT">^</SPAN>
    --archive-type=zip --archive-level=max --deliver-method=ftp    <SPAN class="ACCENT">^</SPAN>
    --deliver-target=ftp://ftp.site.com
</PRE></TD></TR></TABLE></DIV>
    <P>Помните лишь, что чудо-символ должен быть последним в строке – скажите «Нет!» концевым пробелам.</P>
  <H2>Как определить имя каталога, в котором находится запущенный командный файл?<A name="EXG"></A></H2>
    
    <P>Иногда сценарию надо знать полный путь к себе самому и/или к каталогу, в котором он находится. Это может понадобиться по разным причинам. Например, он должен достать из системы контроля версий исходники в каталог &lt;script-dir&gt;/src рядом с собой. Или, запускаются тесты из каталога &lt;script-dir&gt;/tests, и перед их запуском надо добавить каталог &lt;script-dir&gt;/bin в переменную PATH.</P>
    <P>Можно, конечно, рассчитывать на то, что командный файл был вызван из того же каталога, где он находится, и тогда в качестве вышеупомянутого &lt;script-dir&gt; можно использовать переменную окружения %CD% - полный путь к текущему каталогу. Однако любые допущения в нашем деле недопустимы (хороший каламбур, однако!). Поэтому приведу более надежное решение.</P>
    <P>Прежде всего, вспоминаем, что переменная %0 в bat-файле соответствует нулевому аргументу командной строки, т.е. имени самого файла. После этого читаем скудную документацию для команды call:</P>
    <DIV id="EBH"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">call</SPAN> /?
</PRE></TD></TR></TABLE></DIV>
    <P>и обнаруживаем, что при использовании нумерованных переменных %0-%9 можно использовать некоторые модификаторы:</P>
    <DIV id="EIH"><TABLE class="code" width="98%"><TR><TD><PRE>
        %~1         - разворачивает %1, удаляя кавычки (")
        %~f1        - разворачивает %1 в полный квалифицированный путь
        %~d1        - разворачивает %1 в букву диска
        %~p1        - разворачивает %1 в путь
        %~n1        - разворачивает %1 в имя файла
        %~x1        - разворачивает %1 в расширение файла
        %~s1        - развернутый путь будет содержать только короткие имена
        %~a1        - разворачивает %1 в атрибуты файла
        %~t1        - разворачивает %1 в дату/время создания файла
        %~z1        - разворачивает %1 в размер файла
        %~$PATH:1   - Ищет в каталогах, перечисленных в переменной среды PATH,
                       и разворачивает %1 в полное квалифицированное имя 
                       первого совпадения. Если имя перменной среды
                       не определено, или если файл не найден, этот 
                       модификатор вернет пустую строку
</PRE></TD></TR></TABLE></DIV>
    <P>и, более того:</P>
    <DIV id="EMH"><TABLE class="code" width="98%"><TR><TD><PRE>
    Модификаторы можно объединять для получения сложных результатов:

        %~dp1       - разворачивает %1 в букву диска и путь
        %~nx1       - разворачивает %1 в имя файла с расширением
        %~dp$PATH:1 – ищет %1 в каталогах, перечисленных в переменной 
                       среды PATH, и разворачивает в букву диска
                       и путь к первому найденному файлу.
        %~ftza1     - разворачивает %1 в строку, подобную DIR
</PRE></TD></TR></TABLE></DIV>
    <P>Таким образом, правильным будет использовать в качестве тега &lt;script-dir&gt; сочетание <B>%~dp0</B>, которое будет раскрыто в полный путь к каталогу, где находится сценарий. Например,</P>
    <DIV id="ETH"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="ACCENT">"%~dp0</SPAN>\packagebin.exe<SPAN class="ACCENT">"</SPAN> --recursive-search=yes --files-mask=exe,dll,pdb,obj ^
    --archive-type=zip --archive-level=max --deliver-method=ftp            ^
    --deliver-target=ftp://ftp.site.com --deliver-source="%~dp0\bin"
</PRE></TD></TR></TABLE></DIV>
    <P>Обратите внимание на использование кавычек – потенциально каталог может иметь в своем пути пробел. Кавычки избавят от проблем в этом случае.</P>
    <TABLE class="warning" width="98%"><TR><TD><strong>ПРЕДУПРЕЖДЕНИЕ</strong><br />
      <P>Опасайтесь бездумного применения команды cd %~dp0 без проверки результата выполнения. Теоретически, эта команда должна сменить текущий каталог на каталог, в котором расположен командный файл. Как правило, это работает. Однако возможны неожиданности. Однажды был написан простой командный сценарий, задача которого была просто удалить все каталоги рядом с собой. В «свою» директорию он переходил как раз через cd %~dp0. Все было проверено на локальной машине – работало замечательно. После этого сценарий был помещен на файл-сервер, где ему и полагалось быть. Я зашел с помощью Far в сетевой каталог, и для контрольной проверки решил запустить файл еще раз. Дальнейшее словно в тумане. cmd.exe правильно определил местонахождение bat-файла: \\servername\sharename\directory. Однако при попытке сделать туда cd, он сказал, что UNC-пути в качестве текущих каталогов не поддерживаются и лучше он сменит текущий каталог на C:\WINDOWS… Это было действительно мудрое решение… Часть сценария, отвечавшая за удаление всех каталогов, сработала отлично – хорошо, что я успел вовремя остановить это безумие.</P>
      <P>В тот день я узнал, что такое System Restore…</P>
    </TD></TR></TABLE>
  <H2>Как получить короткое (8.3) имя файла?<A name="EFAAC"></A></H2>
    
    <P>«А зачем? – спросите вы – Ведь мы живем в мире Интернета, Web-сервисов и NTFS с длинными именами файлов». Это действительно так, но иногда встречаются программы, которые отчаянно сопротивляются прогрессу, и в частности, не любят имен файлов и полных путей с пробелами. Одной из таких программ, кстати, является утилита build.exe из Windows DDK… В таких ситуациях спасает использование короткого, «беспробельного» DOS-имени для файла.</P>
    <TABLE class="warning" width="98%"><TR><TD><strong>ПРЕДУПРЕЖДЕНИЕ</strong><br />
      <P>Доступ к файлу по короткому имени может быть не всегда возможен. На файловой системе NTFS создание коротких псевдонимов для файлов может быть отключено путем установки в единицу значения «NtfsDisable8dot3NameCreation» в ключе реестра «HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\FileSystem».</P>
    </TD></TR></TABLE>
    <P>Итак, все же (в предположении, что надругательства над NTFS не было) – как? Внимательный читатель должен был заметить в предыдущем разделе, что при обращении к переменным %0 - %9 можно использовать префикс</P>
    <DIV id="ESAAC"><TABLE class="code" width="98%"><TR><TD><PRE>
%~s1        - expanded path contains short names only
</PRE></TD></TR></TABLE></DIV>
    <P>который нам как раз мог бы помочь. Но есть засада – все эти полезные префиксы нельзя использовать с произвольной переменной окружения, а присваивание переменным %0 - %9 не поддерживается. К счастью, описываемые префиксы можно еще использовать с переменными цикла for, и это дает нам способ достичь требуемого результата. Например, вот так можно получить 8.3-путь к “Program Files”:</P>
    <DIV id="EWAAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">for</SPAN> /d %%i <SPAN class="KEYWORD">in</SPAN> ("%PROGRAMFILES%") <SPAN class="KEYWORD">do</SPAN> (
    <SPAN class="KEYWORD">set</SPAN> PROGRAMFILESSHORT=%%~si
)

<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">8.3-имя для каталога "%PROGRAMFILES%" -^&gt; "%PROGRAMFILESSHORT%"</SPAN></PRE></TD></TR></TABLE></DIV>
    <P>Этот и другие модификаторы можно использовать и с любой другой формой цикла for, подробнее о которых можно узнать из:</P>
    <DIV id="EFBAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">for</SPAN> /?
</PRE></TD></TR></TABLE></DIV>
  <H2>Как перенаправить стандартный вывод в файл?<A name="ELBAC"></A></H2>
    
    <P>Плоха та короткая программа, которая не стремится стать большой. К сожалению, это правило применимо и к командным файлам Windows тоже – иногда bat-файлы вырастают до довольно больших размеров. Если при этом результат выполняемых команд должен журналироваться, то все становится совсем плохо – почти каждая строка имеет хвостик типа</P>
    <DIV id="ERBAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">echo</SPAN>
      <SPAN class="STRING">Cleaning up the target directory</SPAN> &gt;&gt;%LOGFILE%
...
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">The target directory has been cleaned</SPAN> &gt;&gt;%LOGFILE%
</PRE></TD></TR></TABLE></DIV>
    <P>Гораздо проще было бы перенаправить стандартный вывод в файл, чтобы все команды echo и вообще, все, что выводится на экран, автоматически попадали в журнальный файл. Сделать это можно следующим образом (рассмотрим на знакомом примере генерации HTML-файла):</P>
    <DIV id="E4BAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">@echo</SPAN> off
<SPAN class="KEYWORD">set</SPAN> OUTPUT=out.html

<SPAN class="KEYWORD">if</SPAN> "%STDOUT_REDIRECTED%" == "" (
    <SPAN class="KEYWORD">set</SPAN> STDOUT_REDIRECTED=yes
    cmd.exe /c %0 %* &gt;%OUTPUT%
    <SPAN class="KEYWORD">exit</SPAN> /b %ERRORLEVEL%
)

<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">^&lt;html^&gt;
</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">^&lt;head^&gt;
</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">^&lt;title^&gt;This is a greeting page^&lt;/title^&gt;
</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">^&lt;/head^&gt;
</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">^&lt;body^&gt;
</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">Hello World!
</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">^&lt;/body^&gt;
</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">^&lt;/html^&gt;</SPAN></PRE></TD></TR></TABLE></DIV>
    <P>Здесь делается то же, что и раньше, но с перенаправлением стандартного вывода в файл out.html. Делается это простым способом – перезапуском сценарием самого себя. Сначала проверяется, не установлена ли переменная окружения STDOUT_REDIRECTED. Если она установлена, значит, сценарий уже перезапущен с перенаправленным выводом и можно просто продолжить работу. Если же переменная не установлена, то мы ее устанавливаем и перезапускаем скрипт (cmd.exe /c %0) с таким же набором параметров, что и исходная команда (%*) и перенаправленным в файл стандартным выводом (&gt;%OUTPUT%). После завершения выполнения «перенаправленной» команды выходим.</P>
    <P>Такое «единовременное» перенаправление имеет и еще один неочевидный плюс: файл открывается и закрывается только один раз, и всем командам и дочерним процессам передается дескриптор уже открытого файла. Во-первых, это чуть-чуть улучшит производительность (жизнь удалась – сроду бы не подумал, что буду когда-нибудь писать о производительности в bat-файлах). Во-вторых, это поможет избежать проблемы с невозможностью открыть файл для записи. Такое может случиться, если после выполнения одной из команд останется «висеть» какой-нибудь процесс. Он будет держать дескриптор интересующего нас файла и перенаправление вывода в этот файл для всех последующих команд провалится. Проблема может показаться надуманной, но однажды она украла у меня 2 часа жизни…</P>
  <H2>Как сложить два числа?<A name="E6CAC"></A></H2>
    
    <P>Краткий ответ – смотри:</P>
    <DIV id="EFDAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">set</SPAN> /?
</PRE></TD></TR></TABLE></DIV>
    <P>Длинный ответ таков. В bat-файлах можно производить довольно-таки продвинутые вычисления – продвинутые не в сравнении с другими языками, а в сравнении с отсутствием возможности что-либо вычислить вообще. Вычисление осуществляется командой set, если она выполняется с ключом /a. Поддерживается практически полный набор операторов языка C, включая шестнадцатеричный модификатор 0x. Переменные окружения в выражении не обязательно заключать в знаки процента – все, что не является числом, считается переменной. Подробнее – все-таки в man set, тьфу, то есть в set /?. А здесь напоследок – просто несколько примеров.</P>
    <DIV id="EMDAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">@echo</SPAN> off

<SPAN class="KEYWORD">set</SPAN> ARG=1

<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Переменные окружения в выражении не обязательно заключать в %...%
</SPAN><SPAN class="KEYWORD">set</SPAN> /a RESULT=ARG + 2
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">%RESULT%
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">Если выражение содержит какие-либо из символов non grata, надо
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">заключить его в кавычки</SPAN><SPAN class="KEYWORD">set</SPAN> /a RESULT="ARG &lt;&lt; 2"
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">%RESULT%
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">Шестнадцатеричная арифметика
</SPAN><SPAN class="KEYWORD">set</SPAN> /a RESULT=0x1234 + 0x6786
<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">%RESULT%
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> И многое-многое другое...</SPAN></PRE></TD></TR></TABLE></DIV>
  <H2>А можно создать в bat-файле функцию?<A name="EKEAC"></A></H2>
    
    <P>Да, можно. Более того, иногда даже нужно. Правда, функциями это можно назвать условно. Есть особый синтаксис команды call, который позволяет перейти на метку в этом же bat-файле с запоминанием места, откуда был произведен этот вызов:</P>
    <DIV id="EQEAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">call</SPAN> :метка аргументы
</PRE></TD></TR></TABLE></DIV>
    <P>Возврат из функции производится командой:</P>
    <DIV id="EXEAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">exit</SPAN> /b [опциональный код возврата]
</PRE></TD></TR></TABLE></DIV>
    <P>Ключ /b здесь очень важен: без него будет произведен выход не из функции, а из сценария вообще.</P>
    <P>За подробностями обращайтесь к:</P>
    <DIV id="EAFAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">call</SPAN> /?
<SPAN class="KEYWORD">exit</SPAN> /?
</PRE></TD></TR></TABLE></DIV>
    <P>Что интересно, команда call с таким синтаксисом поддерживает рекурсивные вызовы с автоматическим созданием нового фрейма для переменных аргументов %0-%9. Иногда это может быть полезным. Вот классический пример рекурсивного подсчета факториала на командном языке:</P>
    <DIV id="EJFAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">@echo</SPAN> off

<SPAN class="KEYWORD">call</SPAN> :factorial %1
<SPAN class="KEYWORD">echo</SPAN> %RESULT%
<SPAN class="KEYWORD">exit
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Функция для подсчета значения факториала
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Вход:
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">       %1        Число, для которого необходимо подсчитать факториал
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Выход:
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">       %RESULT%  Значение факториала
</SPAN>:factorial

<SPAN class="KEYWORD">if</SPAN> %1 == 0 (
    <SPAN class="KEYWORD">set</SPAN> RESULT=1
    <SPAN class="KEYWORD">exit</SPAN> /b
)

<SPAN class="KEYWORD">if</SPAN> %1 == 1 (
    <SPAN class="KEYWORD">set</SPAN> RESULT=1
    <SPAN class="KEYWORD">exit</SPAN> /b
)

<SPAN class="KEYWORD">set</SPAN> /a PARAM=%1 - 1

<SPAN class="KEYWORD">call</SPAN> :factorial %PARAM%

<SPAN class="KEYWORD">set</SPAN> /a RESULT=%1 * %RESULT%

<SPAN class="KEYWORD">exit</SPAN> /b
</PRE></TD></TR></TABLE></DIV>
    <P>Пример работы:</P>
    <DIV id="EUGAC"><TABLE class="code" width="98%"><TR><TD><PRE>
&gt; factorial.bat 10
3628800
</PRE></TD></TR></TABLE></DIV>
  <H2>Как можно избежать использования goto?<A name="EXGAC"></A></H2>
    
    <P>Любой хоть сколько-то осмысленный *.bat-файл длиной больше 50 строк является ярким лозунгом в поддержку работы Дейкстры <A href="http://www.acm.org/classics/oct95/" class="link-ext" target="_blank">«О вреде оператора goto»</A>. Мешанина из переходов вперед и назад действительно является кодом «только для записи». Можно ли что-то предпринять по этому поводу?</P>
    <P>На самом деле можно. Как правило, большинство меток и переходов используются для организации ветвлений при проверке условий, т.е. банальных if-then-else блоков. В оригинале, bat-язык поддерживал только одну команду в блоке then, что автоматически приводило к идиомам вида:</P>
    <DIV id="EEHAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">if</SPAN> condition <SPAN class="KEYWORD">goto</SPAN> :THEN
<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Команды ветки ‘else’
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> ...
</SPAN><SPAN class="KEYWORD">goto </SPAN>IF_END
:THEN
<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Команды ветки ‘then’
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> ...
</SPAN>:IF_END
</PRE></TD></TR></TABLE></DIV>
    <P>Но к счастью, командный интерпретатор cmd.exe современных ОС Windows 2000 и старше поддерживает блоки команд в конструкциях ветвления, что устраняет необходимость применения меток. Блоки команд заключаются в круглые скобки. Выглядит это так (имитируя C/C++ indentation style):</P>
    <DIV id="EYHAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">if</SPAN> condition (
    <SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Команды ветки ‘then’
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> ...
</SPAN>) <SPAN class="KEYWORD">else</SPAN> (
    <SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Команды ветки ‘else’
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> ...
</SPAN>)
</PRE></TD></TR></TABLE></DIV>
    <P>Конкретный пример использования:</P>
    <DIV id="ELIAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">@echo</SPAN> off

<SPAN class="KEYWORD">set</SPAN> BUILDMODE=%1

<SPAN class="KEYWORD">if </SPAN>"%BUILDMODE%" == <SPAN class="STRING">""</SPAN> (
    <SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">FAIL: Аргумент является обязательным ^(--debug, --release^)</SPAN><SPAN class="KEYWORD">exit</SPAN> /b 1
)

<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Удаляем из аргумента все дефисы для упрощения обработки
</SPAN><SPAN class="KEYWORD">set</SPAN> BUILDMODE=%BUILDMODE:-=%

<SPAN class="KEYWORD">if</SPAN> "%BUILDMODE%" == "debug" (
    <SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">INFO: Устанавливаем debug-режим окружения</SPAN><SPAN class="KEYWORD">set</SPAN> CCFLAGS=/Od /MDd /Z7
) <SPAN class="KEYWORD">else</SPAN> (
    <SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">INFO: Устанавливаем release-режим окружения</SPAN><SPAN class="KEYWORD">set</SPAN> CCFLAGS=/O2 /MD
)
</PRE></TD></TR></TABLE></DIV>
    <P>На мой взгляд, с этим уже вполне можно жить. Но, как всегда, жизнь не так проста, как кажется. Есть одна проблема. Переменные, использующиеся в блоках then и else, раскрываются <U>перед</U> началом выполнения этих блоков, а не в процессе выполнения. В приведенном примере это не вызывает никаких проблем, однако в следующем вызовет:</P>
    <DIV id="EPJAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">if</SPAN> "%BUILDMODE%" == <SPAN class="STRING">"debug"</SPAN> (
    <SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">INFO: Устанавливаем debug-режим окружения
</SPAN><SPAN class="KEYWORD">set</SPAN> OPTFLAGS=/Od
    <SPAN class="KEYWORD">set</SPAN> CCFLAGS=%OPTFLAGS% /MDd /Z7
) <SPAN class="KEYWORD">else</SPAN> (
    <SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">INFO: Устанавливаем release-режим окружения
</SPAN><SPAN class="KEYWORD">set</SPAN> OPTFLAGS=/O2
    <SPAN class="KEYWORD">set</SPAN> CCFLAGS=%OPTFLAGS% /MD
)
</PRE></TD></TR></TABLE></DIV>
    <P>Загвоздка в том, что в обоих блоках подстановка переменной OPTFLAGS произойдет до того, как она будет изменена в процессе выполнения этого блока. Соответственно, в CCFLAGS будет подставлено то значение, которое OPTFLAGS имела на момент начала выполнения данного if-блока.</P>
    <P>Решается эта проблема путем использования отложенного раскрытия переменных. Переменные, заключенные в !…! вместо %…%, будут раскрыты в их значения только в момент непосредственного использования. Данный режим по умолчанию отключен. Включить его можно либо использованием ключа /V:ON при вызове cmd.exe, либо использованием команды</P>
    <DIV id="EIKAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">setlocal</SPAN> enabledelayedexpansion
</PRE></TD></TR></TABLE></DIV>
    <P>в тексте самого bat-файла. Второй способ мне представляется более удобным – не очень здорово требовать от кого-то запуска твоего сценария с определенным параметром.</P>
    <P>С учетом сказанного предыдущий «неправильный» пример может быть исправлен так:</P>
    <DIV id="ERKAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">setlocal</SPAN> enabledelayedexpansion

<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> ...
</SPAN><SPAN class="KEYWORD">if</SPAN> "%BUILDMODE%" == <SPAN class="STRING">"debug"</SPAN> (
    <SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">INFO: Setting up debug mode environment
</SPAN><SPAN class="KEYWORD">set</SPAN> OPTFLAGS=/Od
    <SPAN class="KEYWORD">set</SPAN> CCFLAGS=!OPTFLAGS! /MDd /Z7
) <SPAN class="KEYWORD">else</SPAN> (
    <SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">INFO: Setting up release mode environment
</SPAN><SPAN class="KEYWORD">set</SPAN> OPTFLAGS=/O2
    <SPAN class="KEYWORD">set</SPAN> CCFLAGS=!OPTFLAGS! /MD
)
</PRE></TD></TR></TABLE></DIV>
    <P>Вот теперь это почти полноценный if-then-else блок. Почти, потому что если в одной из команд echo у вас встретится закрывающая круглая скобка, то вам необходимо заэкранировать ее символом ^, иначе синтаксический анализатор путается…</P>
    <P>Но в любом случае, это гораздо лучше безумного количества меток и переходов.</P>
  <H2>Как обработать текстовый файл?<A name="EPLAC"></A></H2>
    
    <P>Иногда в командном файле необходимо получить доступ к содержимому некоторого текстового файла и некоторым образом это содержимое обработать. Например, прочитать файл настроек программы.</P>
    <P>Для привнесения еще большей конкретики в процесс изучения зададимся целью прочитать файл с настройками следующего содержания:</P>
    <DIV id="EXLAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="COMMENT"># Это простой файл с настройками
</SPAN>
      <SPAN class="COMMENT"># Режим сборки
</SPAN>buildmode=release

<SPAN class="COMMENT"># Компилятор
</SPAN>compiler=cl.exe

<SPAN class="COMMENT"># Архитектура
</SPAN>arch=x86
</PRE></TD></TR></TABLE></DIV>
    <P>Ничего сверхъестественного – простой key=value формат с возможностью вставки Unix-style комментариев. Помочь в чтении и обработке этого файла нам сможет команда for. Ее дополнительные опции позволяют задать и разделители, и символ начала комментария, и кое-что еще. Вот командный файл, который выполняет поставленную задачу:</P>
    <DIV id="EEMAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">@echo</SPAN> off

<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Читаем настройки из файла settings.txt, который должен располагаться в
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> том же каталоге, что и bat-файл. Если не удалось распарсить настройки -
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> выходим с ненулевым кодом возврата.
</SPAN><SPAN class="KEYWORD">call</SPAN> :read_settings %~dp0\settings.txt || exit /b 1

<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Прочитанные настройки:
</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">Build mode  : %BUILDMODE%</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">Compiler    : %COMPILER%
</SPAN><SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">Architecture: %ARCH%
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Выход из сценария. Дальше - только функции.
</SPAN><SPAN class="KEYWORD">exit</SPAN> /b 0

<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"></SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Функция для чтения настроек из файла.
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Вход:
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">       %1           - Имя файла с настройками
</SPAN>:read_settings

<SPAN class="KEYWORD">set</SPAN> SETTINGSFILE=%1

<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Проверка существования файла
</SPAN><SPAN class="KEYWORD">if not exist</SPAN> %SETTINGSFILE% (
    <SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">FAIL: Файл с настройками отсутствует</SPAN><SPAN class="KEYWORD">exit</SPAN> /b 1
)

<SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Обработка файла c настройками
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Здесь:
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">     eol=# указывает на то, что содержимое строки начиная с символа #
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">     и до ее конца может быть пропущено как комментарий.
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"></SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">     delims== указывает, что разделителем значений является символ =
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"></SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">     tokens=1,2 приводит к тому, что в переменную %%i будет занесен первый
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT">     токен, а в %%j - второй.
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"></SPAN><SPAN class="KEYWORD">for</SPAN> /f "eol=# delims== tokens=1,2" %%i in (%SETTINGSFILE%) <SPAN class="KEYWORD">do</SPAN> (
    <SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> В переменной i - ключ
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> В переменной j - значение
</SPAN><SPAN class="KEYWORD">rem</SPAN><SPAN class="COMMENT"> Мы транслируем это в переменные окружения
</SPAN><SPAN class="KEYWORD">set</SPAN> %%i=%%j
)

<SPAN class="KEYWORD">exit</SPAN> /b 0
</PRE></TD></TR></TABLE></DIV>
    <P>Обильные комментарии должны помочь легко разобраться, что к чему. За подробностями, как обычно, отошлю к:</P>
    <DIV id="EUOAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">for</SPAN> /?
</PRE></TD></TR></TABLE></DIV>
    <P>Кстати, возможности команды for не ограничиваются чтением из файла. Возможно также чтение вывода другой команды. Например, так:</P>
    <DIV id="E2OAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">@echo</SPAN> off

<SPAN class="KEYWORD">for</SPAN> /f "tokens=* usebackq" %%i <SPAN class="KEYWORD">in</SPAN> (`cmd.exe /c ver`) <SPAN class="KEYWORD">do</SPAN> (
    <SPAN class="KEYWORD">set</SPAN> VERSION=%%i
)

<SPAN class="KEYWORD">echo</SPAN><SPAN class="STRING">%VERSION%</SPAN></PRE></TD></TR></TABLE></DIV>
    <P>Особенно меня умиляет наличие опции “usebackq”, которая делает синтаксис отдаленно похожим на юниксовый. И в стенах царства Билла есть граждане, скучающие по /bin/sh и пытающиеся хоть как-то скрасить существование свое и окружающих. Следующий совет это также косвенно подтверждает.</P>
  <H2>Что это за упомянутые ранее операторы объединения команд?<A name="ENPAC"></A></H2>
    
    <P>Это операторы &amp;, &amp;&amp; и ||. Они практически совсем не освещены в документации, но полезны в повседневности. Они позволяют объединять несколько команд в одну, т.е. примерно так:</P>
    <DIV id="ETPAC"><TABLE class="code" width="98%"><TR><TD><PRE>
command1 &amp; command2
command1 &amp;&amp; command2
command1 || command2
</PRE></TD></TR></TABLE></DIV>
    <P>Форма этих операторов весьма соответствует их содержанию. В случае, пожалуй, наименее полезного оператора &amp; вторая команда будет просто выполнена после первой, т.е. это равносильно простой записи:</P>
    <DIV id="EXPAC"><TABLE class="code" width="98%"><TR><TD><PRE>
command1
command2
</PRE></TD></TR></TABLE></DIV>
    <P>Оператор &amp;&amp; гарантирует, что вторая команда будет выполнена только, если первая была выполнена успешно, т.е. с нулевым кодом возврата (он же %errorlevel%). Такие конструкции очень популярны в мире shell-сценариев Unix. Например:</P>
    <DIV id="E2PAC"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">cd</SPAN> sources &amp;&amp; make clean
</PRE></TD></TR></TABLE></DIV>
    <P>Я был приятно удивлен, узнав, что cmd.exe тоже умеет выполнять такие конструкции. Это безопаснее и правильнее, нежели простое последовательное выполнение этих команд, и короче и проще, чем строгая проверка и обработка кодов возврата. Очень удобно при написании на скорую руку. Не менее полезен иногда и оператор ||. Суть его тоже логична – выполнить вторую команду, если первая дала сбой. Часто встречается в таких идиомах:</P>
    <DIV id="EDAAE"><TABLE class="code" width="98%"><TR><TD><PRE>
      <SPAN class="KEYWORD">cd</SPAN> sources || <SPAN class="KEYWORD">exit</SPAN> 1
</PRE></TD></TR></TABLE></DIV>
    <P>Если перейти в каталог sources не удастся, то будет произведен выход с кодом ошибки 1. Если же первая команда отработает нормально, то вторая выполнена не будет. Например, такая простейшая защита помогла бы в случае с cd по UNC-адресу, описанному ранее.</P>
  <H2>Можно ли написать на bat-языке серьезную программу?<A name="ENAAE"></A></H2>
    
    <P>Пожалуй, нет. Серьезная программа должна все-таки выглядеть серьезно. А все написанное на командном языке Windows таковым назвать можно лишь с о-о-о-чень большой натяжкой. Так что для решения более сложных задач автоматизации лучше все-таки взять что-нибудь более функциональное:</P>
    <UL style="LIST-STYLE:square">
      <LI>Perl</LI>
      <LI>Python</LI>
      <LI>Ruby</LI>
      <LI>JScript / VBScript</LI>
    </UL>
    <P>Последние, кстати, присутствуют в Windows 2000/XP по умолчанию (с некоторыми функциональными различиями) и в целом могут считаться заменой *.bat языку. Однако сдается мне, что *.bat-файлы проживут еще очень долго.</P>
    <P>Дай Бог, чтобы я ошибся…</P>
  <H2>Материалы по теме<A name="EDBAE"></A></H2>
    
    <OL>
      <LI>
        <A href="http://home.earthlink.net/~rlively/MANUALS/INDEX.HTM" class="link-ext" target="_blank">Windows Batch Files – Commands Reference</A>.</LI>
      <LI>
        <A href="http://www.books.ru/shop/books/118194" class="link-ext" target="_blank">Windows 2000. Команды: Карманный справочник. Э. Фриш. – М.: Мир, 2003.</A>
      </LI>
    </OL>
  <DIV align="right"><FONT style="font-family:arial;font-size:9pt;color:#8088a0"><I><HR color="#8088a0" width="100%" size="1" /><div align="justify"><font size="2">
                     Эта статья опубликована в журнале 
                     RSDN Magazine
                                         
                        #2-2005. Информацию о журнале можно найти <a href="/mag/main.htm">здесь</a></font></div></I></FONT></DIV>	<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-1276305-1', 'auto');
	ga('send', 'pageview');
	</script>
<table width="100%" border="0" cellspacing="0" celpadding="2" style="font-family:verdana;font-weight:bold;padding: 0px 5px; BORDER: #9daabd 1px 	solid; 	COLOR: #646464; BACKGROUND-COLOR: #e6e6e6;"><tr><td nowrap="nowrap"><font size="1" style="font-weight:normal"><script src="/script/shMenu.v1.js" type="text/javascript" charset="utf-8"></script></font></td><td nowrap="nowrap" align="right" width="100%"><font size="2"> <A href="?print" target="_blank" title="Версия для печати"><IMG align="absmiddle" width="16" height="14" src="/images/printer2.gif" border="0" /></A>  <a href="/forum/other/1267611" target="_self" title="Перейти к обсуждению статьи"><font size="1" color="#646464"> Сообщений </font><font color="black">47</font></a>  <a href="/forum/other/1267611" target="_self" title="Перейти к обсуждению статьи"><img src="/forum/images/showfr.gif" align="absmiddle" border="0" width="18px" height="14px" /></a> <a href="/Forum/RateList.aspx?mid=1267611"><font color="#646464"><font size="1"> Оценка </font><font color="black">2986</font></font></a>   <a target="_blank" rel="nofollow" href="/Users/Private/AddFav.aspx?mid=1267611" onclick="return AddFav(this.href);" title="Добавить в избранное"><img align="absmiddle" src="/images/fav.gif" border="0" height="14px" /></a>  <a href="/Forum/Private/Subscr.aspx?tid=1267611" onclick="return SubMsg(this.href)" title="Подписка на сообщения" rel="nofollow"><img class="i" align="absmiddle" src="/forum/images/sub.gif" border="0" width="18px" height="14px" /></a>   <font size="1">Оценить </font><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=-3" onclick="return RateMsg(this.href);" title="+1"><img align="absmiddle" src="/forum/images/n11.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=1" onclick="return RateMsg(this.href);" title="Интересно"><img align="absmiddle" src="/forum/images/n1.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=2" onclick="return RateMsg(this.href);" title="Спасибо"><img align="absmiddle" src="/forum/images/n2.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=3" onclick="return RateMsg(this.href);" title="Супер"><img align="absmiddle" src="/forum/images/n3.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=-1" onclick="return RateMsg(this.href);" title="Удалить оценку"><img align="absmiddle" src="/forum/images/nx.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=-4" onclick="return RateMsg(this.href);" title="Согласен"><img align="absmiddle" src="/forum/images/np.gif" border="0" width="18px" height="14px" /></a><a target="_blank" rel="nofollow" href="/forum/Private/Rate.aspx?mid=1267611&amp;rate=0" onclick="return RateMsg(this.href);" title="Не согласен"><img align="absmiddle" src="/forum/images/nm.gif" border="0" width="18px" eight="14px" /></a> 
					</font></td></tr></table></body></html>
