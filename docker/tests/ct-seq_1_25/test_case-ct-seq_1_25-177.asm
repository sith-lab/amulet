.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], SIL 
AND RSI, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
IMUL EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
CMOVNBE CX, DI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -68 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
XCHG EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -77 
MOV RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], ESI 
CMOVNZ AX, DX 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RAX] 
CMOVL DX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
