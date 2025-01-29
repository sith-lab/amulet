.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RBX] 
ADD SIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -91 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 54 
MOV RDX, RDI 
MOV BL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -115 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -33 
MOVZX RCX, AX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 28 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
CMOVZ EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
NEG SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
OR EDX, 1 # instrumentation
ADC CL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 5 
ADD AL, DL 
CMOVL RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
