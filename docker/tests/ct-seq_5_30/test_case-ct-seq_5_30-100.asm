.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EAX 
SBB EAX, 1521280932 
CMOVLE BX, DX 
CMP RAX, -1424919700 
MOVSX BX, BL 
ADD SIL, 89 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
NEG RSI 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
MOVZX EDI, CL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
CMP AX, 96 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
CMP AL, 34 
NEG RDI 
NEG AL 
CMOVB BX, SI 
CMOVO RCX, RAX 
JMP .bb_main.3 
.bb_main.3:
XCHG CX, AX 
CMP DL, 21 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
ADD SIL, -44 # instrumentation
CMOVB EDI, EBX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], SIL 
IMUL RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -39 
CMOVNBE BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
