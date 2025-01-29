.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
XCHG CL, BL 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
ADC ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
CMOVO RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
SBB EAX, EBX 
JMP .bb_main.1 
.bb_main.1:
CLD  
MOVSX EDX, AL 
MOVSX AX, DL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 49 # instrumentation
ADC RAX, 1502825368 
NEG BX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RAX] 
ADD SIL, 40 # instrumentation
CMOVBE BX, DX 
CMP RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -47 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -92 
ADC BL, BL 
CMOVS ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
MOVSX RSI, CL 
AND RDX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RDX] 
SBB DL, AL 
CMP AL, 47 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
