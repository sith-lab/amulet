.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD BL, AL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
LEA EAX, qword ptr [RDX] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDI 
MUL CL 
CDQ  
XCHG RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
LEA RSI, qword ptr [RCX + RBX + 63548] 
JMP .bb_main.2 
.bb_main.2:
MOV CL, -3 
AND RDX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDX] 
ADC AX, 11913 
MOV ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RAX] 
SBB AL, 29 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 3 # instrumentation
CMOVNP EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -64 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DI 
SBB AX, 2595 
CMOVL EDI, EBX 
SBB RAX, -1562814448 
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
CMP AL, -101 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
CMOVNLE ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RCX] 
CMOVNZ BX, DI 
IMUL BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
