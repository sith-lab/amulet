.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
AND RBX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 36 # instrumentation
CMOVO DX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 65 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
JMP .bb_main.2 
.bb_main.2:
SUB DIL, 105 
MOV BL, 16 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
SUB EAX, -6 
AND RDX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
NEG AX 
CMOVNLE RCX, RAX 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -97 # instrumentation
STD  
CMOVZ DX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
CMOVZ CX, SI 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], BX 
SUB DL, -60 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EAX 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP CX, -66 
SBB EAX, 2147335883 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RSI] 
SUB RDX, RAX 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 44 
SUB BL, 49 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -39 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -25 
CMOVS AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
