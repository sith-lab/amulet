.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RAX, RDI 
MOV RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RCX] 
XCHG RAX, RDX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
BSWAP ESI 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ESI 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
IMUL RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
SBB EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
DEC DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 43 
ADD RAX, -1074297006 
DEC RDI 
ADC ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
CMP EAX, -1351096898 
CMOVLE SI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RAX] 
SUB DIL, BL 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -77 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
