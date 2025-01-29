.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RBX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RAX] 
CMP DX, -11 
AND RCX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RDX] 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -83 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
