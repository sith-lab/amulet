.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 113 # instrumentation
ADC RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
SBB EDX, -50 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
DEC AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -22 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -1611634335 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 72 
ADC AL, -24 
SUB DI, 58 
CMOVNBE EAX, EDI 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
INC CX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
CMOVNBE EAX, ECX 
MUL SIL 
ADD DIL, 90 # instrumentation
CMOVL SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
