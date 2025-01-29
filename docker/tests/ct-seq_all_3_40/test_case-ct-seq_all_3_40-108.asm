.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 85 # instrumentation
CMOVBE EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
MOVSX RDI, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
CMOVNL DI, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND CX, 36 
CMOVNLE RCX, RCX 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
MUL DL 
AND RAX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RAX] 
XCHG CL, AL 
XCHG AX, AX 
NEG CL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 73 
SETNBE BL 
AND RBX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
NOT DL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 1 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RBX] 
CMOVP ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], 1276276779 
MOVSX RCX, SI 
MOVSX RAX, SIL 
CLD  
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -69 # instrumentation
SBB AX, -8318 
CMPXCHG CL, BL 
AND RSI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RSI] 
MOVZX EDX, AL 
AND RDI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RDI] 
CMOVNBE RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RCX] 
CMP EDX, EDX 
SETNL AL 
MOV BL, -110 
SETLE DL 
SUB AX, -28773 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
