.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
NEG CL 
ADD RDX, -71 
SBB AL, 79 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 75 
JMP .bb_main.1 
.bb_main.1:
ADD DI, DI 
CMOVS BX, CX 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 61 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RCX] 
ADC BL, DIL 
CMOVNS RDX, RCX 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -29 
AND RDI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RBX] 
MOVSX RDX, BL 
CMOVNB RBX, RAX 
XCHG RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], ECX 
ADD AX, -22469 
AND RDX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDX] 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
CMP EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
XCHG RAX, RCX 
CMOVS RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
