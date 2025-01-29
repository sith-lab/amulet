.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -12 # instrumentation
CMOVNS RSI, RBX 
CMOVP EDX, EDX 
XOR BL, 127 
CMP AX, 3634 
LEA EDX, qword ptr [RSI + RSI] 
SETNS DIL 
CMP AL, -107 
MOV DI, AX 
MOVSX RAX, CX 
SBB RAX, 1324546922 
DEC EBX 
SETBE AL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
CMOVNO EDI, EBX 
TEST AX, 6601 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -92 # instrumentation
CMOVNLE EAX, ECX 
SUB DIL, -123 
SETO SIL 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
AND RAX, -494619246 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
CMOVNS EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 42 
XCHG RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -1 
SETNS BL 
ADC RAX, -499265055 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD DIL, 95 # instrumentation
CMOVP ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
SETP CL 
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RSI] 
CMOVL DI, CX 
LEA RCX, qword ptr [RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
SBB RDI, -41 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
OR BL, AL 
CMOVZ AX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
