.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 7 # instrumentation
CMOVP DI, DX 
AND RAX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RAX] 
SBB ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DI 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB CL, -64 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 78 
IMUL ESI, ESI 
ADD DIL, 0 # instrumentation
MOVZX EDX, CX 
CMOVNS RSI, RCX 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
ADD DIL, 120 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDX] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
LEA BX, qword ptr [RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -12 
CMOVNO RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RAX 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDX] 
INC SI 
MUL SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
MOVZX DI, DIL 
CMP EDX, 106 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], SIL 
CMP AL, 70 
AND RCX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
