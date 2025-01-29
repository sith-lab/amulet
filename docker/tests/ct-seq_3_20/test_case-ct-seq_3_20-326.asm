.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 46 
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
MOVZX EBX, DIL 
CMOVS EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
ADC DI, SI 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ESI 
CMOVNLE EDX, ECX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
CMOVP RDI, RAX 
MUL AL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI] 
INC RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
