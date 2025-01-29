.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC BL 
MOVSX SI, BL 
CMOVLE DX, BX 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, -90 # instrumentation
SBB RAX, -1790140807 
CMP CL, CL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 56 
AND RCX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RCX] 
MOV ESI, 2125062890 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
JMP .bb_main.3 
.bb_main.3:
NEG SI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDI 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EDX 
INC EBX 
CMP AX, -26596 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 17 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DI 
CMOVZ EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 19 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -89 # instrumentation
SBB EDX, -73 
AND RAX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RAX] 
MOVZX ESI, BL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EBX 
OR CX, 0b1000000000000000 # instrumentation
BSF DI, CX 
ADD SIL, 68 # instrumentation
MOVZX ESI, BL 
CMOVBE EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
