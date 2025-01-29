.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDX] 
IMUL BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -101 
CMOVLE ESI, EDX 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -3 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RAX] 
INC RSI 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ECX 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -212 
CMOVZ RAX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
