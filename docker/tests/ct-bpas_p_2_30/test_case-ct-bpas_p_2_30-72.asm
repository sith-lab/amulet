.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SI, 23 
NEG AL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -27 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
CMOVB RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDX] 
SBB EAX, 1283550395 
OR DL, 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RSI] 
CMP CX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -105 
LAHF  
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA EDI, qword ptr [RDX + RBX + 56120] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 51 
SBB RCX, RBX 
CMOVS AX, AX 
MUL RDI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RBX] 
ADD DIL, 81 # instrumentation
SBB RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
CMOVBE EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DX 
MOVSX RCX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
