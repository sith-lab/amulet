.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
SBB RBX, RAX 
CMOVNS ECX, EDX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -1 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], CX 
AND RCX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
IMUL EDX, EDX 
XCHG AL, CL 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
SBB AX, 30741 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EBX 
ADC RAX, -1404818814 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
ADC EAX, 1021787435 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -38 
SBB RAX, 60 
AND RBX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RBX] 
ADC EAX, 293897508 
CMP RAX, -328091091 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RCX] 
MOVZX ESI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RAX] 
CMP CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
