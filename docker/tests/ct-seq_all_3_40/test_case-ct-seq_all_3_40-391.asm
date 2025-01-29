.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -86 
SETNB BL 
CMOVP CX, DI 
MOV BL, -84 
ADC AX, 4807 
XADD AL, BL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDX] 
CMP SI, -102 
XOR AL, -2 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -555649895 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EDI 
TEST RBX, 1963592094 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 57 # instrumentation
ADC DL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RBX] 
SETNP SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RSI 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND CL, AL 
CMOVO RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DI 
CMOVS EAX, EDI 
JMP .bb_main.2 
.bb_main.2:
ADD EBX, EBX 
CMOVS EDX, EAX 
MOVSX ECX, SI 
AND RDX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDX] 
SUB AX, 18476 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 89 
SUB ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
IMUL RAX, RSI 
XCHG EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -39 
SETNBE CL 
SETB SIL 
IMUL SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
