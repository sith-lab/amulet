.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -114 # instrumentation
SBB RAX, -290309419 
INC AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -62 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], -105 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RCX] 
SETNL BL 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -51 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RCX] 
SETNS AL 
SETBE DL 
MOV BL, CL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR AL, AL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
MOV RCX, -7410480975959359266 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], 13 
ADD AX, DX 
MOV DX, 6184 
ADD RDX, 125 
ADD EAX, 1575077515 
CMOVL EAX, EDI 
ADC CL, AL 
MOVSX RAX, BX 
SBB DIL, -13 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], -1 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 54 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
AND CX, -19 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], CL 
MOV RDI, RDI 
LEA DX, qword ptr [RDI + RBX + 44532] 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
ADD DIL, 92 # instrumentation
SETS CL 
MOVZX RAX, BX 
AND RBX, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RBX] 
OR EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], DL 
TEST RCX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
