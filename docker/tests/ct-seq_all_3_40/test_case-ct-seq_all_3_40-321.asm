.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RAX] 
CMOVNZ EBX, ESI 
MOVZX RDI, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDI 
AND RAX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], -12 
IMUL RCX, RBX, 69 
SUB AX, AX 
LEA CX, qword ptr [RCX + RDX] 
OR EAX, -202773136 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
MOVZX RSI, DL 
SUB DIL, 7 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDI 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], -124 
XOR RDX, RAX 
MOV RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
XADD ESI, ESI 
INC SI 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -67 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -19 
XOR BL, 52 
CMOVNLE DX, AX 
MOV BL, CL 
AND AL, 112 
SETL AL 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
SUB AL, BL 
ADD AX, 20136 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
SUB RAX, 1375687675 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], 95 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RCX] 
MOVSX EBX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
