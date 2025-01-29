.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 79 # instrumentation
SBB ECX, 109 
CMP SIL, -96 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
ADD DIL, 7 # instrumentation
CMOVNB SI, SI 
SUB AX, 3959 
CMP DL, -25 
MOVSX RDI, CL 
NEG RCX 
JMP .bb_main.1 
.bb_main.1:
SUB AX, 7151 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 68 
CMP DX, DX 
SBB BL, 58 
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 62 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOVSX RSI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
SBB DIL, 76 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RAX 
ADC DIL, CL 
SUB BX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 105 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -66 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
SUB RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
