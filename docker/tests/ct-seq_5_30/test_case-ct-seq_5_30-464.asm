.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RDX] 
ADD RDI, RSI 
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 112 
IMUL EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EDI 
LEA EDI, qword ptr [RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
STC  
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
ADD AL, CL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RBX] 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 62 # instrumentation
CMOVNZ AX, AX 
MOV CL, -9 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 53 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVSX DX, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDX] 
NEG EAX 
CMOVNBE RDX, RSI 
CMOVNL ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
SBB AL, 38 
MUL CL 
MOVZX EDI, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -113 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
