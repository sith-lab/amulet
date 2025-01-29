.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 64 
CMOVLE RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
SUB AL, 121 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RAX] 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOV SIL, 12 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 3 
SBB SIL, SIL 
NEG EDI 
XADD AL, SIL 
AND RSI, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 98 # instrumentation
SETL CL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 114 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
SETNZ DIL 
CMOVS RBX, RSI 
OR AL, 91 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -105 # instrumentation
CMOVNBE BX, DX 
MUL CL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RSI] 
AND BX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], SI 
AND BL, CL 
MOVZX EDX, AL 
CMP DIL, 124 
SBB DI, -67 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 95 # instrumentation
SETNP DL 
SETS DIL 
SUB RCX, 0 
AND RDX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
OR CL, -97 
IMUL AL 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ESI 
TEST RSI, 2035477180 
IMUL DI, DI, -79 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
