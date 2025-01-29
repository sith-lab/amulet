.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
CMOVNZ BX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DIL 
ADC BX, BX 
ADD BX, DX 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
ADD DIL, 105 # instrumentation
CMOVNP RCX, RCX 
SBB CL, DL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDI] 
ADD AX, -321 
SBB CL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
CMOVL ESI, ESI 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 62 
CMOVNB CX, AX 
CMP RCX, 41 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDX] 
ADD SIL, 35 # instrumentation
CMOVL EDX, EDX 
ADC AL, -35 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
SUB DIL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RAX] 
SBB DL, 114 
CMOVNB DX, CX 
DEC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
