.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -2 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 55 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD BL, 94 
IMUL RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 82 
MOVZX EAX, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ESI 
MOV DX, SI 
CMOVBE RDI, RBX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
CMOVNB ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RSI 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ECX 
MOVSX DI, CL 
BSWAP RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], SI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 81 # instrumentation
DEC DL 
CMOVNBE RCX, RSI 
IMUL ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDI] 
CMOVLE RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -98 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
