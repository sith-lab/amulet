.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 108 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -13 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 53 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RCX] 
SBB DI, 92 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RDI] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -25270 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RSI] 
ADD EAX, -2042491251 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
