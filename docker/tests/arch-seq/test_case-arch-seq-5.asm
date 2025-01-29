.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD AX, AX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDX 
SUB RAX, -962926596 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
SBB CX, DI 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 21 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
CMOVLE AX, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
MOVSX EBX, SIL 
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
NEG ESI 
SETNB SIL 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], -39 
JLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
ADD DI, BX 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
CMOVZ EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], DL 
TEST EAX, -1987648081 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -49 
SUB BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RCX] 
MOVSX ECX, SI 
AND RDI, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RDI] 
TEST RDI, RBX 
ADC AL, -127 
CMPXCHG RDX, RAX 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RAX] 
CMOVNP EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RAX] 
XOR EDX, -67 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
