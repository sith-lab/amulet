.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RSI], 115 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
ADC AL, 116 
CMOVNLE RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], AL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -17 # instrumentation
XCHG DX, DI 
CMOVNBE CX, SI 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
ADD DL, AL 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -73 # instrumentation
INC DIL 
ADC DIL, AL 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
OR AX, 0b1000000000000000 # instrumentation
BSF SI, AX 
AND RDX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDX] 
ADC EAX, -1698566255 
JNS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
STD  
CMP DL, AL 
MOV DL, DL 
CMOVNL EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 51 
JRCXZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
SUB EDX, ECX 
JMP .bb_main.5 
.bb_main.5:
CMP SIL, -19 
ADD AL, 84 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
