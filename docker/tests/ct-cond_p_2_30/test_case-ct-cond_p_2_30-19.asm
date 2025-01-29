.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 35 # instrumentation
SBB RAX, -827658758 
NEG RCX 
CMP DL, AL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -54 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
CMOVL BX, BX 
SBB RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
SBB DL, DIL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RAX] 
ADD DIL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
SBB BL, BL 
MOVSX ESI, AL 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -49 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDX] 
CMOVNO SI, CX 
MOVZX EDX, SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 41 
MOVSX ESI, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
