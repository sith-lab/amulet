.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP CL, -71 
SAHF  
CMOVNP ECX, ESI 
XCHG RCX, RAX 
ADD AL, -119 
AND RCX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RCX], -85 
ADD SIL, -58 # instrumentation
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -32 
CMOVL CX, SI 
JMP .bb_main.2 
.bb_main.2:
XCHG DL, DIL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -56 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], CX 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
INC CL 
DEC EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 1359187610 
MOVZX EAX, SI 
AND RCX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
