.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
ADC RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDX] 
MOVZX RDI, DL 
CMOVNP ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
SBB EAX, 1404939807 
XOR EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
CMPXCHG EBX, ECX 
CMOVL RCX, RDI 
CMP DL, -22 
CLC  
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RSI] 
CBW  
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
OR DI, 0b1000000000000000 # instrumentation
BSR DI, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RDX] 
OR CL, CL 
SBB AX, 20734 
ADC EDX, -79 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], ECX 
CMOVLE ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
ADD SIL, 72 # instrumentation
SETNL AL 
CMOVL RDI, RDI 
NEG ESI 
CMPXCHG RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 122 
MOV BL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], 13 
IMUL BX, CX, -5 
IMUL EDX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
