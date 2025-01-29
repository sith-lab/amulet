.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -120 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -50 
SBB EAX, -2070157034 
AND RSI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RSI] 
JNB .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
NEG SI 
SUB RDX, RSI 
ADD CL, CL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 48 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDI] 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RAX], -32 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -85 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDX] 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI], 9 
ADD CX, -48 
NEG DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RAX] 
DEC EBX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 125 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
CMOVP CX, CX 
MOVZX BX, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], SI 
DEC SI 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
