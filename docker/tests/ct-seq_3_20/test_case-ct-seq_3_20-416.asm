.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -58 # instrumentation
CMOVZ BX, DI 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 102 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
MOV CL, CL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
IMUL ESI, EDX, -77 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 47 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDI] 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -61 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -89 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
SUB DIL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
