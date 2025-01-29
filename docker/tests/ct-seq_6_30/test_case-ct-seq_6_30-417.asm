.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 41 # instrumentation
CMOVS RAX, RAX 
MOVSX ESI, SIL 
AND RSI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 107 # instrumentation
MOV EDX, EDX 
CMOVNS EDX, EBX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDI 
ADD SIL, -13 # instrumentation
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], BX 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
MOV RCX, RAX 
MOVSX EAX, SIL 
INC BX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RSI] 
CMOVNBE ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB SIL, AL 
ADC SIL, 11 
MOVSX ECX, CX 
AND RAX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RAX] 
ADC DL, AL 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RSI] 
INC RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
