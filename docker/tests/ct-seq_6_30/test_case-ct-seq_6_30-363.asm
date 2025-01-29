.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DX, -26 
ADC EAX, -1628071379 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
MOVSX SI, AL 
NEG SIL 
ADC SI, -18 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RCX] 
CMOVBE EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -40 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
SBB AL, 102 
SBB ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RSI 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], DI 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -116 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI], 103 
SBB BX, -66 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 40 
AND RSI, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RSI] 
MOV AL, -2 
CMOVLE BX, DI 
CMOVLE RAX, RSI 
OR EDX, 1 # instrumentation
JMP .bb_main.5 
.bb_main.5:
INC SI 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
IMUL RSI, RSI 
CMOVNO RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
