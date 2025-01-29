.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
MOVSX ESI, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], DX 
CMOVZ RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -120 
SUB SIL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ECX 
CMOVS RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], CX 
AND RCX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RCX] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RCX] 
DEC EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 56 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RSI] 
CMOVNBE ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
