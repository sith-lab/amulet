.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
CMOVNO DX, AX 
ADD RBX, 42 
SBB BL, BL 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
MOVSX RBX, DX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 15 # instrumentation
CMC  
XCHG SI, AX 
ADC ESI, -85 
CMP RDI, 14 
CMOVNS CX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], ESI 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
INC CX 
CMOVP ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RDI 
MOV BL, 90 
MOV AL, -65 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], CX 
JMP .bb_main.3 
.bb_main.3:
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
BSWAP RCX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
