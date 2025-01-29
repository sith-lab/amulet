.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 1 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
XCHG BL, DL 
SETNBE CL 
LAHF  
JL .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], 54 
IMUL RBX, RDI, -104 
AND EAX, -1862808469 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DX 
MOVZX DI, BL 
ADD RBX, RDI 
NOT RDI 
ADC RDX, 11 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], DX 
SUB EAX, -75 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
CMPXCHG RAX, RBX 
XADD BX, AX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
CMOVNZ RDX, RDX 
JMP .bb_main.3 
.bb_main.3:
NEG AL 
XOR DIL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
ADC AL, 86 
JMP .bb_main.4 
.bb_main.4:
ADD BX, -44 
CMP RAX, 65 
SETL CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], CX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
IMUL RAX, RSI, 96 
JMP .bb_main.5 
.bb_main.5:
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
ADD DIL, 87 # instrumentation
MOVZX RAX, CX 
XCHG RBX, RAX 
CMOVNBE BX, SI 
AND RCX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -23 
OR EAX, -589103132 
INC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
