.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RCX] 
ADD SIL, -9 # instrumentation
CMOVS EDX, EDI 
IMUL RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SAHF  
AND RAX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RAX] 
MOVZX SI, BL 
CMP RAX, -1499112573 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -35 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 92 
JB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, 110 # instrumentation
CMOVNS EDX, EBX 
ADD SIL, AL 
SUB RCX, -105 
SAHF  
MOVZX ESI, CL 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 125 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -427735707 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDX] 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
ADD SIL, 96 # instrumentation
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CLC  
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 48 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RSI] 
CMOVNBE CX, DI 
MOVSX DX, DL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 9 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
