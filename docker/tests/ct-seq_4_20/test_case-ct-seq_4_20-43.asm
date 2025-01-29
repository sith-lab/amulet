.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDI] 
ADD BL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 58 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 104 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 44 # instrumentation
CMOVL EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -52 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
CWD  
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
MOVZX RSI, AX 
IMUL RDI, RBX 
MOV AX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
