.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -18 # instrumentation
ADC AX, 17969 
CMOVNS DX, DX 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], 3094 
MOV BL, DL 
SETNZ AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
XCHG BX, AX 
CMP CX, -11 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
CMP AL, 70 
CWDE  
SETO AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
ADD AX, 32308 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -15 # instrumentation
CMOVNZ DI, SI 
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
IMUL RBX, RBX, -89 
CMP DI, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDI] 
MUL EBX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], -21 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDX] 
CMOVNBE BX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], CX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 944281933 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], SIL 
CMOVNL RAX, RAX 
CMOVNP EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RAX] 
AND EAX, 104911824 
CMOVNBE DX, AX 
XOR DL, BL 
INC RDX 
AND SIL, DL 
SETNBE SIL 
MOV ESI, 1793211697 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
