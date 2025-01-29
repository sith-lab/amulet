.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 112 # instrumentation
CMOVB SI, SI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 604776644 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
CMOVNZ ECX, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 36 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RBX] 
CMP CX, DX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV DL, -80 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -95 
ADD AX, 24533 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
XCHG AX, AX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DIL 
DEC RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
