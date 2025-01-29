.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 8237 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -97 
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EAX 
CMP EAX, 89 
IMUL RBX, RDX, 42 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDX] 
MOVZX AX, BL 
SBB RCX, RBX 
CMOVNS BX, AX 
CMOVB DI, DX 
SBB SI, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RAX] 
IMUL ESI 
ADD DIL, -94 # instrumentation
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DL, -85 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 18 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDX] 
MOVSX RBX, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 30 
CMP ESI, 82 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
