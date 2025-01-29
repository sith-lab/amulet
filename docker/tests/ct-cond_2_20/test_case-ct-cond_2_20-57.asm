.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EAX 
AND RCX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RCX] 
MUL AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDI] 
SUB EDX, ECX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RAX] 
CMOVB EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DX 
MOVSX RBX, DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RSI 
ADC CX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RCX] 
SUB RAX, -56 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
