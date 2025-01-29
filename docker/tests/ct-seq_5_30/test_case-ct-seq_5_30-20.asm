.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DL, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
ADD AX, 8319 
INC RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
CMOVNO RDX, RDI 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
XCHG RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
ADC BL, -89 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RAX] 
ADD AX, -5678 
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
MOVSX ESI, DI 
CMOVO SI, DI 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI], 66 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -29 
ADD RBX, RAX 
CMOVNZ ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], SIL 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
NEG DX 
CMOVLE RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -23 
MOV ECX, 1944903308 
SUB DI, 111 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
