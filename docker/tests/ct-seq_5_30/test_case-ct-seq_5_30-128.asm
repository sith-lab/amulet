.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ESI, DIL 
IMUL RDX 
MUL RBX 
MOV BX, 21755 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDI 
CMOVNS CX, BX 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -55 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
INC ECX 
DEC RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RAX] 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
SBB AX, -123 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RCX] 
CLC  
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
SUB CL, BL 
ADC DIL, AL 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -105 # instrumentation
CMOVL CX, DX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
MOVSX EAX, BL 
CMC  
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
