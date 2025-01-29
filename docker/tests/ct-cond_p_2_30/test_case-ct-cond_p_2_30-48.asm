.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
CMOVNZ RBX, RCX 
XCHG RCX, RAX 
ADC EAX, 253652516 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
CMOVNB ESI, ECX 
ADD CX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EAX 
CMOVNP EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
XCHG EDX, ESI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 79 # instrumentation
SBB RAX, 694517771 
ADD AL, -119 
IMUL AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -128 
CMOVL CX, CX 
CWD  
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DIL 
MOVSX ECX, AL 
CMP DIL, 89 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
CMOVNO ESI, ESI 
MUL AX 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
