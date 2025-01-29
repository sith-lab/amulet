.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DI, DX 
SUB CL, DL 
SBB EAX, 36931970 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
SUB DI, CX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -17 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -23 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RCX] 
IMUL ECX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RDX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 15 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RCX 
XCHG EDI, ESI 
SBB DL, BL 
BSWAP EAX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
LOOPE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
CMOVBE ECX, EDI 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
CMOVP EDX, ESI 
MOVSX SI, AL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 125 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
