.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], SI 
MUL AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -103 
CMOVNZ EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -56 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RSI] 
MOVZX RBX, CX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RBX] 
ADD DIL, 35 # instrumentation
CMOVB EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
MUL RBX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 41 
CMOVO AX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -25 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
CLC  
BSWAP RDX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ESI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
