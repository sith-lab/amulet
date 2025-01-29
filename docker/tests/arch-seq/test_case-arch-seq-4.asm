.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 89 # instrumentation
CMOVO DI, BX 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], -4 
XOR RAX, RDX 
NEG DIL 
NOT RDX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], BX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVZX ESI, CL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 104 
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RDI 
OR DL, DL 
OR CL, 9 
ADD RAX, -1970574873 
SETS DIL 
MOV DL, -101 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
JLE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, 10 # instrumentation
CMOVNO SI, DX 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
CMP SIL, 2 
JMP .bb_main.3 
.bb_main.3:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
SETZ BL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
SETLE AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RBX] 
CMOVL EBX, EDX 
SETL AL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
SETNLE DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
MOVSX DI, CL 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  # instrumentation
ADD DIL, -112 # instrumentation
SBB EAX, -1265893980 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
SETP DL 
CMOVZ RAX, RBX 
AND DIL, -62 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EBX 
TEST RBX, RAX 
AND RAX, 1930911211 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
