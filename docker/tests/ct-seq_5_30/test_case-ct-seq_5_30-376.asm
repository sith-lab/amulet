.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDI] 
SUB ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 74 
ADC AX, -99 
ADD DL, DIL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -34 # instrumentation
SBB DX, -57 
AND RAX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RAX] 
XCHG RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
IMUL RCX, RAX, -69 
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -20 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -108 # instrumentation
CMOVNLE RSI, RSI 
CMOVNL EDX, ESI 
CMOVNZ AX, SI 
MOVZX RAX, DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -122 
INC ECX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RBX] 
CMOVNS RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
MOV AX, -19297 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EDI 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], SIL 
IMUL DX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
