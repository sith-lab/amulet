.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RCX 
XCHG RSI, RDX 
AND RBX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RBX] 
NOT BL 
JZ .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
IMUL CX, BX, -37 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -30 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
XOR ESI, EDI 
NEG CX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
SBB EAX, -540625534 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], -90 
XOR AL, -78 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], 102 
JMP .bb_main.4 
.bb_main.4:
OR RAX, -1038601935 
MOV RDX, -8049350531137041799 
SETS CL 
CMP AL, -40 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], -10 
CBW  
SETZ CL 
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], -55 
SUB EAX, -662123415 
SBB DIL, -26 
CLC  
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RCX] 
SETNL DL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -7 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDX] 
OR BX, 77 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RSI 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
