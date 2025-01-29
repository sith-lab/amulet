.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
SBB DL, DL 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -42 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RSI 
CMOVB ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 55 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDI] 
IMUL AX, AX 
AND RDI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDI], -70 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX], 36 
AND RBX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX], 93 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
