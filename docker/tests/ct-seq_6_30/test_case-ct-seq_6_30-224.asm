.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RSI] 
NEG BX 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX], -17 
JMP .bb_main.1 
.bb_main.1:
XCHG RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
CMP DL, AL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], BX 
SBB AX, BX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -29 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -35 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], -14 
CMOVZ EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
SUB SIL, DIL 
MOV SIL, AL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RSI 
CBW  
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
SUB AX, SI 
CMOVO SI, SI 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
