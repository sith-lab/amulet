.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
SAHF  
SUB BL, DIL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RAX 
ADD DIL, -58 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -1082 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
CMOVL CX, CX 
BSWAP EDI 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -32 
CMP SIL, DL 
MOVSX RBX, SIL 
CMOVO DX, SI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 74 # instrumentation
CMOVNZ DI, SI 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDI 
SBB RSI, RAX 
MUL EDX 
ADD SIL, -71 # instrumentation
CMOVNBE EDI, ECX 
INC RSI 
CMOVNZ SI, DX 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
CMOVNZ RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], CX 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -35 # instrumentation
CMOVNL AX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
CMOVS RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
