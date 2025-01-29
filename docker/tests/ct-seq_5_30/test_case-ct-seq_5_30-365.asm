.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDI] 
CMC  
SUB AX, -20178 
CMOVB ESI, ECX 
CMP ESI, 100 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 31 # instrumentation
MOVZX DI, AL 
CMOVBE EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
AND RCX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RSI], -83 
IMUL RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 17 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 68 
SUB RDI, 98 
CMP RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RBX] 
ADD DIL, 25 # instrumentation
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 56 # instrumentation
SBB DX, 123 
MOVSX BX, AL 
CMOVZ CX, SI 
CMOVS DX, DI 
ADC SIL, -54 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 89 # instrumentation
CMOVNS ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDI 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
