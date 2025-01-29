.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 46 # instrumentation
ADC DL, DL 
SBB AL, 107 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -21 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EAX 
JMP .bb_main.1 
.bb_main.1:
ADD RAX, -376037798 
AND RDI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDI] 
ADD DX, DI 
CMOVZ RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RBX 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
MOVZX DX, CL 
SUB RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
SBB RSI, RDX 
CMOVO DX, SI 
AND RAX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -49 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX SI, BL 
NEG BL 
DEC ESI 
AND RDI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDX 
ADC RAX, -723177966 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
