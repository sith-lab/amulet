.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -42 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -43 
AND RCX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -63 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
XCHG BL, DL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], BX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ESI 
CMP EBX, -49 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RBX] 
SBB DL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
