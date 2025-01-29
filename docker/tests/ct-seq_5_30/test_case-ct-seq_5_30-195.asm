.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDX] 
CMOVB EDI, EBX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DIL 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDX] 
CDQ  
INC BL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], SIL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RAX] 
MOVSX EBX, DL 
ADD RCX, 127 
AND RBX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RBX] 
MOV RAX, RCX 
NEG RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
CMOVP EDX, EDI 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], DX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 47 
MOV EDX, -61168489 
XCHG ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], -80 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDI 
AND RSI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
