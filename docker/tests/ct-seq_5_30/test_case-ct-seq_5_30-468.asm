.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DIL, -37 
SUB AX, 20968 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RAX] 
IMUL ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RBX] 
MOVSX EBX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -44 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RDX 
MOV CX, DX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], DX 
ADD AL, 85 
JMP .bb_main.3 
.bb_main.3:
MOVSX ESI, CL 
MOV DX, DI 
MOVZX ESI, SI 
JMP .bb_main.4 
.bb_main.4:
MOVSX EBX, DL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -39 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
CMP DL, AL 
ADC EAX, -18 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 40 
MOV SI, 25479 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
CMOVS ECX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
