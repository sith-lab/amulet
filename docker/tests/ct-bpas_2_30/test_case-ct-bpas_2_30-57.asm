.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 43 # instrumentation
CMOVS AX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDI] 
SBB CL, SIL 
CMOVNZ DX, AX 
CMP AL, AL 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
ADC ESI, 60 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DIL 
CMOVNL RDI, RAX 
ADD RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -65 
SBB RCX, 72 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RDI] 
CMOVB AX, BX 
CMP AL, 47 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RSI] 
MOVZX EAX, SIL 
ADD CX, 15 
SBB AX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -24 
IMUL SI 
ADD AX, 20292 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], SIL 
AND RDX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDX] 
ADD AL, -113 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
