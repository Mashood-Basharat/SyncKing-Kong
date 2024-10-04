@echo off
:run_loop
call GUI.py

if exist "run.txt" (
	echo starting SyncKing-Kong...
	python run.py
	goto run_loop
	)
