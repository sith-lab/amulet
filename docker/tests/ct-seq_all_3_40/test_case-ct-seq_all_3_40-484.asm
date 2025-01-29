.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
CMOVLE BX, SI 
SBB SIL, -67 
ADD RCX, RDI 
SBB EAX, -1104347811 
CMOVO DI, CX 
CMOVZ BX, DX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
CMP AX, -17751 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
DEC EBX 
CMP BX, -96 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX ECX, DL 
NEG DX 
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
CMPXCHG EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RCX] 
SETZ BL 
CMOVBE RDX, RCX 
NEG DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], -27 
JMP .bb_main.2 
.bb_main.2:
OR AL, AL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], -24 
INC EDX 
AND BX, CX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
SETNBE BL 
SUB BL, DL 
ADD AL, 108 
BSWAP EAX 
XOR RCX, -65 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RSI] 
DEC RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], -60 
AND RSI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
