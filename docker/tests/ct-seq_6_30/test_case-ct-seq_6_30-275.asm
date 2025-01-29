.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DX 
OR SI, 0b1000000000000000 # instrumentation
BSR CX, SI 
ADD DIL, 35 # instrumentation
ADC CX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
CMOVNZ EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RAX] 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 10 # instrumentation
CLD  
SBB DX, 96 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX EDI, SI 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
DEC AL 
SUB RDX, 37 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -90 # instrumentation
ADC AL, -21 
ADD RDX, -68 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], CX 
CMOVNZ DX, DX 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -48 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
ADD RAX, -223518134 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 592022418 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -83 
MOVZX DI, DL 
SBB SIL, 5 
CMOVZ AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
