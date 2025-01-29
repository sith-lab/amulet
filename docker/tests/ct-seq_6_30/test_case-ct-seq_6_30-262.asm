.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RBX 
MOVZX ESI, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RDI 
SUB ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
ADD RCX, RDX 
ADC EAX, -521463628 
CWD  
MOVSX EBX, DL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DIL 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -19 # instrumentation
CMOVL RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RCX] 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
IMUL EDX, EDI, -75 
ADD DIL, 97 # instrumentation
CMOVL EDI, EAX 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
XCHG EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -36 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RSI] 
ADC AX, -144 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX], -93 
CMP DL, BL 
JMP .bb_main.5 
.bb_main.5:
MUL AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RBX] 
CMOVNLE ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
IMUL AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
