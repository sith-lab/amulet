.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -92 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], BX 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
SBB EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 79 # instrumentation
SBB DL, -128 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 83 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 121 
CMP SIL, -57 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -43 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], SI 
CMOVNS BX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 1394 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
