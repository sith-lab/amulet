.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RCX] 
MOV DI, -25945 
SBB AX, 22612 
CMP CL, AL 
CMOVO EBX, EDX 
ADD BL, -124 
ADD ESI, -45 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EBX 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EDX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 105 # instrumentation
SBB RBX, RSI 
XCHG CX, CX 
CMP AL, BL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL RDI, RDX, 5 
ADD RAX, -1915898720 
AND RDX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDX] 
NEG AX 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
ADD EAX, 1060465389 
CMP AX, -77 
CMOVS EDI, EAX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
MOVSX EDI, CX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDI] 
IMUL RCX 
MUL BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 49 
CMOVS BX, DI 
CMOVNL RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
