.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI], 81 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RSI] 
XCHG CL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RAX] 
XCHG DI, AX 
IMUL AX, AX, 57 
SBB AL, -81 
ADC BL, AL 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
ADD RCX, RCX 
CMOVBE SI, AX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
CMOVNZ RDI, RCX 
IMUL EBX, ESI, 52 
MOVZX ESI, DI 
CMOVO RAX, RDI 
ADD AL, -127 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 42 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RAX] 
XCHG DL, AL 
DEC RDX 
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
