.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 80 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -15 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDI] 
SBB CL, BL 
MOVSX BX, CL 
IMUL SI 
MOV CL, DL 
JMP .bb_main.2 
.bb_main.2:
MOV DL, DIL 
CMP RSI, RSI 
ADC RAX, -156128477 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], ESI 
SUB EDI, 41 
MOVZX RDI, CL 
ADC AX, -10958 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
ADD RBX, RDI 
SUB CL, -5 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 55 
XCHG BL, BL 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -21 # instrumentation
CMOVNZ AX, DI 
SUB AX, CX 
ADD RAX, RDX 
CMP EDX, 10 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RBX] 
DEC AX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDX] 
CMP AL, 57 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
