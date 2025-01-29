.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RAX, RDX 
MOV DL, DL 
OR ECX, 5 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 45 
SUB CL, CL 
CMOVNB RCX, RDX 
OR RAX, 1625965950 
AND DI, SI 
CMOVNL ECX, ESI 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -19 # instrumentation
SBB AL, BL 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], SI 
ADC RBX, 104 
CWDE  
SBB DIL, CL 
SUB RCX, 62 
DEC EBX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], EAX 
MOV BL, AL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 33 # instrumentation
CMOVL ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
NEG EDI 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
MUL EBX 
AND EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -52 
SETNS DIL 
MOVZX SI, AL 
SAHF  
MOV AL, 6 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 1568568173 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
OR SI, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], -35 
CMOVBE DI, BX 
XOR DL, -103 
CMOVNB RDI, RAX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
