.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], ECX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
CMP DL, -23 
SBB AL, 96 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
ADD EAX, -1873179749 
CMP EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RBX] 
ADD RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 44 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -30 # instrumentation
MOVSX CX, BL 
CMOVNB EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
MOVSX EDX, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 24 
ADD EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RAX] 
CMP CX, 56 
MOV AL, BL 
IMUL RDX, RAX, -49 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
CMOVB RDI, RCX 
MOVSX EDI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
