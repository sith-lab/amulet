.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
CMOVNP SI, DI 
SBB CX, -89 
ADC SIL, -126 
CMOVNS EAX, ESI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -91 # instrumentation
ADC AX, -14188 
SUB DL, AL 
IMUL CL 
ADD SIL, -77 # instrumentation
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RDI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RSI] 
MOV DL, 37 
MUL RDI 
CMOVNB RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RDI] 
MUL RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -74 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX], -79 
XCHG AX, SI 
CMP ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -54 
CMOVNB DI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 62 
JMP .bb_main.4 
.bb_main.4:
MUL ECX 
ADD SIL, 61 # instrumentation
CMOVNL RBX, RCX 
INC CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -51 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
