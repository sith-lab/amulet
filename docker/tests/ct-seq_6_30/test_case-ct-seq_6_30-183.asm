.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -50 
MOV RDX, -4287589108143846963 
SUB AX, -5465 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDI], -55 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RSI] 
XCHG BL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -65 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RBX] 
MOVZX ECX, DIL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RAX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RDX 
ADC EAX, 1878617192 
JMP .bb_main.3 
.bb_main.3:
IMUL EAX, ESI 
ADD SIL, 63 # instrumentation
CMOVNL EBX, ECX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
MOVZX ECX, CL 
AND RDX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
MOV RBX, -1063204905092233962 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 117 
IMUL RDI 
SUB SIL, -59 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 29 
NEG CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
