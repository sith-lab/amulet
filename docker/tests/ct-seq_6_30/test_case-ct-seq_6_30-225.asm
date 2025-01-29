.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RSI] 
CMOVNL RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
CMOVNLE EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -28339 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -121 # instrumentation
ADC RDX, 82 
AND RAX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RAX] 
MOVZX EAX, CL 
JMP .bb_main.2 
.bb_main.2:
MOVZX ESI, CX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -105 
IMUL RBX, RCX, 51 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDX] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV DL, -7 
AND RAX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RAX] 
CMP EAX, 642241387 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
CBW  
CMP DL, SIL 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], SI 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
DEC AL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RBX 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
MOVSX SI, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
