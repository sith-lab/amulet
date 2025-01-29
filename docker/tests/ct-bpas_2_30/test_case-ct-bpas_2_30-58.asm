.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RBX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -57 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -4 
XCHG RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RAX] 
DEC EAX 
XCHG CL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
MOVSX DX, SIL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -2 
CWD  
SUB EAX, 424992130 
STC  
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RCX] 
CWD  
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RSI] 
INC EBX 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DX 
CMP BL, -105 
ADC DIL, -33 
MOV RAX, 1707166410630406966 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
DEC RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -34 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
