.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -93 # instrumentation
CMOVL ESI, EDI 
ADC AX, -29377 
SUB AL, -59 
CMOVLE RDX, RSI 
NEG CL 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 67 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
STC  
CWD  
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
CMP AX, 25264 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EDX 
SBB BL, DL 
CMOVNP BX, AX 
XCHG CL, AL 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOV SIL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDI] 
ADD RAX, -52789526 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
CMOVNBE DI, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EBX 
CMOVB SI, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 92 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -89 
XCHG EDI, EAX 
XCHG CL, DL 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 53 
XCHG DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
