.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -86 # instrumentation
MOVSX SI, BL 
SBB DL, 78 
AND RCX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RCX] 
MOVSX RDX, DL 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
MUL AL 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
NEG CX 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
CMOVNP EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RSI 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -127 # instrumentation
ADC AL, AL 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DIL 
MOV BL, 87 
LEA RDI, qword ptr [RDI] 
ADC DIL, 80 
JLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RCX] 
SBB AL, BL 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -29 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 111 
CMOVNO SI, SI 
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], 103 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
XCHG CL, AL 
IMUL RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
