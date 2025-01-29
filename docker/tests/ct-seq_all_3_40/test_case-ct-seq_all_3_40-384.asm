.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, 84 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -35 
OR RBX, 31 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDX] 
SETNLE CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], CL 
OR BL, CL 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
MUL BL 
JMP .bb_main.1 
.bb_main.1:
DEC AL 
NOT SI 
AND RCX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RCX] 
SETL CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI] 
INC EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], SI 
SUB RDI, RBX 
SETP AL 
ADD AL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
ADD DIL, -40 # instrumentation
SETNS BL 
SETNS AL 
ADC ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDX] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
ADD DIL, 93 # instrumentation
ADC DX, -62 
CMOVNB EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
ADC EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
MOVZX EAX, AL 
CWDE  
OR EDX, -38 
MOV RDX, -1688133582108807589 
INC DI 
CBW  
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
