.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
CMOVNO ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -39 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
MOVZX AX, AL 
IMUL BX, CX, -66 
ADD DIL, -90 # instrumentation
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RAX 
CMP CX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
IMUL AX 
ADD SIL, -65 # instrumentation
CMOVP RCX, RBX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
