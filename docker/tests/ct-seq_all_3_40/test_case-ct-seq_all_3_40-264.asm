.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 250428220 
OR EDX, EDI 
ADD DX, 90 
SETNB SIL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD SIL, 73 # instrumentation
CMOVBE BX, AX 
XOR AL, -41 
IMUL RSI, RDX 
IMUL RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], -87 
TEST DL, -12 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -83 # instrumentation
CMOVNZ DI, AX 
CMP ESI, -52 
TEST RDX, -1091872885 
CWDE  
SBB AX, 24510 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], 19 
CMOVNL EBX, EDI 
SBB RDI, 18 
CMPXCHG CL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], SIL 
SETP AL 
SUB AX, DX 
ADC CL, DIL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP RAX, -108 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RBX] 
DEC RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
XCHG CL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], BL 
AND AL, -43 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDI] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
CMOVNZ EDX, ESI 
MOVZX CX, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
