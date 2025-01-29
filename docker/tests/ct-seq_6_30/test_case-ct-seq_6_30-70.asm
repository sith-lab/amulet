.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
XCHG ESI, ESI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 56 # instrumentation
CMOVS EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
MOVZX BX, BL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -8 # instrumentation
CMOVNB EDI, EDX 
XCHG RSI, RAX 
ADC DIL, DL 
SUB ECX, -47 
ADD AL, -6 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 18 
ADD AX, 32583 
IMUL ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -72 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
JRCXZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], CL 
MOVSX CX, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDI] 
IMUL CX, BX, -12 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EBX 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
INC DL 
ADD AL, BL 
CMOVBE CX, SI 
CMOVNB RBX, RAX 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RCX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RCX] 
MUL EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
