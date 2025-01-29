.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOP  
MUL AL 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ESI 
XOR EDI, 117 
CLD  
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDX 
CMPXCHG RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDX] 
OR DX, 0b1000000000000000 # instrumentation
BSR DI, DX 
DEC BL 
SETNP CL 
ADD RAX, 27 
CMOVNO EDI, ECX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 127 # instrumentation
CMOVNO BX, BX 
AND RDX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDX] 
CMP RAX, -1039158066 
CMOVNS ESI, ESI 
SETP BL 
MUL DI 
AND RAX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RAX], DX 
CMPXCHG EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDI] 
CMP RAX, -1243102474 
AND BX, BX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -99 # instrumentation
SBB AX, 15890 
XOR EBX, -9 
SUB CX, SI 
IMUL CL 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDX] 
CMP AL, BL 
SUB ECX, 39 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
XCHG RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RAX] 
CMPXCHG EAX, EDX 
AND CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
