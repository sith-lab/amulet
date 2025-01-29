.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD CX, DX 
AND RAX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
CMOVNS DI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -37 
SBB RBX, RSI 
INC EDX 
ADD CL, 42 
XCHG CX, AX 
JMP .bb_main.2 
.bb_main.2:
MOVSX ESI, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -123 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RAX] 
MOV ESI, 1162032799 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
JMP .bb_main.3 
.bb_main.3:
DEC EAX 
XCHG RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], BL 
STC  
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -85 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 105 
ADD SIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 97 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RAX] 
CMOVNZ AX, CX 
LEA RBX, qword ptr [RSI] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
