.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 46 # instrumentation
CMOVNL EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
ADD DIL, 14 # instrumentation
SETL DL 
XCHG EAX, EAX 
ADC EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 72 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], -23 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDI] 
IMUL RAX, RSI 
XOR ESI, 123 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 90 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -38 # instrumentation
SETNL DL 
XADD RBX, RDI 
IMUL RBX, RDI, -54 
DEC DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RSI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDI] 
SETP DL 
OR EBX, -58 
SETZ DL 
OR RAX, 1661223580 
CMPXCHG CL, BL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AL, DL 
SUB RAX, 1137640691 
MOVZX DI, DL 
OR RAX, -1723430931 
ADC EDX, 4 
CMOVNL RAX, RDI 
OR ECX, 29 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
SUB EDI, EDI 
SETO BL 
AND EAX, 1210214068 
TEST BL, DIL 
MUL BL 
SETNO CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
