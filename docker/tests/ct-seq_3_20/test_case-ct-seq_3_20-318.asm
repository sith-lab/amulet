.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RBX] 
INC SIL 
ADC AL, 35 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -77 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RAX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDI] 
MOVZX RCX, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RBX] 
IMUL BX, SI 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
