.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -47 # instrumentation
ADC DL, DL 
CMOVNP DX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DI 
IMUL CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
MOVSX ESI, SI 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDI] 
CMOVB RSI, RCX 
CMOVO ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], CL 
SBB RAX, -690478806 
CMOVNS BX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -121 # instrumentation
SBB SIL, -99 
AND RBX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RBX] 
ADC RAX, -2046801151 
ADD EDX, -78 
IMUL BL 
INC BL 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP EBX, 112 
SBB EAX, 100 
CMOVNZ RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
LEA RBX, qword ptr [RAX + RSI + 57778] 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ECX 
MOVSX BX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
