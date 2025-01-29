.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, 1934868503 
ADC RBX, 51 
SUB RDX, RSI 
SETP DL 
CMP AL, 94 
AND RSI, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RCX] 
ADC EDI, EDX 
SUB AL, 93 
SETNO BL 
LEA ECX, qword ptr [RDI + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], SI 
CMP ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDI] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RSI] 
CMOVP RAX, RDI 
OR AX, -29325 
OR DX, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RBX] 
CMOVL RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
SETZ AL 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
CMOVL ECX, EBX 
IMUL AL 
OR AL, CL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RCX 
OR DL, DL 
CMOVB DX, DX 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EAX 
SETZ AL 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
MOVSX RDX, DL 
NOT RAX 
ADC DIL, -16 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
