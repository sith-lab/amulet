.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RBX] 
NEG DX 
INC RCX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], DI 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX] 
ADD DIL, -29 # instrumentation
MOV CX, CX 
CMOVNZ DI, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
IMUL CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], SIL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
