.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -50 # instrumentation
SBB SIL, -75 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -56 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
ADD RAX, -202606878 
MOVZX SI, DL 
NEG ECX 
CMOVO RDI, RCX 
NEG DL 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -119 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DIL 
ADD DL, DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
ADC SIL, 93 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -99 
ADC RSI, -4 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 31 
MOV EDI, ECX 
MOVSX DI, SIL 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
LEA RAX, qword ptr [RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
OR EDX, 1 # instrumentation
SAHF  
AND RDI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
CLC  
DEC EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
