.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT ESI 
TEST RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -78 
MUL BL 
ADD SIL, -71 # instrumentation
SETB AL 
CMOVLE DX, BX 
CMP AL, CL 
AND RCX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RCX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RBX] 
ADC RSI, RAX 
ADD AL, CL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOV RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
XADD RSI, RBX 
MOV DIL, -71 
OR RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RSI] 
SETNZ AL 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], -16 
XADD BL, BL 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
SETL AL 
AND RBX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RBX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RBX 
SBB DIL, -110 
XADD DL, DL 
ADC RAX, -1069416792 
AND EAX, -24 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RAX] 
MOV BL, -69 
CMOVZ BX, SI 
AND RDX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDX] 
CMOVB RBX, RAX 
SETNS SIL 
SETNLE DL 
SUB AL, 114 
IMUL RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
