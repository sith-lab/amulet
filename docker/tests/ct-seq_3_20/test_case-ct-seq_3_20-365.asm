.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AL, AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EBX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RSI] 
XCHG DI, AX 
IMUL EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -532062528 
SBB CX, 58 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDX] 
CMOVS RBX, RDI 
CMOVO EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], SIL 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RBX 
IMUL RSI, RBX, 59 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
