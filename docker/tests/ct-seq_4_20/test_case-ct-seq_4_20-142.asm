.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 77 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -62 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -51 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ECX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 58 
JNO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVSX EDX, DX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX], -36 
ADD DIL, 19 # instrumentation
MOVZX EDX, CL 
MOVZX RAX, CL 
CMOVNP RDI, RCX 
JMP .bb_main.2 
.bb_main.2:
SUB AL, 2 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
CMP DIL, 3 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RBX] 
ADD SIL, 63 # instrumentation
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDX] 
SUB AL, 41 
CMP RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 91 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
