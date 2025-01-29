.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EAX, DL 
TEST DX, DX 
ADC AX, -13750 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
ADD BX, 113 
CMOVS ESI, EDI 
SETNZ DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDX] 
MOV CL, 10 
CWDE  
OR AL, -82 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 96 
BSWAP EDX 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
MUL EDX 
NEG SI 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -700457174 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], 116 
CMOVZ RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DIL 
JNO .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
XADD DL, DL 
INC DI 
SUB RAX, -1831376650 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
OR RDI, -10 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RSI] 
ADD RSI, RDX 
CMOVP ECX, ESI 
CMOVNP RSI, RDI 
JMP .bb_main.5 
.bb_main.5:
TEST AL, 23 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 2 
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RAX] 
SETLE CL 
AND RBX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RSI] 
CMOVNLE RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
