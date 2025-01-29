.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RSI] 
CMP RCX, RAX 
ADD AL, 83 
LEA ESI, qword ptr [RAX] 
CMOVNLE DI, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 59 
CMOVNL EAX, ECX 
CMOVNL ESI, EBX 
SUB RBX, 84 
SUB SIL, 40 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
CMOVZ CX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
ADC RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 44 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -73 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
CMOVNLE EDX, EAX 
IMUL DI, DX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
MOVZX EBX, BL 
CMOVLE DI, SI 
MOV ECX, -1910386404 
CMOVNO ECX, EDX 
SUB CL, AL 
CMP AX, 65 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
