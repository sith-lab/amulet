.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RDX, RAX 
IMUL SI, SI, 80 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RAX] 
SUB CX, 117 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RSI] 
XADD EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDX] 
ADD DL, CL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
CDQ  
MOVZX RSI, CL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RBX 
MOV CL, 9 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RAX] 
MUL EDI 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
CMOVNO SI, DX 
AND EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
SETZ DL 
MOVZX RAX, AX 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 104 # instrumentation
CMOVL EBX, EAX 
STC  
SETBE AL 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -112 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -82 
OR EAX, EDI 
CMOVZ CX, DX 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -2101127166 
JMP .bb_main.4 
.bb_main.4:
OR AX, -25943 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND DI, -37 
SETZ SIL 
OR EBX, -96 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDI] 
SETNO SIL 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -5 
OR AL, 51 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
