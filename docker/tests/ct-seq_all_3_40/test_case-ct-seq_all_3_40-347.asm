.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL AX, DX, 50 
ADD SIL, -121 # instrumentation
SETNP BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 127 
ADC RSI, RBX 
CMOVL ECX, ECX 
IMUL AX, CX, -79 
CMP EAX, 85255604 
CMOVBE RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RBX] 
CMOVB RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDX] 
CMP AX, 17636 
INC RBX 
SETP CL 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -120 # instrumentation
CMOVNZ BX, BX 
SBB ECX, EBX 
CMP DI, CX 
IMUL EDX, ESI, -119 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
CMP DI, 91 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -110 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RBX] 
MOV EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RCX] 
DEC CL 
MOVSX EDI, AX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV CX, AX 
LEA DX, qword ptr [RCX + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 89 
MOV RBX, 8504192581901454055 
XOR RCX, -18 
MOVSX RDI, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 37 
XADD SIL, AL 
SETZ AL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -55 
SUB AX, 9118 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
