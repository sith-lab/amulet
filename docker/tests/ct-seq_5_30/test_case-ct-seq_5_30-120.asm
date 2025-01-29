.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DI 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -16 # instrumentation
ADC EDX, 48 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RDI] 
IMUL EBX, ESI 
ADD SIL, -62 # instrumentation
CMOVL RCX, RAX 
ADD ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
IMUL EBX 
IMUL ESI, EBX, -26 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
LEA EAX, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDI 
SUB RAX, 474004611 
ADD AL, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
ADC EAX, -251897990 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
IMUL SI, AX 
SBB EAX, -1214858214 
SAHF  
NEG AL 
MOVZX RCX, SI 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
