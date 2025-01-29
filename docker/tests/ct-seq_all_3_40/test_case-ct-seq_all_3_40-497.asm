.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RBX] 
CMOVLE RAX, RCX 
NOP  
MUL EAX 
TEST DL, -65 
LEA EAX, qword ptr [RSI] 
SETNZ CL 
LEA RBX, qword ptr [RBX + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
ADC EDX, 36 
MOVSX AX, AL 
SETNBE AL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
XADD RAX, RAX 
CMOVLE AX, SI 
XOR BX, 51 
OR RCX, RSI 
MOV DIL, 112 
AND RDX, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], -86 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RSI 
SBB AX, 17218 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DI 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 121 
DEC SIL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -119 # instrumentation
SBB RAX, -985444608 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 1388227744 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RDI] 
XADD EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
CMP CL, SIL 
MOVZX EAX, BX 
SETNLE AL 
XADD DL, CL 
IMUL RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
