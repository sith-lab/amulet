.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG CL 
ADD AL, CL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
CMOVBE RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], BX 
MOV BX, DX 
CLC  
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SAHF  
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -62 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 113 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RAX] 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
