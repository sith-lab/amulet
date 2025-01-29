.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RAX] 
SBB AX, -12040 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -86 
AND RCX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
CMOVS RDX, RDI 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
MOVZX CX, AL 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDX] 
CMOVNS EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 32 
SBB CL, -66 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
