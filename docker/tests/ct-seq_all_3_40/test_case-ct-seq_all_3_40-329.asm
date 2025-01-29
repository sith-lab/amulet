.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], ECX 
SUB DL, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], 12 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR CL, -73 
NOT SIL 
CMOVLE RCX, RDX 
IMUL RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
TEST SIL, 106 
AND RBX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RBX] 
SETNO DL 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
MOV EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -1906703774 
TEST SIL, 81 
CMPXCHG RBX, RDI 
IMUL DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDX 
ADD AL, 34 
SETO AL 
MOVZX DI, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
SETS CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RBX 
AND RDI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDI] 
AND RDI, 15 
SUB CL, DL 
CBW  
AND AL, -17 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RBX] 
XCHG RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
