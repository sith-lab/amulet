.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL EDX 
OR SI, 0b1000000000000000 # instrumentation
BSR SI, SI 
ADD DIL, 47 # instrumentation
ADC RDX, -77 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 79 
NEG RSI 
CMP DIL, AL 
ADC EBX, EDI 
CMOVNO RBX, RAX 
CMOVNBE CX, BX 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -63 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 91 
CMP CL, AL 
MOV AL, CL 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
JP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, 0 # instrumentation
CMOVLE RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
JNP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, -65 # instrumentation
CMOVL ECX, EDI 
SBB RAX, -1689180027 
CMP RAX, -376892266 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
CMP DL, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RBX] 
SBB DL, DL 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 25 # instrumentation
MOVSX EBX, DL 
ADC SIL, 90 
CLD  
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RDI 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
