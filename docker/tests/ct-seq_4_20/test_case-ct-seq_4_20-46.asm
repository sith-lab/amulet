.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 126 
CMOVNL EAX, ESI 
ADC AX, 9307 
MOVZX AX, DIL 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDI 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 117 
ADD SIL, 78 
AND RSI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RSI] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RAX] 
MOVSX ESI, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 38 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
