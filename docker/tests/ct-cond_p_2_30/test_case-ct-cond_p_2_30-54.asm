.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
MOV DX, DI 
DEC RBX 
CMOVNB RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RDX] 
ADC BL, -122 
CMOVS EAX, ECX 
MOVSX CX, AL 
CMOVLE ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
CLC  
SUB AL, -120 
SUB AL, DL 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 14 
AND RAX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -87 # instrumentation
MOV RBX, -2241563340839032452 
ADC DL, CL 
ADD AL, 56 
MUL CL 
ADD DIL, 6 # instrumentation
CMOVS RAX, RCX 
CWD  
SBB CL, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RDI] 
CMOVNLE BX, DX 
CMP RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
