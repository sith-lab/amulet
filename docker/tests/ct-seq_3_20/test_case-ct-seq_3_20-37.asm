.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
CMOVS EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
MOV BL, -89 
CMOVO AX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -87 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
CMP AX, 21037 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
