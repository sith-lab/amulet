.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
CMP RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -98 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -68 
CMOVNZ SI, AX 
SBB RDX, RDX 
XCHG DX, AX 
STC  
MOVSX RCX, BX 
SBB BL, 8 
SUB RAX, -1750411572 
XCHG RDX, RDX 
IMUL DX, CX 
SUB CL, -61 
ADC EDI, -45 
IMUL RDX, RBX 
CMOVNO AX, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
OR BX, 0b1000000000000000 # instrumentation
BSR SI, BX 
ADD SIL, -106 # instrumentation
BSWAP EDX 
CMOVNLE EAX, EAX 
CMOVNBE AX, SI 
IMUL RCX, RSI, 5 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
