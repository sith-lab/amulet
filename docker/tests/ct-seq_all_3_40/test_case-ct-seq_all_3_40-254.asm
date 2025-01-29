.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDX 
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
ADD SIL, 7 # instrumentation
CMOVLE RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RDX] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RSI] 
MOV EDI, -1857809016 
SBB DL, BL 
CMOVBE EDX, EBX 
CMPXCHG AL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -24 
CMOVNP ECX, EDI 
XOR AL, -105 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -45 # instrumentation
XCHG CX, AX 
ADC CL, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RAX] 
CMOVNZ DX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], 103 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], CX 
NEG DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], EAX 
SUB BX, -49 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DL 
MOVSX RDI, SIL 
ADC EBX, ECX 
SETS BL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -68 # instrumentation
SBB CX, -59 
CMOVNL EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 56 
SUB AL, -80 
XCHG SIL, CL 
CMOVNLE RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 17 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], SI 
CMOVNL AX, CX 
SETL AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
