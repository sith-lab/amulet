.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, -79358476 
OR RAX, -555901822 
XOR BL, DL 
SETO DIL 
SBB ECX, -59 
ADD AL, BL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RDI] 
ADD SIL, 104 
JMP .bb_main.2 
.bb_main.2:
OR ESI, -47 
XCHG EBX, EBX 
ADD AX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], AX 
AND RSI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
AND RSI, RDI 
TEST EAX, 1690478015 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RBX] 
SUB EDI, ESI 
XCHG EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDI] 
CBW  
SETNLE CL 
ADC DIL, BL 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
ADD DIL, 76 # instrumentation
CMOVS BX, DX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], EDX 
MOVSX EBX, DL 
CMOVB EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
SUB EAX, -33 
AND RCX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RCX] 
SETO AL 
IMUL DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RCX] 
XOR RSI, -127 
CMP DIL, 71 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], EAX 
JO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -27 # instrumentation
CMOVNB RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RCX] 
DEC RDX 
ADD BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
