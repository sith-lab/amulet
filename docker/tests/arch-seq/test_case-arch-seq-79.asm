.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
SETNO BL 
MOVSX BX, BL 
SETNP AL 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], BX 
AND RAX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RAX] 
INC RDI 
STC  
CMPXCHG BL, DL 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND EAX, ECX 
IMUL CX, DI, -118 
ADD SIL, 78 # instrumentation
SETL SIL 
SETNLE SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], -119 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CDQ  
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RSI] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDI 
XADD RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], SIL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RBX] 
XCHG EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
TEST EAX, 1629250798 
CMP RAX, -1891216983 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 99 
CMOVS RAX, RBX 
IMUL RCX, RSI, 114 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RCX] 
MUL DL 
CMP RDX, -21 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND AX, 15157 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 81 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
SETP AL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
CMOVNLE RCX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
