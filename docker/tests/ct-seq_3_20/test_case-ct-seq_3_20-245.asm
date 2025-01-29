.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDX] 
CMOVLE RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -71 
CMOVNLE DX, SI 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], CX 
ADD BX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RSI] 
CMOVS EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1646936255 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDX] 
ADD SIL, 104 # instrumentation
CMOVBE CX, CX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EDI 
ADD SIL, -48 
AND RDI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
