.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
MOV RDX, 4037907102390078799 
ADC SI, -80 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -114 
ADC AL, -102 
SBB SIL, -88 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -14 
AND RCX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RCX] 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RDX] 
SBB RCX, RSI 
CMOVNLE RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], CX 
XCHG ESI, EAX 
JMP .bb_main.3 
.bb_main.3:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ESI 
ADD DIL, 114 # instrumentation
CMOVNB RSI, RDX 
INC AX 
SBB RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 4 # instrumentation
CMOVB ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
CMOVB RCX, RAX 
DEC BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
