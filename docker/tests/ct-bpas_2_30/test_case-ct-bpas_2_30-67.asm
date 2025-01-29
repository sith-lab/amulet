.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], SI 
CMOVO AX, DI 
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RAX] 
IMUL BX, SI 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
SUB AL, -68 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], 45 
AND RAX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RAX] 
MOV AL, -32 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
MOVZX ESI, BL 
CMOVZ RSI, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDI] 
CMP EAX, 87 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDX] 
SUB EBX, 99 
SUB AX, -23272 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RSI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
NEG AX 
XCHG DL, BL 
MOVZX RBX, AL 
CLD  
ADC BL, DL 
ADC AX, -13373 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
MOV EDX, EDI 
MOV RBX, -6574155322647057686 
SUB AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
