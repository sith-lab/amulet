.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -3 
AND RSI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RSI] 
TEST BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], DIL 
AND ECX, -95 
SETNZ DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], DX 
CMOVNL EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
ADD CX, 47 
MOVSX SI, AL 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], CX 
AND RCX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RBX] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -72 
OR RAX, 1328563897 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], CX 
AND DIL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ECX 
ADC DIL, -97 
SUB RAX, 111319653 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 12 
CMPXCHG AL, CL 
SBB RBX, -14 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
TEST DIL, 88 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
AND RAX, -802202219 
CMP EAX, 908568306 
CMOVL AX, AX 
CMOVNZ ECX, EDI 
JMP .bb_main.2 
.bb_main.2:
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
TEST DX, DI 
SUB DIL, -17 
TEST AL, -126 
AND RDI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDI], RCX 
CWD  
MOV AL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
