.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
CMOVS ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RSI], 36 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -16 
CMOVNB EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -111 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
MOVZX EAX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
ADD SIL, -22 # instrumentation
ADC CL, AL 
CMP RAX, -370903175 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
MOVZX RBX, BL 
SUB SIL, -79 
MOVZX EBX, SIL 
ADC AL, -97 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDI] 
CMOVB ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ECX 
SUB CL, AL 
SBB AL, AL 
CLD  
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], SI 
MOV CL, -55 
SUB RAX, 1346705568 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RCX] 
SUB AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
