.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 18 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RCX] 
ADD DIL, -21 # instrumentation
CMOVNLE EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], SIL 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 95 # instrumentation
SBB RBX, 55 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RBX 
ADD AL, 17 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 95 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RBX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RSI 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -102 # instrumentation
LAHF  
AND RSI, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RSI] 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
