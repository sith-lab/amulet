.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
IMUL RSI 
ADC RDX, 117 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -66 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -58 # instrumentation
ADC RAX, 506628509 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
ADD AX, 10321 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
ADD SIL, 103 # instrumentation
CMOVNS CX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDX] 
JNBE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, -69 # instrumentation
CMOVP RSI, RSI 
ADD BL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], -19 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RAX] 
SBB AX, -16343 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
MOVSX AX, AL 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DL 
ADC DX, BX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RAX] 
IMUL SIL 
ADD SIL, 46 # instrumentation
JNZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], ESI 
ADC DI, DX 
JMP .bb_main.5 
.bb_main.5:
ADD EAX, 801701989 
CMOVNL CX, DI 
ADD RAX, 1158464398 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
