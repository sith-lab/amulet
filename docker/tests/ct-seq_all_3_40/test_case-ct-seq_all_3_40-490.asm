.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RDI 
TEST AX, DX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 114 
CMP DIL, CL 
SETNBE DIL 
IMUL ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
CMP EAX, 1090552747 
ADC DL, -15 
CMOVNBE EDX, ESI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -124 # instrumentation
ADC BX, -84 
TEST DIL, 125 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EAX 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], 106 
ADD SIL, 90 # instrumentation
LAHF  
OR AX, -4649 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
CMOVNS EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDI] 
OR DX, 1 # instrumentation
SETB DL 
SBB DL, BL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -1 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 21 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], RBX 
ADC AL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DIL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 58 
AND RSI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RSI] 
AND AL, -92 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
CMOVLE EDI, ECX 
CMP DL, CL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDX 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
