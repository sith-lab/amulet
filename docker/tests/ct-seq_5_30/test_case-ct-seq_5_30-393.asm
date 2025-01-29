.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
MOV EBX, ECX 
SUB AX, 110 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RBX] 
ADC DI, -101 
CMP DX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
CMOVNB RAX, RAX 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX ESI, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
XCHG DL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI] 
SUB CL, 28 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 124 # instrumentation
CMOVNZ DI, AX 
IMUL DI 
ADD DL, -41 
CMOVO AX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV AL, 37 
CMP AL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EBX 
INC DL 
XCHG CX, AX 
CMOVNS ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], BX 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 31 
CMOVL RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
