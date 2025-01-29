.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 48 # instrumentation
CMOVNLE RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 113 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RCX] 
SBB ESI, -56 
NEG CL 
IMUL ECX, EDX, -102 
ADC CX, 25 
SBB AX, 25972 
MOVSX RDI, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 21 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EAX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RBX] 
CBW  
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDX] 
ADD AL, -68 
AND RDX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
SUB RAX, 97045095 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
MOV DI, 4334 
IMUL RDX, RSI, 0 
CMOVNO RCX, RCX 
MOV EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 116 
BSWAP RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
