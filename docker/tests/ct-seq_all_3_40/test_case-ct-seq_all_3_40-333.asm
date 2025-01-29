.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EBX, -68 
ADD RSI, -29 
CMOVP AX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
INC SIL 
SETP SIL 
SBB ECX, 105 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], BL 
AND DX, CX 
IMUL EBX, EAX, -115 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], 74 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
ADD AX, BX 
SETNO CL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
XOR EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RAX] 
SETNBE DL 
AND RCX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RCX] 
MOV ECX, EDX 
MOV RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 91 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -49 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
CMP DX, BX 
SETBE SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
NOP  
SUB DL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
MOVZX EDI, BL 
CMOVNL DI, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], 102 
ADC AL, DL 
IMUL EDX, EBX, -59 
AND RAX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RAX] 
OR RDI, RBX 
BSWAP EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
