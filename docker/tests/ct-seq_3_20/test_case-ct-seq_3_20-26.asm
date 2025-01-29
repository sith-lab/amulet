.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX], -50 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -76 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 35 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 124 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 50 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 5 
AND RAX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDI] 
MOVSX EAX, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
