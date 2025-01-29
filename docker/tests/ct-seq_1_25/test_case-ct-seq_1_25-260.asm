.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RSI] 
ADC SIL, -63 
SBB ECX, -110 
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI], -103 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -78 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -71 
CMP ESI, EDI 
MUL ECX 
SBB EBX, -95 
SBB BL, SIL 
ADC AL, 18 
ADD EAX, -1141545842 
MUL SI 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
CMOVNP EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
NEG RBX 
INC CL 
IMUL BX, BX, 96 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
CMOVL SI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDI] 
ADD CL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
