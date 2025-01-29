.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 74 
SBB SIL, 32 
SBB AL, CL 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 123 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
XCHG CX, DX 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV EDX, 566979567 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI], -127 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DIL 
ADD DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
