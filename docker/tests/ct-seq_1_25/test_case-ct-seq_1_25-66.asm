.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 46 # instrumentation
CMOVNO EAX, EDI 
CLC  
AND RCX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RCX] 
ADD AX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RBX] 
CMOVS DI, AX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDX] 
SBB SI, -64 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
ADC RAX, 882621769 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RCX] 
MOVSX ECX, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
SBB AL, -105 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDX] 
SUB DL, CL 
CMOVNB RBX, RSI 
INC RDX 
MOVZX DX, BL 
CWD  
AND RDI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
