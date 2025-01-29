.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
ADD EBX, EDX 
CMOVNBE SI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
DEC AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -128 
XCHG DX, AX 
NEG EDX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RSI] 
ADD CL, BL 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RSI] 
MOVSX EAX, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CLD  
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -60 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
SBB SI, AX 
MOV RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
SAHF  
ADC RDX, 82 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
