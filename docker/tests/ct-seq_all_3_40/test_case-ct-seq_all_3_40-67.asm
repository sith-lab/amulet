.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MOVZX RDI, BL 
XCHG EDX, EDI 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
OR CL, AL 
SUB SIL, AL 
AND RSI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
ADC RSI, RDX 
SETNLE DIL 
LAHF  
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -50 
LAHF  
CMOVLE EDX, ESI 
TEST AL, AL 
CMOVL DI, DX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
SBB CL, SIL 
OR AL, 66 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 13 
AND RDI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
CMOVB CX, BX 
CMP AL, 77 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RDX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD AL, AL 
SETNL DIL 
CMP EBX, EDX 
NOT DI 
SUB EAX, -569001223 
SBB AL, -20 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
AND RAX, -733522860 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RDI 
MOVSX RBX, SIL 
MOVSX RSI, SIL 
AND AL, 76 
ADC AX, -22204 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
