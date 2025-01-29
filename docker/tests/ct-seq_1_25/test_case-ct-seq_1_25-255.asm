.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RSI] 
CMP RAX, 949464200 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 87 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDI] 
ADD SIL, -81 # instrumentation
MOV RBX, 8877713063560118863 
CMOVBE EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 118 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RAX 
INC DI 
AND RDX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -27 
MOV CL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
CLD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RSI] 
CMP EDX, -89 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
CMOVB AX, AX 
SUB DIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
