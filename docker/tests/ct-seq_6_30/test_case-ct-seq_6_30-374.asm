.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
CMOVS BX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -67 
IMUL RBX, RDX, -4 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RBX 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, 109 # instrumentation
LAHF  
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDX 
MOV EBX, -80209794 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
NEG AL 
CMOVO RDX, RCX 
CLC  
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 67 
SBB EDX, EAX 
JS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, 16 # instrumentation
ADC BL, 19 
CMP RAX, -2008115383 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -27 
MOVSX DI, DL 
DEC RSI 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
CMOVZ SI, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 61 
NEG AL 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 45 # instrumentation
CMOVNLE DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
