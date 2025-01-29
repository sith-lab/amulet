.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RAX] 
MOV ECX, 1435075046 
ADC RSI, RCX 
CMOVNBE RDX, RCX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMOVNBE CX, CX 
CMOVO RDI, RSI 
INC DX 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EBX 
JMP .bb_main.3 
.bb_main.3:
IMUL EAX, EDI, 118 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], AX 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 2080852128 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 1551162768 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
SUB EAX, -2035365042 
AND RSI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RSI] 
CMOVNS RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RSI] 
CMP AL, DIL 
CMOVNBE EAX, EDI 
CMOVLE ECX, EDX 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOV RSI, 3415746040825335116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
