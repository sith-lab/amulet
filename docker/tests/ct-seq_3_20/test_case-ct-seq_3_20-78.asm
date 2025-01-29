.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
SUB EAX, -329197844 
AND RSI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RAX 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE AX, DX 
AND RBX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 69 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -20 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RAX] 
SUB DIL, -64 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
