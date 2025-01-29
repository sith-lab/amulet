.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
CLC  
AND RDI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDI] 
CMP EAX, -383314493 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 431260834 
CMP RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
IMUL EAX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -113 # instrumentation
CMOVNBE ECX, EBX 
CMP AX, -2529 
MOV BL, 107 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
XCHG EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ESI 
BSWAP ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
ADD AX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
SUB ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
CMOVNLE RDX, RSI 
JMP .bb_main.4 
.bb_main.4:
SUB RSI, -105 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
