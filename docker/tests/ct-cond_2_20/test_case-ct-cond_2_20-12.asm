.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV AX, SI 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -86 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDX] 
IMUL ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
INC RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -19 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
