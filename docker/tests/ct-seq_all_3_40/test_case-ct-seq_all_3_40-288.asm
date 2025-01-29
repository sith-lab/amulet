.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 93 # instrumentation
CMOVB BX, CX 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDX] 
ADD DL, 8 
ADD RCX, RDX 
CMP EDX, -105 
XADD RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
AND BL, CL 
SBB DX, CX 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RBX 
DEC RBX 
CMOVLE RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX], -52 
CMP DX, -63 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 34 
AND RBX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDI] 
CMOVBE RAX, RDI 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
ADC RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -121 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG BL, CL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDX] 
ADD RAX, -1246636191 
ADD AL, -116 
SETNP SIL 
CMOVL EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ECX 
ADC RAX, 2051823759 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EDX 
XOR RBX, 116 
ADC DI, 70 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
SETNLE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
