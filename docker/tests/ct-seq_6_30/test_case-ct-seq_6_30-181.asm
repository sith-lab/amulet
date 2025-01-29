.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 49 # instrumentation
CMOVNZ EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RSI] 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RBX] 
ADD DIL, -114 # instrumentation
JBE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 75 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
MOV AL, CL 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
CMOVO ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RSI] 
ADD ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
MOVZX RBX, AL 
XCHG CX, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DX 
CMOVNB RBX, RCX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG RSI, RSI 
INC RSI 
JMP .bb_main.4 
.bb_main.4:
CMP ECX, -39 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 6 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RCX] 
CMOVLE DI, SI 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -40 
CMP RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDI 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
