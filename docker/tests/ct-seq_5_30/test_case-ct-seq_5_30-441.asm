.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
MOV DL, DL 
SUB BL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 106 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], BX 
CMOVNP RDX, RDX 
ADC EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -101 # instrumentation
SBB AX, 29288 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RBX] 
DEC CL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
DEC BX 
MOVZX CX, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RSI] 
CMOVZ BX, DX 
ADC EAX, 1425210363 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDX 
IMUL RSI, RSI, -35 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 98 # instrumentation
MOV DIL, BL 
CMOVBE EDX, EDI 
MOV AX, AX 
CMOVNO EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDX 
DEC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
