.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD CX, 38 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RSI] 
XCHG RDX, RDI 
BSWAP RDX 
CMOVNO DX, DX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -604026742 
CMP SI, 54 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
MUL EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RSI] 
ADD AL, -19 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDI 
CMOVZ AX, SI 
MOVZX SI, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], CX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD BX, DI 
CMOVO EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 7 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], BX 
MOVZX AX, BL 
ADC DL, AL 
CMOVNLE ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DX 
MOVSX RCX, SIL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
