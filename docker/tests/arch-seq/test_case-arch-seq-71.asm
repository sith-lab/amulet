.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -6 # instrumentation
CMOVO AX, DI 
SETNO BL 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], EBX 
DEC ESI 
CMOVNS RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RDX] 
MOV ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], -66 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDX, -58 
SETNP SIL 
SUB RAX, 668680741 
CMP ESI, -123 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -90 
SETL DL 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
ADD CL, SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
OR EDX, 110 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -102 # instrumentation
SETLE DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RCX 
CMOVNP SI, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
OR DX, 1 # instrumentation
CMOVLE RDI, RDX 
MOV DX, SI 
ADD AL, DL 
AND RBX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
CMP SIL, DL 
CMOVNP RBX, RAX 
ADC ESI, -95 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
