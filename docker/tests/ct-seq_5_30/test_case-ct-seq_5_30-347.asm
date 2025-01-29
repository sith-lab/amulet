.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -58 # instrumentation
CMOVNZ RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDI] 
IMUL DX, DX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDI] 
MOVZX ESI, AX 
XCHG CL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RAX] 
ADD EAX, -1037511095 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDI 
SUB RAX, 2057198958 
JMP .bb_main.3 
.bb_main.3:
MOVSX EAX, SIL 
CMP AX, 17542 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
MOVZX EDI, AL 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
IMUL EDI, ESI, -5 
ADD SIL, -55 # instrumentation
CMOVNL DI, SI 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
STC  
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DX 
CMOVNLE RDI, RDI 
XCHG DI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
