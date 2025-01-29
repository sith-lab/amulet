.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 37 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 88 
AND RBX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 17 
MOVSX ESI, CL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -125 
ADC RAX, 275601421 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 66 # instrumentation
CMOVO EDX, EDX 
LEA DI, qword ptr [RSI + RCX + 49033] 
DEC SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
ADD DIL, -48 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RDX 
CMOVNS BX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
