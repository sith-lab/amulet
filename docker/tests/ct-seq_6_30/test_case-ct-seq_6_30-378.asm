.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -14 # instrumentation
CMOVNZ ECX, ECX 
CMOVS RAX, RSI 
ADD RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -15 
CMC  
STC  
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
MUL SI 
SBB ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDX 
IMUL EAX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
CMOVO EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
CMOVLE ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -14650 
CMOVNZ RSI, RCX 
JMP .bb_main.4 
.bb_main.4:
CMP RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 55 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 121 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -35 # instrumentation
CMOVNL EDX, ESI 
CMOVZ EDX, EDI 
MOV DX, -13862 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 95 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
