.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
OR DI, 0b1000000000000000 # instrumentation
BSF CX, DI 
ADD DIL, 56 # instrumentation
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDX] 
MUL EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RSI] 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
CMP BL, 91 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
CMP RDX, RSI 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 115 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
