.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XCHG RDX, RBX 
SAHF  
MUL SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 51 
MOV DX, BX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RAX] 
CMOVNZ RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], AX 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
ADD SIL, 33 # instrumentation
CMOVBE AX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RCX 
IMUL EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX] 
ADD DIL, -95 # instrumentation
MOV RDX, -8055754319164082739 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX EDI, BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
OR EDX, 1 # instrumentation
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
INC SIL 
CMOVNO RAX, RBX 
SUB SI, SI 
AND RBX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
