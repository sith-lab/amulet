.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -21 # instrumentation
ADC ESI, 58 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
CMP CX, -39 
LAHF  
CMOVNP RDX, RSI 
CMOVNB RAX, RSI 
CMOVNL RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 98 
SETS CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL EBX 
OR ESI, EBX 
MOV EAX, -1030130661 
AND RBX, -78 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RBX] 
MOVZX RSI, DI 
AND ECX, -122 
CMOVNZ ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX] 
ADD DIL, -20 # instrumentation
SETBE AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RBX] 
CMOVNP RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], 26 
SETNZ AL 
AND RSI, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], AX 
SBB RDX, 115 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
INC DL 
XOR RCX, RBX 
XOR ECX, 101 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RAX] 
NEG DI 
XOR DI, 53 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], SIL 
SUB RAX, -20 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], 122 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
