.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDI 
MOVZX EDI, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
MOVZX EDI, SIL 
SBB RCX, 86 
MOV EDX, ESI 
INC EBX 
SUB DI, AX 
CMOVS EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RAX] 
CMOVNP SI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RAX 
ADD BL, -26 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ECX 
MOV EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -82 
SBB AL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDI] 
STC  
CMP AL, -52 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RAX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDX 
ADD DIL, 61 # instrumentation
ADC RSI, 58 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
INC RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
