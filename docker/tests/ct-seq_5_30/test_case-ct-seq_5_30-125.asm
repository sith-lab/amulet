.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -35 # instrumentation
SBB AX, SI 
DEC CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 53 
CMOVP AX, DI 
MOV EDI, EAX 
BSWAP RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DX 
CMOVO DI, BX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
CMOVNLE RDI, RCX 
ADD EAX, -666346924 
SUB AL, -8 
ADD CX, DI 
CMP RDI, 94 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RSI] 
SBB RDX, -99 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
CMOVZ RCX, RAX 
CMOVNZ ESI, EAX 
ADC EAX, 1014619452 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], CL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -43 # instrumentation
ADC BL, 52 
CMOVZ DI, BX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -95 # instrumentation
CMOVLE RCX, RAX 
CMOVB RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
