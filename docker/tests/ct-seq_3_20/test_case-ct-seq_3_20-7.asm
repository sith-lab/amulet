.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RBX] 
MOVZX RAX, AX 
AND RCX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RBX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 117 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RAX 
CMOVNLE RBX, RBX 
CMP AL, 23 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
