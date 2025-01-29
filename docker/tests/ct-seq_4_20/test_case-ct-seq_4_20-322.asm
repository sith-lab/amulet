.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 91 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 82 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RSI 
CMOVNLE EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RSI 
CMP AL, 99 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 46 
CMOVS EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
