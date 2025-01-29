.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
DEC CL 
XCHG DI, CX 
MUL DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -22 # instrumentation
CMOVO CX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RBX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX] 
ADD DIL, -88 # instrumentation
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
DEC RSI 
STC  
CMOVLE DX, DX 
SUB CL, AL 
INC CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -80 # instrumentation
SBB RBX, -128 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
MOV AL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RCX] 
IMUL AX 
INC DL 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB AL, -17 
SUB AL, -33 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -118 
ADC SI, 21 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
