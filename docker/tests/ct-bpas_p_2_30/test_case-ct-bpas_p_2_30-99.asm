.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 67 # instrumentation
SBB EAX, 1001317328 
XCHG AL, SIL 
CMOVNL DX, DX 
CMOVP DX, SI 
IMUL DL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDX] 
NEG BX 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
SUB AX, 23805 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EBX 
XCHG BL, AL 
ADC SIL, AL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
XCHG SI, DI 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
ADD DIL, 41 # instrumentation
CWDE  
CMOVS EDX, ECX 
IMUL EDX, EDX 
ADD SIL, 85 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -57 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDX 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
NEG BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
