.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
MOVSX RDI, DIL 
DEC ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DIL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD RAX, 1478223332 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DX 
MOV DL, -51 
SUB RAX, -1010971617 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RCX] 
IMUL EAX 
XCHG CL, CL 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX], 4 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
CMOVO CX, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
CMOVO RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
ADD EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -72 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
MUL DL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
CMOVNO CX, AX 
CMOVNL RSI, RDX 
MOVZX AX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
