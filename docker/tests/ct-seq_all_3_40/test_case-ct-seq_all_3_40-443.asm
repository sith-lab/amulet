.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 29 # instrumentation
ADC EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
SUB RDX, RAX 
CMPXCHG EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], AL 
SBB CX, SI 
ADC BL, -92 
SETNLE CL 
MOV RCX, RDI 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DL 
CMOVB RDI, RBX 
AND DIL, BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
CMOVB ECX, EDI 
SBB BL, -93 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], AL 
JMP .bb_main.2 
.bb_main.2:
XOR SIL, CL 
SUB AL, -102 
TEST DX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], -104 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 115 
ADC AX, AX 
TEST DX, -22021 
TEST RAX, -719617044 
AND RDX, -125 
AND RBX, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RAX 
SUB BL, -63 
CMOVB CX, BX 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
CMOVS EDI, EDI 
XCHG SIL, SIL 
XCHG BX, AX 
TEST AL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
