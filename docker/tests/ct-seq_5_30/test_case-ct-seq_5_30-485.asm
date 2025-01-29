.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL EBX 
MOVSX DX, CL 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 86 
SBB DI, -14 
CMOVS RAX, RAX 
INC DL 
AND RSI, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ECX 
CMOVNB RDI, RBX 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOVZX SI, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 90 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EBX 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DX 
LOOP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
SUB EAX, 1509474578 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DIL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
MOVZX RCX, SIL 
SUB AX, 3314 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RSI] 
ADD SIL, 42 # instrumentation
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP ESI, EBX 
SUB BL, AL 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 110 # instrumentation
SBB RDI, -70 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 86 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
