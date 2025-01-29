.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
CMPXCHG EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
XOR AL, 54 
AND AX, -20323 
SETLE DIL 
CMOVLE AX, AX 
SUB EDI, 54 
ADC RAX, RBX 
CMP EDI, -91 
CMOVNS EDI, EDI 
MOVSX ECX, AL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RCX 
NOT SI 
IMUL RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 64 
CDQ  
ADC AX, -14087 
ADC AL, CL 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
ADD ECX, EDX 
NOP  
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], CL 
CMOVBE EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
SETNP CL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR DIL, -14 
SUB ESI, 108 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RSI 
AND RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
SBB BL, 76 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RCX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 66 
IMUL RBX, RCX 
CMP AL, -68 
SETNO AL 
SETNLE AL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
