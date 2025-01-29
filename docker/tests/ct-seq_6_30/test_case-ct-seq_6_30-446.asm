.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDI] 
IMUL AL 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
BSWAP EBX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -93 # instrumentation
ADC BL, DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDI] 
MOV DL, -46 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
IMUL RBX, RCX 
ADD DIL, 125 # instrumentation
CBW  
CMOVNLE SI, DI 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD ECX, -26 
MOV CL, DL 
SBB AX, 18694 
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
ADD DIL, 72 # instrumentation
ADC AL, -104 
JNO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ESI 
IMUL RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
MOVZX CX, AL 
CMOVL ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RDI] 
MUL DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDI] 
MOVSX AX, SIL 
MOVSX DI, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
