.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 93 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
ADC CL, BL 
CMOVNO ESI, EDI 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG BX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DI 
XCHG ECX, EAX 
IMUL RSI 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX], 122 
JMP .bb_main.3 
.bb_main.3:
IMUL BX, CX, 37 
AND RDI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
ADD RDX, RDX 
ADD ECX, -18 
STD  
AND RDI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RCX] 
MOVSX BX, AL 
JO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, 80 # instrumentation
STD  
CMOVP RBX, RDI 
NEG RCX 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
IMUL DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
OR DL, 1 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
