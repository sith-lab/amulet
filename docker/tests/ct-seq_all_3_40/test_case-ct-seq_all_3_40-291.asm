.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -94 # instrumentation
SETZ BL 
NOT BX 
ADC AL, -45 
CMOVNBE ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDX] 
XOR DIL, 55 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -122 
MOVZX EBX, DL 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
OR AL, CL 
AND RDX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDX] 
CMOVNBE DX, AX 
CMOVNZ RSI, RSI 
JMP .bb_main.1 
.bb_main.1:
OR EDI, ESI 
SETNS DL 
CMOVZ RBX, RSI 
IMUL AX 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
CLD  
SUB EAX, 93 
ADC BX, CX 
SETNLE SIL 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
ADD SIL, -24 # instrumentation
ADC EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], AL 
CMP CL, -77 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
SETNB CL 
ADC RDX, 49 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RAX] 
NOT BL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
CMPXCHG DIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
