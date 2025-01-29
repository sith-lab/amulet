.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MUL EBX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
XCHG DL, DL 
TEST DL, 82 
ADD AX, -11637 
MOVZX EDX, BL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
CMOVNBE ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], 1235816501 
AND RCX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RCX] 
OR SIL, -110 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
INC BX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], BL 
CMOVO RAX, RAX 
XOR RDX, -88 
CMOVNS EBX, EDX 
SETP AL 
SETNP BL 
XOR RAX, 1440147999 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -59 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
IMUL BX, CX, 41 
OR SIL, AL 
XOR DI, BX 
XOR CL, SIL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
IMUL RSI 
ADD SIL, -50 # instrumentation
CMOVNZ RBX, RCX 
SUB CX, 73 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD DIL, 94 # instrumentation
CMOVL ECX, EDX 
CMOVNB EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RAX] 
SETNBE SIL 
IMUL EDI 
XOR CX, CX 
CMOVB RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
SETZ AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
