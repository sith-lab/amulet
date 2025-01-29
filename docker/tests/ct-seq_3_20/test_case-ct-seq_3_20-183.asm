.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], AX 
IMUL RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], CX 
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
MUL SIL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RCX] 
SUB EAX, EDX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 79 
AND RDI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDI] 
MUL RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -10 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
