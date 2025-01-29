.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], SIL 
CMOVBE ECX, EDX 
IMUL CX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 27 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -87 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RAX] 
MOVSX DI, BL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
CMC  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], SIL 
AND RBX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -36 # instrumentation
CMOVNLE AX, DX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
IMUL DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
