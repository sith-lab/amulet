.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], SIL 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RCX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
ADC RAX, -25 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDX] 
CMOVNL EBX, EBX 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 88 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ESI 
MUL RAX 
ADD DIL, -74 # instrumentation
MOVSX RAX, SI 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -23 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
CWDE  
ADD CL, AL 
OR DL, 1 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
