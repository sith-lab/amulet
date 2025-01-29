.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
CMOVNLE RDX, RDI 
STD  
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
SUB AL, DL 
IMUL RDX, RBX 
MUL RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
AND RSI, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RAX] 
MOV AL, 19 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -16 
MOVSX RDI, DL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -64 # instrumentation
CMOVNL ECX, ECX 
SUB RAX, 69 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -94 
AND RBX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RBX] 
INC RSI 
ADD RAX, RCX 
ADC RCX, 26 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 7 
CMOVNL RBX, RSI 
DEC EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
