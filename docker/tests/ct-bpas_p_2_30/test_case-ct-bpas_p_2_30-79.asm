.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -1 # instrumentation
ADC RAX, 1760999100 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 36 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RCX] 
MOV RDX, RDX 
CMP ECX, EDX 
CMOVNZ EBX, EAX 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
XCHG RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDI] 
ADD SIL, -38 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
CMOVZ AX, SI 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EBX 
MOVSX RBX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
ADC EAX, -71 
CMOVLE BX, SI 
CMOVL EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -2 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RBX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
