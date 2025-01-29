.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -45 
SBB ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -112 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RCX] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RSI 
JMP .bb_main.2 
.bb_main.2:
OR DL, 1 # instrumentation
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG CL, CL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 62 
CMOVNB RDX, RSI 
NEG EBX 
MOVSX RCX, SI 
CMP RAX, 58 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
