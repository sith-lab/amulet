.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 85 
CMOVNL SI, CX 
SBB ESI, ECX 
JNO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
DEC DIL 
SUB RCX, RDX 
CMOVNL ECX, EBX 
SBB DIL, -111 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
SUB RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RCX] 
SBB ECX, -44 
MOVSX EDI, BL 
NEG SI 
SBB AL, 99 
DEC BL 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP CX, CX 
AND RAX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RAX] 
SBB AX, 6565 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -101 # instrumentation
ADC EAX, 1746540297 
CMP AL, -80 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
ADD ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RAX] 
SUB EAX, -72923410 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], AX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
