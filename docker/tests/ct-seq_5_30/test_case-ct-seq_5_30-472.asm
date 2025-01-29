.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 38 # instrumentation
CMOVLE EAX, ECX 
ADD RSI, RDX 
IMUL AL 
AND RAX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RAX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOV ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 63 
SBB RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EAX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
CMOVB CX, DI 
SBB DI, BX 
MOVSX CX, AL 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RSI 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ECX 
NEG RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
ADD RDI, RBX 
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
ADC SI, -123 
JMP .bb_main.4 
.bb_main.4:
NEG BL 
IMUL EDI, EDI, -95 
CWDE  
MOV EAX, -69061298 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], -104 
ADC EBX, -61 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
