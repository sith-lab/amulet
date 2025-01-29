.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RCX 
CMOVNP EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RCX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -123 # instrumentation
CMOVNO RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RCX] 
SBB AL, 54 
SUB DI, 72 
SUB RAX, -498414470 
CMOVNP ECX, EBX 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RAX] 
IMUL SIL 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], SI 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
IMUL RDX, RAX, 34 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, -56 # instrumentation
CMOVNBE BX, word ptr [R14 + RDI] 
LAHF  
DEC DIL 
IMUL RSI, RBX 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -108 # instrumentation
SBB RAX, 1189195662 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RBX] 
CMP BL, DL 
CMP DX, DX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
INC EDI 
MOV RDI, 5051482333426272133 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
