.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -107 # instrumentation
CMOVNZ DI, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
MUL EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RBX] 
ADC RDX, 41 
SBB DL, -114 
AND RDI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDI] 
CMOVZ EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
CMOVB CX, DX 
CMOVB SI, CX 
SBB EDI, -64 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -1 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
MOV EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BSWAP EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -31 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
XCHG RAX, RCX 
DEC RDX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 0 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
ADD SIL, 127 
MOV SI, DX 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
