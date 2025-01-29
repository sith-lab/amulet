.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
MOVZX ECX, DI 
LAHF  
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
LEA ESI, qword ptr [RDX + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
IMUL ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -79 
CMOVNS ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RCX] 
ADC BX, -19 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -22 # instrumentation
MOVZX EAX, AX 
CMOVBE DX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
DEC RCX 
SBB DL, 76 
JZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
SBB RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RDX 
CBW  
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
IMUL ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 43 
STC  
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -17 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
