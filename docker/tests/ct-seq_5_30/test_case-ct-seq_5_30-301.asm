.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -83744669 
IMUL CX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DX 
CMOVNP AX, CX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 33 # instrumentation
SBB CL, -43 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RCX] 
CMOVLE RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DIL 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 51 # instrumentation
CMOVNS CX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI], 10 
ADD SIL, 28 # instrumentation
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
SBB SI, -66 
AND RBX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RBX] 
ADC AX, 16954 
DEC RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
ADC SI, DX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD RAX, -45 
CMOVZ RBX, RAX 
SUB DIL, 93 
ADC RAX, -1024700809 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
