.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
IMUL EDX, ESI, -16 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -125 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
CMOVL ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RCX] 
CMOVNS BX, BX 
BSWAP RCX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
CMOVS RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
NEG SIL 
MOVZX RCX, CL 
AND RCX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
