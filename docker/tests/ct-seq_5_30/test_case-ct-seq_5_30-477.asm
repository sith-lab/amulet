.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RBX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 101 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -8 # instrumentation
SBB AL, -61 
SBB AX, 9412 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 122 
CMOVNS BX, SI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EBX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
MOVZX DI, BL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
CMOVNO EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDI 
CWDE  
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RSI] 
IMUL RCX, RAX, -99 
CMC  
AND RSI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RSI] 
IMUL AX, DI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RBX] 
CMOVNO EAX, ECX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
CMOVZ RSI, RSI 
LEA DI, qword ptr [RBX + RCX] 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
