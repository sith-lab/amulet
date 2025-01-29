.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP EDX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
IMUL RBX, RDI, -32 
ADC EAX, 590169729 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
ADD RAX, -4844764 
OR CX, 0b1000000000000000 # instrumentation
BSF CX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 88 
AND RCX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RCX] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX CX, BL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
CMP EDX, 121 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDI 
SBB RAX, -983256903 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RAX] 
CMOVO BX, BX 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
ADD RAX, -673956962 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 10 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -48 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RAX] 
SUB EDI, -65 
CMC  
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
