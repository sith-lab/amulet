.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -122 # instrumentation
CMOVNP EBX, EDI 
CMOVL DI, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -45 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL EDI 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EBX 
LEA CX, qword ptr [RDX + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RAX] 
CMOVNL RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RBX] 
ADD SIL, -49 # instrumentation
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RBX] 
LEA EDI, qword ptr [RBX + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], DI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 37 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
