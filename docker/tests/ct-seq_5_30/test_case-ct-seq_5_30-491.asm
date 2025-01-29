.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RBX] 
MOVSX SI, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -91 
NEG EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EDI 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
ADC AX, 5867 
XCHG RCX, RBX 
SUB BL, 23 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DIL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -95 
ADD RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -39 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RDI] 
NEG CL 
INC CL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 58 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -300450869 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RSI] 
XCHG ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RSI] 
ADD EAX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
