.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], AL 
SETO CL 
CWD  
MOVZX EBX, CL 
MOV RDX, -3929786470470941652 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RCX] 
CMOVNZ EDI, EBX 
ADD ECX, -101 
DEC EDX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
CMOVNB EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
MOVZX RDX, AX 
MUL SI 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
INC RDI 
CMPXCHG DIL, DL 
MUL BX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], DX 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
OR AL, 116 
NEG AL 
AND RBX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RBX] 
CMP EAX, 257988532 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RCX] 
SETNS CL 
SUB DI, DX 
SBB AL, 104 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RAX] 
SBB EDX, EAX 
CMP DIL, 27 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
XOR DI, DI 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
