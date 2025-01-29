.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RBX] 
OR AX, -32733 
CMC  
SETNBE AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RBX] 
CMOVP RDI, RCX 
XOR CL, CL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RBX] 
XCHG AL, SIL 
ADC AX, AX 
AND BL, AL 
CMOVBE ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EBX 
ADD AX, -3130 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DIL 
OR EAX, -101 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDX] 
ADD AL, -77 
SETNP SIL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
CMOVNS RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RSI] 
SUB AX, -18141 
XOR CL, CL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
MUL EDI 
ADD DIL, -14 # instrumentation
CMOVS EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -117 
SBB RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
