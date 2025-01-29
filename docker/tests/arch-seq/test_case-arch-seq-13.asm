.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RBX, RAX 
TEST EDX, -1920589992 
SETNBE DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], BL 
IMUL RCX, RCX, 30 
ADD DIL, 104 # instrumentation
CMOVP CX, BX 
SBB AX, -25060 
XOR CL, CL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND EAX, -378918791 
MOVSX EDX, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDI] 
ADC DIL, 12 
XOR DL, -39 
ADC DL, SIL 
MOV EAX, EDX 
SETNB AL 
JMP .bb_main.2 
.bb_main.2:
MOVSX EDX, CL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
XOR AL, DL 
XOR RDI, -5 
SETBE BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL RSI, RDI, 36 
TEST DX, -21091 
CMOVNL ECX, ESI 
CMOVNB RSI, RDX 
XOR BX, 110 
AND RSI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RCX] 
AND AX, 13988 
ADC SIL, 93 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 30 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR DIL, -54 
IMUL SI, DI 
SAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
