.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], CX 
AND RDI, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RDI] 
SUB EBX, EDI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -67 # instrumentation
SBB RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RCX] 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 65 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
IMUL ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -88 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ECX 
SUB RDX, -7 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
