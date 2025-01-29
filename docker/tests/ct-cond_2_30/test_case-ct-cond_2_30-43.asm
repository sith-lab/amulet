.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -53 # instrumentation
LEA RCX, qword ptr [RSI + RCX] 
CMOVL DX, AX 
CMOVNO EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RBX] 
CLD  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], SI 
XCHG DI, DI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RBX] 
ADD CL, CL 
MOVZX EDI, CX 
SUB AX, -14378 
SBB DIL, 98 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RSI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL CL 
CMP DI, 60 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
CMP BL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RSI] 
XCHG RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 127 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RAX] 
MOVZX EDX, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RBX] 
LEA EDX, qword ptr [RDX + RDI + 50328] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -125 
CMP EAX, 40 
MOV SI, 7506 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
