.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
ADD ESI, -128 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
CMP DL, -36 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
ADC SIL, -12 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
MOVZX EBX, SI 
CMP RCX, -109 
SBB CL, 17 
CMOVNBE EAX, EBX 
SUB DL, 74 
JB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -17 
JB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
CMP BX, -34 
XCHG BX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RAX 
BSWAP ECX 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -29 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RAX] 
ADD DIL, 80 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDI 
CLC  
JMP .bb_main.5 
.bb_main.5:
SUB RDI, 50 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -55 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
ADD SIL, 57 # instrumentation
CMOVNO DI, DI 
ADD AL, -97 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
