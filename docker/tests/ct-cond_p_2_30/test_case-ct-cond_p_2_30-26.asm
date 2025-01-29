.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
SUB DIL, 11 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RBX] 
CMOVLE EAX, EBX 
MOVZX RDX, CL 
ADD EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RBX] 
CMP DI, 48 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], SIL 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDX] 
IMUL DX, CX, -100 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 82 
MOVSX RCX, BL 
MOV DI, 8597 
MUL RCX 
MOVSX ECX, CL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RBX 
CMP CL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RCX] 
CMOVNO RAX, RDX 
CMOVS EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
