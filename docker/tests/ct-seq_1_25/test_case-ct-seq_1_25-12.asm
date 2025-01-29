.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -124 # instrumentation
SBB BL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDX 
CMP AL, -128 
OR AX, 0b1000000000000000 # instrumentation
BSF CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RSI] 
MOV RCX, -1502361113196907948 
CMP RAX, -1178931579 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
CMOVP EAX, ESI 
MOV AX, 17198 
SUB CL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], CX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -99 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -28 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -103 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RBX] 
SUB EDX, 27 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
