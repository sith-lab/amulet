.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RCX, AL 
OR EDX, 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], 23 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RAX, 599582693 
CMOVNL ESI, EDI 
NOT RAX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDX 
ADD SIL, -103 # instrumentation
SBB DL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 52 
SETNO DL 
IMUL RSI, RDX 
OR AX, 17230 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
SUB RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
IMUL RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
MOVZX RAX, CL 
CMOVNP RAX, RCX 
SBB RAX, -286460721 
SBB AL, 4 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -16 
CMP AL, 114 
XOR AL, 61 
AND RAX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RAX] 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], BL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RDI] 
ADC AL, 86 
XADD AL, AL 
INC EBX 
CMOVL ESI, EDX 
CBW  
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
CMOVZ EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], AL 
SUB AL, 14 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
