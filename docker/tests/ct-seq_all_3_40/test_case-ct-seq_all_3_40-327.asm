.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RBX] 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RSI] 
CMOVS RSI, RAX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -118 
AND RAX, 780523243 
SUB AX, 23291 
INC DIL 
MOVSX RDX, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 5 
ADD AL, 26 
TEST DL, 98 
CMOVNO EAX, EBX 
MOV EDI, EAX 
SETNB DL 
AND DL, DL 
SUB RAX, 1678906042 
CMOVLE EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
CMP RAX, 1514676944 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], AX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR DL, DL 
XADD ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
IMUL DI 
SUB AL, DL 
IMUL AL 
ADD SIL, 19 # instrumentation
SETNO BL 
LAHF  
CMOVBE EDI, EDX 
INC DIL 
SETNB BL 
SETP AL 
MUL ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -115 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ESI 
ADC DL, -67 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
