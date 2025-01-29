.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
DEC AL 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RDI] 
ADC SIL, 20 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EAX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RSI] 
SBB DIL, DL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB SI, -5 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
CMP EDI, 93 
SUB RAX, 1914291163 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
