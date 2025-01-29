.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -11 
DEC RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
ADC DL, BL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
MOV RDI, RCX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
MOV AX, -29790 
SUB ESI, EBX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
CMP RAX, 1007195989 
MOVSX EBX, SI 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
SUB RAX, 111 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], 23 
SBB DL, -50 
SUB RDI, -88 
ADC SIL, DIL 
CMP AL, -109 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -82 # instrumentation
SBB AX, 12311 
ADC AL, 64 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RCX] 
XCHG ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], SI 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
XCHG BX, CX 
SUB AX, -98 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
