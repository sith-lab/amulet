.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA ECX, qword ptr [RDI] 
SUB RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
SUB RAX, 110 
MOV CL, DL 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDI] 
NEG DI 
CMOVNLE EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], DL 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RDX] 
ADD EDI, -13 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -62 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
ADD DIL, 26 # instrumentation
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL RBX 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
