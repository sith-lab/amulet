.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVSX EDX, CL 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
ADD AX, -17777 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], CX 
JNP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDX 
MOV ESI, -1955926558 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RBX 
AND RSI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
SUB RDX, RCX 
SBB SIL, 99 
AND RBX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RBX] 
XCHG ESI, EAX 
NEG BL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
ADD DIL, 107 # instrumentation
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -119 # instrumentation
CMOVO RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RCX 
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
NEG DIL 
CMOVNP AX, CX 
SBB SIL, 54 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -33 
CMOVNL DX, CX 
SBB DL, CL 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -88 # instrumentation
CMOVNBE EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDI 
STC  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
