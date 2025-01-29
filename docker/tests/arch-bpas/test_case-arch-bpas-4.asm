.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR SIL, 40 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -96 
SBB CL, 113 
NEG DL 
CMOVO DX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -1 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -11 
SETLE DL 
ADC EAX, -650681661 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
SETNL AL 
ADD RSI, -51 
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
ADD CL, -43 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], AX 
ADD SI, -69 
SETNZ BL 
CMOVNO ECX, EDX 
CMP BL, 107 
MOVSX CX, DIL 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], SIL 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
XOR EAX, -1702703038 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], ESI 
CMOVP ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
CMOVLE SI, DI 
SBB ESI, 116 
CMPXCHG RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], DI 
IMUL EDX, EBX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
CMOVNP EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
AND AX, 30326 
SETBE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
