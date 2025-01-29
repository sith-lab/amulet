.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
CMC  
MOV RDI, RDX 
IMUL BL 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RBX] 
CMP DX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
ADC BL, CL 
MUL EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
STC  
AND RBX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RBX] 
CMOVNZ RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
CLC  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
CMOVB RDI, RDX 
CMP DIL, 66 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDX] 
MOVZX SI, CL 
XCHG RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 95 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
