.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -1 # instrumentation
CMOVP ECX, EDX 
SUB CX, AX 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
MOVZX RAX, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RBX] 
DEC CL 
CMOVNLE RDI, RDI 
CMOVZ RSI, RSI 
MOV BL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -80 # instrumentation
CMOVS EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
CBW  
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
IMUL AX, DI, -78 
SBB SIL, 84 
CMOVNO AX, SI 
ADC AX, 13968 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
CMOVNO RDX, RDI 
CMOVZ RDI, RSI 
SUB AX, -6017 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RAX] 
ADD AX, -6423 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
