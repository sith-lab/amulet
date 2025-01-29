.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 73 # instrumentation
SBB SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RCX] 
CMOVNP ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDI 
LEA EDX, qword ptr [RCX + RCX + 45595] 
AND RAX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1122736539 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 110 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RAX] 
ADD RAX, 1654006204 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RBX] 
CMOVO ESI, EAX 
CMP AX, -31477 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EBX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
ADC EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -128 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -72 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
