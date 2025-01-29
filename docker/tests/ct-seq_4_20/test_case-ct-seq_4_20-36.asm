.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, -64641450 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], SIL 
AND RSI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 84 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RAX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 122 # instrumentation
CMOVNLE AX, BX 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 106 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -62 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], SI 
CMP AL, 33 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -81 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
