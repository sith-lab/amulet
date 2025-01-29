.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
CMOVP EAX, ECX 
CMOVBE RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], SI 
AND RBX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -18 # instrumentation
LEA BX, qword ptr [RDX + RBX + 38519] 
ADC DI, BX 
AND RAX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RAX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG DX, SI 
MOVSX EDX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDI] 
MUL RSI 
MOV DIL, -14 
STC  
IMUL RDX, RCX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDI], 33 
INC DL 
SBB RDX, -49 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -104 
DEC RCX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
