.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], ECX 
SETNBE DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDI] 
XCHG DIL, CL 
ADC AL, 27 
CBW  
INC BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RAX] 
TEST RAX, -1624088686 
CMOVBE RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RSI] 
CMOVNL SI, SI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDI] 
SUB AL, -44 
ADD SIL, AL 
AND DL, -12 
OR ECX, 64 
CMP RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RBX] 
ADC RBX, RAX 
MOV CL, BL 
SBB BL, 64 
SETNS BL 
OR AX, -12969 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
SUB BX, -94 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], AL 
SBB EDI, -12 
MOV RDX, -5438891772759047558 
OR RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
TEST RDX, RCX 
OR RSI, RBX 
ADC AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX], 67 
CMP RCX, 26 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
