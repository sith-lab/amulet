.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RAX] 
INC RBX 
AND RAX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RAX] 
CMOVNZ ECX, ECX 
SUB DX, 32 
SBB RDX, RDX 
AND RCX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RCX] 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL EDX, ESI, 83 
CMOVNO RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
AND RBX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RBX] 
SUB CL, 87 
CMOVNB CX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
IMUL AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
NEG DI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
CMOVNP CX, DI 
CMOVP RBX, RAX 
CMOVZ DX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDI] 
CMOVBE CX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDI] 
INC BX 
LAHF  
CMP EAX, 128924652 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
