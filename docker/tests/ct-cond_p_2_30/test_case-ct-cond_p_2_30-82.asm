.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
MOV EAX, 1886105885 
CMOVZ EDI, ECX 
CMOVNZ RDI, RSI 
NEG SIL 
ADD EBX, -105 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -111 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
ADC EAX, -1046236363 
NEG CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
CBW  
CMOVO EDI, EDX 
DEC CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -80 # instrumentation
ADC RAX, 101 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
SBB RAX, -46 
AND RDX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDX] 
DEC AL 
CMOVNLE DX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RAX] 
MOVSX EDI, DX 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX], 15 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -26 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
SBB EBX, EBX 
MOVZX ESI, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
