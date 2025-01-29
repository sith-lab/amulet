.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RAX] 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 104 
CMOVB EDX, EDI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 29 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
MOVSX AX, BL 
IMUL DIL 
ADD SIL, -57 # instrumentation
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RBX 
AND RDX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -1 
CMOVNLE BX, SI 
SUB AL, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RSI] 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RAX] 
SUB AX, 3300 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
