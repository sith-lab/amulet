.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
SUB SI, -84 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
SBB EAX, 24 
SETNS AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
CMOVBE SI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 79 
OR ECX, EBX 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], -11 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
SETB AL 
ADC EDI, 125 
AND RDI, RAX 
ADC RAX, RSI 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDI], -122 
CMP CX, BX 
SETNZ BL 
CMP EDI, -97 
SBB DX, BX 
SUB SI, BX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
AND EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RCX] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
SBB ESI, -57 
SETO DL 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -56 # instrumentation
ADC EDX, -34 
ADC AL, -108 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
ADC RDX, RAX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
TEST EAX, 2022518710 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
XCHG DL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDI 
CMP DX, 121 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
