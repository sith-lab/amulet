.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RCX] 
CMPXCHG ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RDI] 
DEC AX 
CMP EAX, 1648507562 
CMP SI, 70 
TEST DX, -27689 
SETP DL 
SUB DIL, -73 
SETNZ AL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -128 # instrumentation
SETNS AL 
CMOVNP EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDI], CX 
CMOVLE DX, CX 
OR CX, CX 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
SETNO DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RAX] 
CMOVNS ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -65 # instrumentation
CWD  
SETP CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RCX] 
SAHF  
CMP RAX, -1341608101 
OR EAX, -1142654973 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], -582166605 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR CX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDI] 
MUL BL 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -75 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
SETO BL 
IMUL RDI, RDX, 43 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
