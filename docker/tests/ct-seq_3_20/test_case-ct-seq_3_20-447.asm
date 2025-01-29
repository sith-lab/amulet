.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -56 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 551953904 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], SIL 
INC RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], SIL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDX] 
CMOVS EDX, ECX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
SUB RBX, RAX 
ADD BL, CL 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
