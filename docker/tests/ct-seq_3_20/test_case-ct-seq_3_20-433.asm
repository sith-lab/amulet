.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EAX 
SUB DX, -57 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
SBB RAX, -910382639 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOV EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 82 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RDX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB DX, SI 
ADD EAX, 289957915 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
