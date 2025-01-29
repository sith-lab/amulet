.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 105 # instrumentation
CMOVNS RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
ADD DI, BX 
CMC  
CMP CX, DI 
ADD AX, -9284 
CMOVBE DI, CX 
ADC EDI, 104 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
MOVSX ECX, DL 
AND RBX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RBX] 
CMOVP ECX, EBX 
MOV AX, DI 
IMUL AL 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR SI, 0b1000000000000000 # instrumentation
BSR SI, SI 
ADD DIL, -52 # instrumentation
ADC EDX, 22 
CMP DX, CX 
CMOVLE ECX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
SBB RBX, 47 
CMOVBE RDX, RBX 
CMOVO ESI, ESI 
CMOVNS EDX, EDX 
CMOVNS CX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
