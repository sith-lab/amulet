.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DL, 119 
NOT ECX 
SETS DL 
LEA DX, qword ptr [RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RCX] 
ADC EDX, ESI 
SETP BL 
MOVSX RDI, DX 
SUB CL, BL 
ADC AL, -3 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], -76 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
TEST RAX, 1545297506 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], -43 
ADC EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDI] 
IMUL AL 
ADD SIL, -20 # instrumentation
XCHG SI, AX 
CMOVBE AX, CX 
AND RAX, -699062954 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -108 
CMC  
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], EAX 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
MOVSX DX, AL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
SUB AL, AL 
IMUL EDI 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], -117713816 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
CMP RDI, RSI 
CWD  
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
SBB RAX, -1495052735 
SBB SIL, 29 
SETNBE AL 
TEST BX, 8314 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
