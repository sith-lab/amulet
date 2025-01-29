.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 77 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], CX 
JMP .bb_main.1 
.bb_main.1:
SUB AL, AL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 32 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV CX, DI 
ADD AL, 113 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 20 
AND RCX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDI 
MUL RDX 
ADC BL, 69 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
