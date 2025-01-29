.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL DL 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RCX 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
MOVSX RSI, DIL 
XCHG SI, AX 
JNLE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, -95 # instrumentation
CMOVNO RDX, RDI 
CMOVNS RBX, RDI 
INC DIL 
AND RDX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDX] 
SUB AL, 122 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDX] 
DEC ECX 
MOVSX EAX, AL 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDI 
ADC RDX, RSI 
CMOVS EDI, ESI 
ADC ESI, -58 
XCHG EDI, EDI 
CMC  
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
JNL .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
MOVZX EDI, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
CMOVP BX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
DEC DL 
MOV CL, -29 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDI] 
ADC CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
