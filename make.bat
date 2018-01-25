C:\iverilog\bin\iverilog.exe -o output test.v clocker.v top.v counter.v
C:\iverilog\bin\vvp output
C:\iverilog\gtkwave\bin\gtkwave.exe out.vcd
del out.vcd
del output
pause