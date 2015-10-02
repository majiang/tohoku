

REM python ..\..\tools\randomize_except_column0.py < ..\decoded-tsv\10\0-0-0-0-10.tsv | tr " " "\t" > ..\table-randomized\10\0-0-0-0-10.tsv

CD ..\decoded-tsv
FOR /D %%a IN (.\*) DO (
	FOR %%b IN (%%a\*.tsv) DO (
		ECHO %%b
		python ..\..\tools\randomize_except_column0.py < %%b | tr " " "\t" > ..\table-randomized\%%b
	)
)
