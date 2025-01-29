.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 9 # instrumentation
SETLE DL 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -125 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
CMP RAX, 592194981 
SBB RDI, RAX 
NEG CL 
STC  
SBB EAX, EDI 
CMOVP SI, AX 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDI] 
SUB RDX, RCX 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND ECX, -12 
ADC SI, 55 
MUL BL 
ADD SIL, 84 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], AX 
CMP RAX, -400365923 
ADD EAX, -117 
MOVSX ESI, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RDI] 
CMOVO EAX, EDI 
CMOVL AX, AX 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], DX 
CMP CL, -17 
CMOVBE EDI, ESI 
ADC AL, DL 
SUB CL, CL 
CMOVNL EAX, EAX 
AND DL, AL 
SETNP BL 
ADC EDI, 63 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
CMC  
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
OR ECX, -70 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], SI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
