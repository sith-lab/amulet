.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
CMOVNO ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -107 
CMP BL, AL 
CMP SIL, -65 
ADC AL, -12 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
CMOVBE ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 12 
SBB AL, -114 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 45 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -67 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
