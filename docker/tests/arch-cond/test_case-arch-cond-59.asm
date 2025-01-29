.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND ECX, ECX 
OR RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], AX 
INC RBX 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -12 # instrumentation
CMOVL RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RSI] 
ADD DX, 97 
CMOVO ESI, EBX 
MOV BL, AL 
LOOP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 69 
CMOVP ECX, ECX 
STC  
CMOVB AX, BX 
DEC EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RBX] 
AND SIL, 99 
CMPXCHG ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
CMOVNBE AX, AX 
CMOVNP RAX, RBX 
AND RSI, -18 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDI] 
TEST BL, 108 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -4469 
CMPXCHG DI, AX 
ADC EAX, 1251804975 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL EAX 
ADD SIL, 111 # instrumentation
CMOVL EBX, EDI 
CWD  
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RDI] 
SETNO DL 
AND RDI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDI] 
LEA BX, qword ptr [RAX + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RSI 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
