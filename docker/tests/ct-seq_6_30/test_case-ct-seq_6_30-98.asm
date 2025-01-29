.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AX, -4403 
ADC RAX, 393871982 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RAX] 
MUL ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RSI] 
LOOPE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], BX 
MUL CL 
MOVSX SI, AL 
LEA RSI, qword ptr [RDI + RDI + 11211] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
SUB AL, -98 
CMOVZ ECX, EDX 
SBB SIL, -116 
CMC  
SUB RCX, -121 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
CMOVO RSI, RSI 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -50 # instrumentation
CMOVO ECX, ESI 
MOVSX RAX, DX 
ADD EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
ADC AL, 101 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CMP ESI, -59 
CMP RAX, -1673268442 
MOVSX SI, BL 
XCHG CX, AX 
CMP ESI, 54 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
