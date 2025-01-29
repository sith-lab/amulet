.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RDI, -24 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 124 
MOV CX, BX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
IMUL RDI, RDI, -78 
SUB EDI, 0 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
IMUL DX, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 104 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 23 
LEA AX, qword ptr [RBX + RAX + 24298] 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 62 
AND RBX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -74 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RAX] 
ADC DIL, BL 
CMC  
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDX 
CMOVNLE RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -72 
CMOVNZ RDX, RBX 
SBB ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
MUL EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
