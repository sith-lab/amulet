.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 37 
LEA ECX, qword ptr [RDX + RBX + 38595] 
CMP RDI, -75 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 25 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EAX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
CMOVS RSI, RBX 
NEG RSI 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -94 
AND RDX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RDX] 
SBB BL, AL 
JL .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
CMOVLE EDX, ESI 
SUB RBX, 20 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
JMP .bb_main.3 
.bb_main.3:
CMP CL, 65 
CMP EDI, EAX 
MUL CL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -126 
ADD AL, -48 
STC  
JMP .bb_main.4 
.bb_main.4:
MUL CL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
ADD DIL, 74 # instrumentation
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
