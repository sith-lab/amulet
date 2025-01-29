.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AX, 4580 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], DX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -93 
TEST DL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RCX] 
XCHG BX, AX 
CMOVNZ EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
OR RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RDX] 
SBB EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 3 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
CMP EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 114 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
CMOVP ESI, EBX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], CL 
SETNBE BL 
SETNLE AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RBX] 
SUB RAX, 609093809 
MOV EBX, 300261347 
CMP RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 51 
XADD CX, CX 
SETNBE BL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -77 # instrumentation
SETP BL 
MOV EDX, -2014137819 
CMOVO RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
XCHG BX, BX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 84 
OR BL, 39 
IMUL DIL 
CMP EBX, -14 
SUB RAX, 248133084 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
