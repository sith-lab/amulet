.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
CMOVNZ ECX, EBX 
CMOVNB SI, AX 
CMOVNLE AX, BX 
CMOVNO SI, DX 
CMOVLE EAX, EAX 
MOVZX EAX, CL 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -81 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
ADD AX, 16290 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AX, -19334 
MOVZX DI, BL 
JMP .bb_main.3 
.bb_main.3:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -106 
IMUL DX, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -35 # instrumentation
CMOVLE RAX, RDI 
MOV AL, 90 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
BSWAP RAX 
MOVSX RAX, SI 
MOV RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
ADD RAX, 28 
AND RAX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
