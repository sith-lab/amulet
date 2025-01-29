.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EBX 
ADC DX, -126 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EDI 
CMOVNB EBX, EBX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
MOV BX, -23768 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
ADD AL, AL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -116 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -45 
MOV CL, -23 
AND RCX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EBX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -101 # instrumentation
CMOVNL EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX], -86 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
