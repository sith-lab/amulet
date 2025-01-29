.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -93 # instrumentation
SBB BL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
CMOVLE DI, SI 
CMP SIL, -45 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AL, AL 
MUL CL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -112 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
IMUL AX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 46 
JMP .bb_main.3 
.bb_main.3:
MOV CL, -35 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 56 
CMOVNZ ESI, EAX 
SBB AL, 59 
IMUL EAX, EBX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RSI 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
NEG RAX 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 20 
JMP .bb_main.5 
.bb_main.5:
ADD AL, -112 
SBB RDI, -114 
SUB BL, 33 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
