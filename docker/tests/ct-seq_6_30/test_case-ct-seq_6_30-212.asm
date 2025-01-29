.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 40 # instrumentation
CMOVP RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RAX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 61 # instrumentation
CMOVLE RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RDX] 
NEG SI 
CMP AL, 105 
JS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RBX] 
MOVZX EAX, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -41 
AND RDI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDI] 
XCHG RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -113 
CMOVO EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
CMOVZ EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 95 
JMP .bb_main.4 
.bb_main.4:
MUL AX 
IMUL RSI 
DEC SIL 
AND RCX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RCX] 
CMOVNP ESI, ECX 
JMP .bb_main.5 
.bb_main.5:
SUB EDX, -23 
CMOVO EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDX] 
CMP DL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
