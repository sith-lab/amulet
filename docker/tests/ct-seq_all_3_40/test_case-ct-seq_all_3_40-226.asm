.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RDI, RAX, 63 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], BX 
AND AX, 4617 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RCX] 
CMOVNL ECX, EAX 
XCHG CX, AX 
TEST AX, -3884 
OR EAX, ESI 
MOVZX RDX, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RCX] 
SETB DL 
OR RAX, 714672799 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EBX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
OR AX, 6521 
MOV ECX, ESI 
CLD  
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
CWDE  
INC DL 
AND RCX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RCX] 
XADD DIL, SIL 
DEC SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], EDX 
MOVSX ESI, CL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 101 # instrumentation
SETNP CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RAX] 
XOR BX, DI 
SUB RAX, 254232610 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], BX 
CMOVS RAX, RAX 
SETNS AL 
CMPXCHG CL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
CMOVO DI, BX 
IMUL RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -33 
CMPXCHG SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
