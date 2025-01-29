.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI], 42 
SBB AX, -23079 
CLD  
AND RAX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
IMUL BX 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -76 
ADD ESI, ECX 
SBB DIL, 92 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB SIL, 14 
MOV RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDI] 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 117 
AND RCX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], SI 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -2 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
SBB BX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
