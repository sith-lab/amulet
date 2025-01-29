.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -11 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 89 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 11 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 45 
MUL ESI 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 55 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EDX 
SBB ECX, 111 
ADD SIL, -89 # instrumentation
MOV AL, -21 
LAHF  
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -121 # instrumentation
CMOVNBE CX, BX 
CMP RBX, RCX 
CMP SIL, 94 
JLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
MUL CL 
SUB DX, 57 
BSWAP RAX 
XCHG ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -91 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 69 
MOVZX RBX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
