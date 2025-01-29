.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 39 # instrumentation
CMOVO BX, SI 
DEC RDX 
NEG BX 
ADD SIL, BL 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RCX] 
ADC EDI, 121 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX] 
JO .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
SUB SIL, -95 
AND RDX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDX] 
CMOVP ECX, EDI 
CMP EAX, EAX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
JNBE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -59 # instrumentation
CMOVB RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], AX 
MOVSX EDI, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RCX] 
CMOVNB RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 36 # instrumentation
CMOVNB RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
MOVSX RAX, SIL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 2141 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
INC SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -65 
ADC RAX, -1852511329 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], ESI 
CMP DIL, AL 
CMOVNO RAX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
