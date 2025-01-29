.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RCX] 
ADC RDX, RDX 
MOV CL, DIL 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
CMOVNBE DX, SI 
NEG AL 
CMOVO EDI, ESI 
CMOVNB BX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -66 
XCHG SIL, SIL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], SIL 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
CMOVS AX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RAX] 
MOV ESI, EAX 
MUL DL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
MOVZX RAX, AX 
XCHG CX, AX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], SI 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL RDI, RDI, -42 
ADC AX, -9124 
CMOVNO BX, DX 
SUB RCX, RSI 
OR EDX, 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RAX] 
BSWAP EDI 
CMOVB ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
