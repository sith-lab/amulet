.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
OR EDX, 83 
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
ADC EDI, ECX 
OR RAX, -1525402526 
XOR SIL, 70 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
SUB ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RBX] 
NEG DI 
SBB CX, DI 
SETL DL 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DX 
SETL CL 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], DX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], SI 
SETL BL 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
SBB SIL, CL 
CMOVNS EDI, ESI 
ADD EDX, 120 
NEG CX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EAX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], 43 
XOR CL, DIL 
CMOVNZ RAX, RAX 
TEST DL, BL 
CMOVNL EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
ADC DIL, -118 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
CMOVL RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RSI], CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], AL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
