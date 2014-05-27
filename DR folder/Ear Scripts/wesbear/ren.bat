echo "">list.txt
@echo off
setlocal enabledelayedexpansion
for %%x in (*App.ear) do (
  set str=%%x
  set str=%str:App=%
  echo %str% >>list.txt
)