.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -88 # instrumentation
SBB AL, -98 
CMOVB ECX, EDX 
SUB RDI, 51 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -32 
CMP AX, SI 
CMP DL, 56 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDX 
INC BL 
ADD CL, BL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
CMC  
SUB CL, -81 
CMOVNB DX, BX 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
MOVSX BX, AL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
CMP CX, -28 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], AX 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 52 # instrumentation
CMOVLE EBX, ECX 
CWDE  
XCHG AX, AX 
DEC BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
