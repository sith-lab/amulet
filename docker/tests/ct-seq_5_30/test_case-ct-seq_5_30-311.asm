.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD ESI, 125 
SUB AX, -13681 
ADD RAX, RDI 
MOV BL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RCX] 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DIL 
CMP ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI], -16 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 102 # instrumentation
CMOVNO ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
MOVZX ECX, SI 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD SIL, -70 # instrumentation
ADC ECX, 110 
NEG EDI 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RCX 
CMP RBX, 83 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 127 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 77 # instrumentation
CMOVNBE EAX, EDX 
SUB RDI, -38 
AND RDX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDX] 
ADC EBX, EAX 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RBX] 
ADC ESI, 112 
CMOVL BX, DX 
LEA EAX, qword ptr [RSI + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
