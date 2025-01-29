.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -4 # instrumentation
CMOVP EDX, ECX 
CMOVNL SI, AX 
MOVSX EDI, CX 
CMOVNS DX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDI] 
IMUL DIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDI] 
JRCXZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB EAX, 1400925464 
CMP CX, CX 
NEG BX 
MOVZX RAX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RBX] 
ADC CL, DL 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
ADD DIL, 111 # instrumentation
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 33 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
SBB SIL, -116 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV DX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
ADC EAX, -1949345385 
AND RBX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RBX] 
CMOVP SI, DI 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
NEG EDX 
CMOVS RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
