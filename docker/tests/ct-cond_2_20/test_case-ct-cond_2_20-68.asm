.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -53 # instrumentation
SBB RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -39 
MOVSX EBX, SI 
ADD DX, BX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -92 
AND RCX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RCX] 
ADD BL, BL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -35 
MOVSX EDI, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], SIL 
CMOVNLE ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
