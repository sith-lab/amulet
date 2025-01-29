.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 100 # instrumentation
ADC DIL, 6 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
CMOVBE EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
OR SIL, 52 
SETNL DL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
SAHF  
MOVZX RBX, DL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC CL 
CMOVNLE CX, SI 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], BX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DIL 
MOV CL, -123 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
ADD SIL, 109 # instrumentation
SETNP BL 
IMUL EDI, ESI, 50 
SUB SIL, AL 
CMPXCHG ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDI] 
XOR SIL, 111 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 75 # instrumentation
SETLE CL 
AND RSI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDI] 
SBB EAX, -1977325480 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RAX] 
XOR RAX, 1669726586 
XOR AL, 101 
CMPXCHG SIL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RCX] 
SETNBE AL 
CMP RBX, -109 
SBB AX, -22263 
MOV AL, AL 
OR EAX, 0 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
