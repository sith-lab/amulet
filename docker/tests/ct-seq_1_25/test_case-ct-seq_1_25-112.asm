.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 31 # instrumentation
CMOVS RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -118 
MOVSX ESI, DIL 
IMUL RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RCX] 
CMP RAX, 1173640130 
LEA EDX, qword ptr [RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 44 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
ADC AL, 96 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -41 
MOVZX RDX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
BSWAP RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 75 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDX] 
ADC EAX, ESI 
CMOVNO EBX, EBX 
CMOVS EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
