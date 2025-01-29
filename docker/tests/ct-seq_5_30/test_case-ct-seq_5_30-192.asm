.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
MOVSX RBX, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ESI 
CMOVS RSI, RCX 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVZX RBX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 38 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 78 
ADD RBX, RAX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 9 
MOV AL, CL 
SBB DI, 49 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDI] 
IMUL DL 
MOVZX SI, CL 
JMP .bb_main.3 
.bb_main.3:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
DEC BL 
LEA EBX, qword ptr [RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
CMOVB RCX, RAX 
ADC ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RSI] 
DEC EBX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
