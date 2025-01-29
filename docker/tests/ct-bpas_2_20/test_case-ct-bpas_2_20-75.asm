.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -110 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 33 
XCHG SI, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
SUB ESI, -2 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RCX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
CMP EDX, 3 
NEG EDI 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -16 
CMOVL AX, DI 
SUB DIL, -71 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
