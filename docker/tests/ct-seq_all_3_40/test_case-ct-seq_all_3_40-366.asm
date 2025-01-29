.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
SUB BL, -29 
CMP EDX, -113 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RDX 
INC RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
ADD RBX, RDI 
CMOVNBE EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
MOV BL, -76 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
MOVSX EDX, DL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -64 
MOV EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 102 
AND RSI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RSI] 
TEST RBX, RBX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], CL 
SUB BL, 28 
XCHG BL, SIL 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], ESI 
XCHG CL, BL 
SETB AL 
AND RDI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDI] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST RBX, RDX 
TEST RDI, RBX 
SUB RCX, RSI 
CMP AL, -37 
SETNBE DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -60 
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
