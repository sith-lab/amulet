.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -98 # instrumentation
CMOVNLE RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
CWD  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -41 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 33 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 41 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -57 
CMOVNL EDX, ESI 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
MOV CL, 61 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
