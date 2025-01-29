.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RDX] 
STC  
XOR EAX, 861936974 
IMUL EBX, ECX 
OR EDX, EDX 
STC  
AND DIL, DIL 
XOR CL, -24 
CMOVO EDI, ESI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 125 # instrumentation
CMOVO EAX, ESI 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
XCHG DL, AL 
IMUL CX, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], 115 
IMUL SI, DX 
XADD CL, DL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], AX 
LEA EDX, qword ptr [RCX] 
SBB DL, -34 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], 77 
CMOVZ CX, CX 
AND AX, 31317 
MOV RDX, -3454470102002628307 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDX] 
SETLE CL 
CMOVNS RBX, RDX 
SETNZ BL 
CMOVS DX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
NOT DX 
SBB RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RDI] 
CMOVP ESI, EAX 
ADC AL, 29 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
