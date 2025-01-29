.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EAX, DL 
TEST EAX, 1544149508 
CMPXCHG CL, AL 
CMP RDI, 41 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDX 
CMOVL RSI, RSI 
ADC RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 45 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 28 
CMP SIL, -82 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RBX] 
XOR RAX, -5212577 
XCHG CX, AX 
IMUL ECX, ESI 
TEST BL, CL 
CMC  
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -105 # instrumentation
SETLE CL 
XCHG SI, SI 
STC  
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
SETBE SIL 
MUL CL 
ADD DIL, 124 # instrumentation
SETNL BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 11 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
MOVZX EDX, BX 
AND RAX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
CMP RAX, 1848089658 
AND RSI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RSI] 
CMOVZ EBX, ECX 
LEA RCX, qword ptr [RAX + RCX + 53291] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
NOT AL 
AND RBX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
IMUL EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
