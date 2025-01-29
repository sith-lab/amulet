.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ECX 
MOVSX AX, AL 
ADC CX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ESI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], SIL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -35 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RDI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
ADC DX, -60 
AND RDI, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
