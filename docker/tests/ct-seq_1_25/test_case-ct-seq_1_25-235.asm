.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
STD  
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
CMOVNS RSI, RDX 
ADC AL, 122 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
SBB RAX, 21 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 84 
CMP AX, 11274 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
ADC BL, DL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
CMP DIL, 63 
AND RAX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ESI 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RBX 
SUB CL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
XCHG BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
