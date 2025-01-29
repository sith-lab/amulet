.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP SIL, 80 
CMOVO EDX, EDI 
NEG RBX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 9 # instrumentation
SBB DI, DX 
SBB SIL, 6 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
CMOVLE RBX, RSI 
MOV BL, DL 
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDI 
MOV SIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -77 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
JNL .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
SUB EAX, 1804732099 
AND RCX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, -53 
CMOVS RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 107 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EDX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
CMOVNB EBX, ESI 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
NEG SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RCX] 
MOVSX EBX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RAX] 
ADD AX, 20251 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
