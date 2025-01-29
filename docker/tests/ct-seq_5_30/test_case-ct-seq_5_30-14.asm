.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 2131412669 
AND RBX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RBX] 
CMP EAX, -23 
SUB SIL, -60 
ADC CL, SIL 
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
ADD SI, -99 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RAX] 
STD  
MOVSX EDI, DL 
CMOVNZ DX, SI 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 68 # instrumentation
CMOVP RCX, RDX 
MOVSX RDX, CX 
IMUL SI, SI 
ADC RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
ADC DL, -108 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 66 # instrumentation
CMOVZ ESI, EAX 
ADC CL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RAX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
ADD CL, -73 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], SI 
JMP .bb_main.4 
.bb_main.4:
ADD AL, 127 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
