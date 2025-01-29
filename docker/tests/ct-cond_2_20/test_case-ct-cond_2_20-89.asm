.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX], -12 
AND RAX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RAX] 
CMOVNLE ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
CMOVNL EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 73 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -35 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDX] 
CMOVNB RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -109 
LEA EDX, qword ptr [RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
