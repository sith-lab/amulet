.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RAX] 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 53 # instrumentation
ADC EAX, 116 
ADD BL, DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX], -106 
SUB AL, 111 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
ADD CL, -56 
MOVZX RDI, DI 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -102 # instrumentation
XCHG EBX, EDX 
CMOVNLE EDI, EDI 
DEC EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDI 
LOOP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -111 # instrumentation
CMOVNL EDX, EDI 
XCHG EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
CMOVS RSI, RAX 
LOOPE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX], 14 
ADD CX, -76 
CMP AL, -43 
JMP .bb_main.5 
.bb_main.5:
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
CMP SIL, 43 
NEG RDI 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
