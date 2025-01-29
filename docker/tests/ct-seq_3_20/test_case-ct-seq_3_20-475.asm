.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], SIL 
CMOVNP AX, CX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 109 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDI 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], SIL 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -60 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB SIL, AL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RSI] 
MOV BX, 22556 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
