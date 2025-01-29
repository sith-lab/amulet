.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DX, SI 
CMP SIL, CL 
CMOVL EBX, ESI 
CMP RAX, 1895691608 
CMP AX, 30884 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -32 # instrumentation
CMOVL RBX, RDI 
CMP RAX, 907607701 
CMP AX, 4432 
DEC DIL 
ADD EBX, 43 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], BX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDI] 
SUB EAX, 764338437 
CMOVBE ECX, ECX 
ADD EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], BX 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
DEC RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 32 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], CX 
INC RDX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 5 # instrumentation
LAHF  
AND RCX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
MOVZX EBX, AL 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RBX 
DEC AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
