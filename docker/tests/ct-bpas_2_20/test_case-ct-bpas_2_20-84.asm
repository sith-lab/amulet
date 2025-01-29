.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -66 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
SUB SIL, 5 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
MOVZX ESI, BL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -16306 
SUB AX, -19088 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -88 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -63 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
