.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, -205187063 
ADC RBX, 49 
CLC  
MOVZX DI, SIL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -104 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
SUB ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -42 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 119 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
XCHG RDI, RAX 
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
ADD AX, CX 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RCX] 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -103 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDX] 
CMOVNO DI, DI 
CMOVLE BX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
