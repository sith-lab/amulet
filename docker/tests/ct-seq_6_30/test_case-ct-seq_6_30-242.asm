.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
CMOVNP EBX, ESI 
INC DX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -39 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
ADD AX, 64 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
DEC DI 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
ADD DIL, -117 # instrumentation
MOV DL, AL 
MOVZX RDX, SIL 
ADC CL, CL 
SUB RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDX 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
MOV SI, -24565 
MOVSX AX, SIL 
ADC AL, AL 
MOVSX DI, AL 
JNO .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
IMUL EAX, EBX 
ADD SIL, -18 # instrumentation
CMOVZ RDX, RBX 
DEC RSI 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -51 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 61 
LOOPE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
OR DL, 1 # instrumentation
CMOVLE DI, AX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EDX 
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOVSX AX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
