.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EBX, EDX 
SBB AX, -3006 
SUB AL, CL 
XOR BL, DL 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
SETNO CL 
CMP AL, -1 
CMP BL, 78 
AND RAX, -1941269324 
AND RSI, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RSI] 
CMOVNBE SI, DX 
CMOVL DI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RCX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
IMUL DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 85 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RBX 
SETNB CL 
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
MOVZX RAX, AL 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], -114 
CMOVB ESI, ECX 
DEC BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RBX] 
SUB EBX, 48 
SETNBE BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
ADC RAX, RCX 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, RAX 
CMOVNL RAX, RDI 
SBB EAX, 2026796171 
NOT DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RSI] 
CMOVS BX, BX 
XOR CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
