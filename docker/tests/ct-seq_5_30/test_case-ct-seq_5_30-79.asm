.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RDX] 
DEC DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDI] 
IMUL RCX, RSI, -88 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -82 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, 126 # instrumentation
CMOVNL EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], SI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
XCHG CL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RAX] 
DEC RBX 
SBB EDI, EDI 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -99 # instrumentation
CMOVNO RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EBX 
STC  
CMOVB CX, DX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDI], 73 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX] 
ADD SIL, -99 # instrumentation
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 298437308 
CMOVNLE RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -63 
CMOVNS RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RCX] 
CMP RAX, 837275814 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDX] 
DEC RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
