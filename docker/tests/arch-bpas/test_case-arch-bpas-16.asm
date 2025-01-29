.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RAX] 
XOR RDI, RCX 
SBB AL, -45 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RDI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDI] 
CMOVNL RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RSI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RBX] 
TEST AX, 18918 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], CL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -119 # instrumentation
SETP DL 
CMPXCHG DL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RSI] 
SETS CL 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 120 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDX] 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XOR EBX, 95 
XCHG EBX, EAX 
SUB SIL, DIL 
OR DIL, -67 
XOR DL, CL 
JMP .bb_main.3 
.bb_main.3:
XOR RAX, 553313617 
SETNLE DL 
SETP BL 
STC  
SUB RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 33 
IMUL RSI, RAX 
ADD SIL, 20 # instrumentation
CMOVNS RBX, RDX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDX 
SUB DL, 62 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV EDI, 1895576522 
AND AL, 109 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], 124 
AND AX, -16000 
SUB AL, 1 
CMOVL AX, SI 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
