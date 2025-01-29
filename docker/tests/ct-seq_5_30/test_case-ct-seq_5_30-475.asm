.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -17 # instrumentation
ADC DL, AL 
ADC AL, 56 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
SBB BL, AL 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -89 # instrumentation
CMOVLE RCX, RDX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
IMUL EDX 
MUL AL 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -106 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
ADD AL, BL 
MOVZX EDI, CL 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
DEC RCX 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 99 # instrumentation
CLD  
ADC RAX, -1627858 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -28 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
CMOVNO RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ESI 
CMOVNO ESI, EDI 
DEC DL 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
MOVSX RAX, BL 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 65 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX SI, CL 
ADD SIL, -34 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
