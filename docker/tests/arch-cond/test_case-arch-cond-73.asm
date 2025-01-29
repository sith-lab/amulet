.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DIL 
SETB BL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RSI] 
MOVSX RCX, SI 
IMUL RDI, RDX 
SUB RDX, RCX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 57 # instrumentation
CMOVNL EAX, ESI 
SETO BL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -956754180 
SETNP DL 
SUB AL, -33 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], SI 
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
IMUL EDX, EDI, -44 
ADD DIL, -75 # instrumentation
CMOVL EDX, EBX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 66 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RSI] 
SUB SIL, -103 
NOT EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], BX 
JLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], -39 
ADC RCX, RDX 
XCHG BX, AX 
CMOVS DI, AX 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
SBB DL, CL 
IMUL RDX, RDX, -85 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], AL 
DEC ECX 
NOT RSI 
TEST EAX, 1167697350 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RBX 
OR RAX, 1660852861 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], -59 
CMP SI, SI 
SBB EAX, 1263074398 
AND RBX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 49 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
