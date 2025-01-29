.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RBX] 
CMOVO CX, DX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 85 # instrumentation
CMOVNZ BX, SI 
LEA RDX, qword ptr [RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -107 
MOV DIL, CL 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 8 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
ADD DI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
