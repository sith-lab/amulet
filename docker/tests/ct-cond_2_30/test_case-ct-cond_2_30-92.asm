.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -79 
MOVSX EAX, DX 
MOVSX EAX, CL 
CMP EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX] 
CMP RAX, 2063684841 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
CMOVS EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDI 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV AL, DL 
IMUL RAX 
SAHF  
IMUL EAX, ESI 
ADD EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
MOVZX ESI, CL 
CMOVB ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -45 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -15 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], CX 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -83 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDI] 
ADD BL, -73 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 82 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
