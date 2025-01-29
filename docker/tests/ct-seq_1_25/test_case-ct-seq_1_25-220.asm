.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -66 # instrumentation
ADC RSI, 81 
ADD DX, SI 
MOVZX EBX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RAX 
CMOVBE EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
CMOVZ RDX, RDX 
XCHG AL, AL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 126 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RAX] 
MOV DIL, 81 
MOVZX RAX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
CMOVNP CX, CX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RBX 
ADD DIL, 16 # instrumentation
ADC AX, DI 
STC  
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -19 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 91 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
