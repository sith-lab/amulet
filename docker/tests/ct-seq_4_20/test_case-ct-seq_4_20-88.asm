.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RBX] 
CMOVNL CX, SI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDX 
MOV RAX, 4507576176683678113 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RSI] 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DIL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
SBB EAX, -637012266 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RBX], -25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
