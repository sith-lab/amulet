.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EBX, AL 
ADD ESI, ECX 
CMOVNL DI, CX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -97 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -79 # instrumentation
LAHF  
IMUL AL 
DEC DL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 102 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
CMOVNS EDI, EDX 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV DX, -25437 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RSI] 
BSWAP EDX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
OR DX, 0b1000000000000000 # instrumentation
BSF DX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RAX] 
ADC RAX, -809003091 
XCHG RDX, RSI 
ADD DIL, -25 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDX], -10 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -9 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
MOVZX EDX, CL 
CMP ECX, 51 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -92 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
