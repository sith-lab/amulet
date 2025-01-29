.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -52 # instrumentation
CMOVLE ECX, ESI 
ADD RAX, 1157072500 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
CMOVP ECX, EBX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RAX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RCX 
ADC BX, AX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], AX 
AND RCX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RCX] 
ADC AX, 31887 
CMOVNS RCX, RBX 
MOVSX EDX, CL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -106 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], SI 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EBX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 24 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], SI 
NEG AL 
MUL SIL 
NEG CL 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
