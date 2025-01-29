.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOP  
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
XOR EBX, -67 
XOR DIL, 116 
CMP CL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 6 
NOT RCX 
SETNB BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 58 
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], ECX 
ADC AX, AX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ECX 
AND DL, DL 
SETZ SIL 
XCHG RDI, RAX 
MOVZX BX, DIL 
AND RBX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RBX] 
ADD SIL, -93 # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
MOV CL, 58 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RAX] 
ADC EAX, 1530177761 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
MOVSX DI, CL 
SUB DIL, 25 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
MOVSX RCX, DL 
MOV DL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
SETZ AL 
SETO DL 
AND AL, -96 
OR AX, AX 
MOVZX RSI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
