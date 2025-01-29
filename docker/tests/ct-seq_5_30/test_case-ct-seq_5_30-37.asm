.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RAX, -1990209640 
SUB CL, DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RDX 
MOVSX ECX, CL 
SBB AL, 73 
JMP .bb_main.1 
.bb_main.1:
ADD AX, 31211 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 104 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDX] 
CMOVBE EBX, EAX 
NEG EDX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
MOVZX EDX, AL 
CMP AL, -74 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
IMUL SI, DI, 22 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
ADC EAX, -12 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
LEA AX, qword ptr [RBX] 
XCHG AX, CX 
XCHG ECX, EBX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
MOV CX, -27888 
ADC RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 50 # instrumentation
CMOVBE CX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
