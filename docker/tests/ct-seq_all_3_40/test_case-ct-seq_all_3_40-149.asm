.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
OR AL, -62 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
SETNL DL 
AND EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RDI] 
SUB ESI, EAX 
SUB DX, -21 
MOV AL, -128 
AND RDX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RCX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDX] 
SBB EDI, -14 
ADD SIL, -26 # instrumentation
CWDE  
LAHF  
AND DI, SI 
MOV AL, AL 
STD  
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
CMOVNLE RSI, RCX 
AND RAX, 1420538627 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], -32 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX EDX, AL 
TEST DX, -12305 
SBB RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
XOR AL, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
XCHG DI, AX 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
ADD CX, 58 
SETNO DL 
MUL ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -101 
AND ECX, EAX 
ADC RAX, 137854018 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
