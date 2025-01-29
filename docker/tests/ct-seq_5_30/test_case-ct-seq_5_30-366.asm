.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RBX], -16 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
CMOVB ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD ECX, -60 
MOVSX RCX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -111 
CMC  
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 93 # instrumentation
SBB CX, CX 
IMUL BL 
ADD SIL, -109 # instrumentation
XCHG RSI, RAX 
CMOVNO SI, SI 
CMOVNO RCX, RCX 
CMOVNBE DX, BX 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
ADD DIL, 124 # instrumentation
CMOVNZ DX, CX 
ADC EAX, -357836847 
CMP DL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RAX] 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RBX] 
MUL ESI 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -81 
CMOVNP ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RBX] 
DEC EBX 
MOV ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -122 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -50 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
