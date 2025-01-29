.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BX 
CMOVO RDX, RDX 
MOVZX EBX, SI 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -116 
AND RBX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
STC  
IMUL RBX, RCX, -46 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 104 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX], 99 
CMP AL, 47 
CMOVNO BX, DX 
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
SBB RDI, 3 
CMOVBE RDX, RDI 
MUL BL 
ADC BL, BL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC CL 
CMOVNLE EBX, EDI 
SUB AL, 87 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RAX 
SBB CL, 95 
SBB AL, BL 
CMOVO DX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
