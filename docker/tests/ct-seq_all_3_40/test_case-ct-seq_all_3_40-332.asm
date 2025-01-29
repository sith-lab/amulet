.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 37 
CMOVB AX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EAX 
SETNS DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RCX] 
XOR DL, 102 
ADC AL, DL 
MOVZX ECX, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 98 
CMP RCX, 73 
CMOVNBE ESI, ESI 
CMOVS ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 123 
ADD AX, 70 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 3 
IMUL EAX 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DL 
ADD ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 102 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RCX] 
MUL DL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 61 # instrumentation
CMOVNP EBX, ESI 
SBB DIL, -117 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD DIL, -46 # instrumentation
CMOVNB DX, BX 
AND RCX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RCX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RCX] 
XOR EAX, 1645888210 
AND RBX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RBX] 
SUB CX, DX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -84 
XADD SIL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], 30 
DEC AL 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
SETNB AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
