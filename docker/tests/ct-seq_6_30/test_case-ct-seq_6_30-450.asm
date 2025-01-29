.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
SUB AL, 21 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
ADD DIL, -80 # instrumentation
CMOVO RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
SUB EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
MOV AL, -40 
AND RAX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
ADD EBX, 77 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RBX 
MOVSX EDX, AX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
SUB AX, -29868 
CMP RAX, 1486271308 
SUB EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
JMP .bb_main.5 
.bb_main.5:
NEG BX 
STD  
AND RSI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RSI] 
ADC AX, -20794 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
