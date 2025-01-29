.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -73 # instrumentation
SBB AL, CL 
CMP BL, AL 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -108 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
CMOVB AX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 34 
SUB AL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
DEC EDI 
CMOVL CX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 76 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 11 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RBX] 
CMOVNLE EDI, EDI 
XCHG RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], -73 
ADD SIL, -52 # instrumentation
CMOVZ RSI, RDI 
DEC ESI 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 30 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 3 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -60 
MOVSX DX, AL 
CMP RDI, RDI 
INC DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RCX] 
MOV RDI, 3964767609587020677 
CMOVB RAX, RCX 
ADC BL, -16 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
