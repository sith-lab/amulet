.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 82 # instrumentation
SBB RAX, 1058171272 
IMUL RSI, RDX, -62 
BSWAP RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 26 
AND RBX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RBX] 
XCHG RAX, RDI 
JNO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, 91 # instrumentation
CMOVLE AX, SI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RAX] 
CMP EAX, 833459277 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 34 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 82 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 90 # instrumentation
CMOVL DI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -118 
CMP EDI, ESI 
SUB DI, DX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -57 
CMP ESI, -9 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RSI] 
NEG DI 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], BX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -113 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RCX] 
ADD RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI], 105 
SUB ESI, 60 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], BX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], AX 
SBB DL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
