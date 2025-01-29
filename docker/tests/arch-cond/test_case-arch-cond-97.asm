.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 34 # instrumentation
CMOVS RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
CMPXCHG BL, BL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], EDI 
XOR EBX, EAX 
IMUL RDX, RAX, 67 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
JMP .bb_main.1 
.bb_main.1:
CMP CL, DIL 
ADC AL, -128 
AND RCX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -9 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -124 # instrumentation
SBB DL, AL 
DEC DL 
JMP .bb_main.3 
.bb_main.3:
CMP AX, 9632 
XOR SIL, 95 
AND RDX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RBX] 
IMUL BX, CX, -52 
AND RCX, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RCX] 
AND AL, -69 
SETNL CL 
SBB EDX, 25 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
SBB EAX, -30 
ADD DX, -97 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 92 # instrumentation
SETNZ DL 
AND DIL, 51 
CMOVZ RCX, RAX 
XOR RBX, RSI 
SETLE CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
OR AL, 45 
IMUL DI 
ADD AX, 21048 
MOVZX RCX, CL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], EBX 
MUL ECX 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], 113 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
