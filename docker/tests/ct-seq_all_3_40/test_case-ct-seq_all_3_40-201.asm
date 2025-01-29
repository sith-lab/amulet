.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AL, -59 
SAHF  
OR EDI, EDI 
TEST EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RAX] 
CMOVNS RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], CL 
TEST AL, -86 
SETS DL 
SBB EDX, EBX 
ADC AL, 17 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 115 
AND RBX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP ECX, EBX 
DEC DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RBX] 
SETNZ CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RAX] 
NEG AL 
TEST AX, -18566 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RDI 
ADC EAX, 1638957848 
AND RDI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDI] 
SETP AL 
ADD RAX, RDX 
MUL CL 
ADD DIL, 34 # instrumentation
SETNLE AL 
AND RCX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RBX] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 96 # instrumentation
CMOVNLE SI, SI 
CMP RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], DIL 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
ADD RDI, 32 
CMOVBE EBX, EDX 
CMOVB RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
