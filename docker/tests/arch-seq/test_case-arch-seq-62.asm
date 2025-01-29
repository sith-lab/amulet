.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
MOVSX EDI, SI 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], EBX 
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RBX] 
SETNLE CL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -128 # instrumentation
SETNS DIL 
CMOVNL RAX, RBX 
SBB RAX, -269579988 
XOR AL, 70 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], 2 
CMOVNS SI, SI 
AND RDI, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDI] 
XCHG RCX, RAX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -84 # instrumentation
CBW  
MOV SI, DX 
SETNZ CL 
IMUL RDI, RDX 
ADD SIL, -22 # instrumentation
LOOPE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
CWD  
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX], 76 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -9 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
CMOVNS SI, DI 
XCHG EBX, EDI 
CMP DL, DL 
JNB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
XOR RBX, RBX 
CMOVNL EDX, EDI 
AND RAX, 1064341520 
CMOVL EAX, EDI 
SETNL BL 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -61 
XCHG BX, AX 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CLD  # instrumentation
ADD DIL, -88 # instrumentation
SETZ AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
CMOVO DI, SI 
LEA RDX, qword ptr [RCX + RDX] 
CMOVO DI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
