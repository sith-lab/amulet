.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RSI] 
SBB EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], SI 
CMOVP RBX, RCX 
CMOVNP RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
MOV ECX, -456261164 
ADC DIL, AL 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDX 
CMOVLE EBX, EDI 
CMOVNL ECX, EDI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], SIL 
IMUL BX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
SBB EAX, 1171907406 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -47 
CMOVNB CX, DI 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
XCHG EAX, EAX 
ADC RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 98 
SBB EAX, -294809312 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
