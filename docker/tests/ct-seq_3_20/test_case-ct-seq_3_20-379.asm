.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RAX] 
MOVZX EDX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
CMP BL, -33 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], CX 
CMOVBE RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RAX] 
CMOVZ RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
