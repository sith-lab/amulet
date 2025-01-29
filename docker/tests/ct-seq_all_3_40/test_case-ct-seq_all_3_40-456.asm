.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
XOR RBX, -60 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], AL 
CMP AX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDI] 
SUB DX, -30 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -96 
OR CX, 35 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
ADD DIL, 22 # instrumentation
MOVZX EDI, AL 
CMOVZ RSI, RDX 
CMP DIL, 101 
CMP AX, -10922 
SETLE DL 
JMP .bb_main.1 
.bb_main.1:
MOV DL, DL 
OR EDX, 16 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RCX] 
MOVZX RAX, DX 
SUB EBX, EDX 
MOV RBX, 5445927501918496658 
MOVSX ESI, BL 
MOV CX, 5139 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
CMOVP SI, CX 
INC RCX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 97 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST EAX, -1813448148 
CMOVNBE DX, CX 
SUB EAX, -732449837 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
SETS CL 
ADD RCX, 99 
CMOVNO DI, BX 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], EBX 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], 719814209 
SETNLE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
