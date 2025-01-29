.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 7 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], SI 
XCHG BX, AX 
JMP .bb_main.1 
.bb_main.1:
DEC EAX 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
SUB RDI, -64 
ADC EAX, 285705659 
CLC  
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
