.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP SIL, 25 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
CMOVNP EDX, EDI 
MOV ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
ADD DIL, -69 # instrumentation
CMOVNLE AX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RSI] 
AND RCX, -30 
CMPXCHG ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RCX] 
CMOVNB RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -90 # instrumentation
SBB BL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RSI] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
ADD SIL, -109 # instrumentation
CMOVLE DX, AX 
SUB SI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], BL 
SBB AL, -18 
SBB EAX, -534792362 
NOT BL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDX 
CMOVL ECX, EAX 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 6 # instrumentation
SETBE BL 
DEC DX 
ADC CL, CL 
MOVSX EBX, DI 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], -10 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -29 
XOR AL, -49 
AND RAX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
ADD DIL, 97 # instrumentation
LEA SI, qword ptr [RSI] 
ADC EBX, 28 
SAHF  
XOR AX, -6767 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
