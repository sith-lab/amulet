.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 38 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
SUB AL, 99 
AND RSI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
SUB EAX, 582603263 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ESI 
AND RBX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RBX] 
MOVZX AX, AL 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RCX] 
CMOVNP RAX, RAX 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
XCHG BX, AX 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 14 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RAX 
CMOVNL EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
ADC AL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RSI] 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR DX, 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
SBB EDI, -59 
ADC SIL, 69 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -91 # instrumentation
CMOVNL ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
CMP BX, -102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
