.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RSI, RAX 
CMOVNZ RAX, RDX 
SUB SI, 30 
MOVSX EAX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RCX] 
SUB DX, 5 
SUB DIL, -53 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 27 
MOVSX RAX, DI 
MUL ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
TEST DL, BL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RBX 
MUL ECX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 24 # instrumentation
SBB AX, -15820 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EDI 
MOVSX RSI, CL 
TEST AL, -75 
NEG BX 
CMOVNZ RDX, RBX 
MUL DI 
AND RSI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
LEA CX, qword ptr [RSI] 
SBB DIL, 60 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 92 # instrumentation
CMOVNBE SI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDI] 
SETNLE DIL 
SBB AX, -16248 
SETS DL 
ADC DL, 69 
CMOVS RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
CMP SIL, 68 
SBB CX, 121 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
