.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RBX] 
MOVSX DX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RCX] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RCX] 
CMC  
MOVZX SI, AL 
IMUL RDI 
SBB BL, -79 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
IMUL EDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RSI] 
SBB SI, DX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
CMP AX, 29560 
MOVSX DX, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -86 
DEC CL 
ADC RAX, -1420475831 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
