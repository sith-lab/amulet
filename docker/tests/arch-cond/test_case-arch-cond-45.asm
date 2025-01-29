.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
CMP AL, BL 
SUB RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -23 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RAX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RAX] 
OR RDX, 42 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
CLD  # instrumentation
NOT AL 
DEC AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
CMOVL RSI, RDI 
SETNBE BL 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDX 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], SIL 
CMOVNZ RDI, RCX 
XCHG BX, AX 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
MOVSX EDI, AL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -124166639 
SUB RAX, RCX 
ADD ESI, 68 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], DI 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], CL 
ADD CX, 49 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
TEST DX, CX 
IMUL ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
IMUL RDX 
AND RBX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDI] 
SBB AX, 20594 
SBB RDI, RAX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL RDX, RDX, -19 
AND RCX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RCX] 
TEST SI, 25873 
ADD DIL, -49 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
