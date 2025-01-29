.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
XCHG RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RSI] 
ADD SIL, 99 
CMOVB RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
XCHG EDI, ESI 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
ADC SI, 95 
ADC ESI, -93 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
NEG BX 
CMP AL, -121 
CMOVS RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -17 # instrumentation
SBB DL, 110 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
CMP RDI, RDX 
CMP BL, SIL 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ESI 
MOV EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDX 
ADD RAX, 1918797527 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
