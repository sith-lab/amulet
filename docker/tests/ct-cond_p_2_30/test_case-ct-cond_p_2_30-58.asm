.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EDI, EDI 
IMUL DI, SI, -10 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
CMOVNP RCX, RAX 
SBB EAX, -68 
MOV DX, 24337 
DEC CL 
CMOVNLE RBX, RDI 
CMC  
ADC AX, -23694 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
CMOVNB RDX, RSI 
MOV RAX, RDX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
IMUL DX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -97 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 59 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDI] 
MOV CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
CMOVP RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDI] 
MOVZX RAX, AX 
NEG AL 
CMOVLE EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], CX 
ADC ECX, EAX 
BSWAP RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
