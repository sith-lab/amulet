.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -81 
ADD RAX, 1023386268 
IMUL EDI, EBX 
SUB DL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
CMOVNZ EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDX] 
ADD SIL, AL 
CMOVS RCX, RCX 
CMOVL DX, AX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 124 
ADD DIL, -62 
CMOVLE ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
ADC EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -1298738525 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD CL, BL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EAX 
IMUL DI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RSI] 
MUL RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
CMOVNL DX, CX 
XCHG RSI, RSI 
MOV BL, BL 
CLC  
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
