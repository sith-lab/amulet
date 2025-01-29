.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -24517 
SUB SIL, -9 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -95 # instrumentation
CMOVNL ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
SUB RAX, 158290973 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
XCHG RSI, RAX 
JP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], 68 
CMOVNBE RSI, RCX 
MUL BX 
MOVZX BX, BL 
CMP AX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 88 
ADD EDI, 81 
JMP .bb_main.3 
.bb_main.3:
NEG EDX 
MOV RDI, RBX 
MOV DI, 13141 
MUL RAX 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 65 
CMP EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RSI 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 20 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOVSX RDI, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
