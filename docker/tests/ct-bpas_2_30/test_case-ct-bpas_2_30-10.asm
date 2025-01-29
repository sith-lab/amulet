.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
DEC EDX 
ADD RDI, 5 
SUB EBX, -42 
ADD DIL, 1 
SUB AX, 20525 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RBX] 
CMP RAX, RDI 
CMOVS EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RDI] 
CMOVNS EDX, ESI 
ADC SIL, 64 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RSI 
SUB AX, 22728 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], SI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
ADD DIL, 80 # instrumentation
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDX 
MOV AL, 3 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
CMOVBE EDX, EBX 
CMP RAX, -1260485434 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RBX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
