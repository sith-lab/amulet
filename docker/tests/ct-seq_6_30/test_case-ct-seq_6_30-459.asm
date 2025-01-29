.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
CMP EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
ADC CL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
CMP EDX, -27 
ADC RAX, -1955893452 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
CMP DI, 35 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RAX] 
IMUL RDI, RAX 
SUB RSI, 81 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
CMP ESI, 48 
NEG RDI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 107 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -121 
CMOVP CX, BX 
IMUL RDI 
SBB DX, -16 
AND RBX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RBX] 
ADD EBX, 81 
MOVZX ESI, DL 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD CX, 97 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -127 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
