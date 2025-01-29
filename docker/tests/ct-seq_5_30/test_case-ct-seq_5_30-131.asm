.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 106 # instrumentation
CMOVNBE RAX, RBX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
DEC RBX 
AND RAX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RAX] 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOVSX EDI, DI 
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RSI] 
MOVZX CX, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RSI] 
ADD SIL, 8 # instrumentation
ADC AX, -31205 
SBB EAX, 1100884145 
MOVZX BX, BL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
CMOVS ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], AX 
IMUL CX, AX, -122 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
ADD RDX, RBX 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -98 # instrumentation
SBB BL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
CMOVO EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
SUB RAX, RDX 
CMOVB EBX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
