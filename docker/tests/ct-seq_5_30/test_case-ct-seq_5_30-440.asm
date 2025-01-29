.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 19 # instrumentation
ADC EBX, EBX 
CMOVNP DX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RBX 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, -125 # instrumentation
CMOVZ EAX, ESI 
CMOVNLE DI, DX 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
IMUL RAX 
ADD RAX, 728767726 
CMOVNL RBX, RCX 
MOV EDX, 1418242627 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDX] 
IMUL CL 
MOV EDI, EAX 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -38 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
SUB RCX, 50 
MOVZX RCX, SI 
IMUL SIL 
ADC CL, AL 
IMUL RDI, RCX, 70 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
SBB AL, CL 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD RAX, -955427132 
XCHG RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
