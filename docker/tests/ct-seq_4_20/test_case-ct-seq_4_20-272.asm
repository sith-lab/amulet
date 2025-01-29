.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 874011424 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 16 
SUB SIL, -71 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 100 # instrumentation
ADC AX, 121 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
MOVSX EDI, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 39 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
IMUL RDX 
CMOVO RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], BX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
