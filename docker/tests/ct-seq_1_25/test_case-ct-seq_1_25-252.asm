.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 28 # instrumentation
SBB RDI, RCX 
ADC DL, -11 
MOV AL, BL 
DEC RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
CMOVP BX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDX] 
LEA DI, qword ptr [RSI + RSI + 1725] 
CMOVNB ECX, EDI 
ADC ECX, -11 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 24 
ADC DIL, 120 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDX] 
SAHF  
MOVZX EBX, CX 
XCHG AX, DI 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
