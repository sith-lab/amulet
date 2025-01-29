.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX BX, DL 
CMP DX, -65 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 11 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD AX, -26666 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], SIL 
CMOVNO DX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -38 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 65 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
CLD  
IMUL SI 
MOVZX AX, SIL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -121 # instrumentation
CMOVNP EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 126 
ADC SIL, 56 
MOVZX SI, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 106 # instrumentation
CMOVNO DX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, -122 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
LAHF  
ADD RCX, RBX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB DIL, 96 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 3 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
MOVZX CX, AL 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -91 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
