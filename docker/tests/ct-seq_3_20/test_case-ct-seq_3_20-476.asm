.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RAX] 
CMOVL RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -85 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RAX] 
DEC CL 
CMOVNZ EDX, EDI 
SBB EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
LEA RSI, qword ptr [RCX] 
XCHG RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
SBB RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDX] 
IMUL SI, DI, -84 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
