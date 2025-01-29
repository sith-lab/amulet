.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], -85 
AND RDI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RBX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, 127 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
SETNLE DL 
LAHF  
SETNO AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], 59 
IMUL BX, SI, -6 
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
MOVZX EBX, DX 
AND RAX, 691344921 
SAHF  
OR DIL, AL 
OR SIL, 4 
OR SIL, 97 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], BX 
SETNLE AL 
XCHG DIL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RAX] 
TEST RAX, RDI 
XADD BX, DI 
MOVZX SI, DL 
XADD RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RBX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 26 # instrumentation
ADC AX, 23434 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RBX] 
SBB DX, -72 
MOV DL, 87 
SETNBE AL 
CWD  
TEST ECX, EDI 
CMOVNS EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], BL 
CMOVNZ RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
XCHG RCX, RAX 
NEG AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
