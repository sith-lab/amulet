.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RAX, RCX 
MOV AL, AL 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 74 
AND RCX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RCX] 
CMOVNL SI, DX 
MUL BL 
ADD SIL, -42 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV CL, BL 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 77 
NEG DI 
JMP .bb_main.2 
.bb_main.2:
XCHG AL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RAX] 
CMOVNZ EAX, EDI 
CLC  
JMP .bb_main.3 
.bb_main.3:
XCHG CX, AX 
NEG CX 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
SBB EAX, ECX 
SBB EAX, 1347176629 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 124 
CMOVNS EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RAX] 
IMUL RSI, RSI 
ADD SIL, 125 # instrumentation
CMOVL EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDI 
NEG EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
