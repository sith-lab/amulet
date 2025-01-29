.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RDX, DIL 
IMUL EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
CMOVNL EBX, EAX 
SBB RAX, -1405666686 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DI 
SUB AX, -14 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 1 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 10 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
CMP ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
INC AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -113 
AND RDI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], SI 
ADC BL, AL 
DEC AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
