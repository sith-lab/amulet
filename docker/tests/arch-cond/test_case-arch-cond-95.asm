.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD RAX, -25 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
SUB RDX, -44 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
OR DL, 70 
JMP .bb_main.1 
.bb_main.1:
XCHG BX, AX 
XADD CX, DX 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
ADD SIL, -106 # instrumentation
CMOVNZ EDI, ESI 
ADC AL, -11 
OR RDX, RDX 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR CL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
SUB EDX, -92 
SETZ DL 
CMP CL, DL 
CMOVP BX, AX 
CMOVNP EAX, ESI 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR RAX, -1836809919 
ADD SI, -24 
INC SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], DX 
CMOVO EDX, EDI 
CMPXCHG RAX, RDI 
CMP SI, SI 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -56 # instrumentation
CMOVNO DI, AX 
AND RSI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RSI] 
SETB DIL 
CMP EDI, ESI 
SETNZ CL 
AND EAX, -17 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
MUL RCX 
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
XCHG EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], -98 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
