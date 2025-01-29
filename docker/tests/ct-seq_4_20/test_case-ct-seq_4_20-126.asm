.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 78 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 10 # instrumentation
CMOVO DX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], AX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
SBB RBX, 71 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EDI 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 35 
AND RSI, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RDI] 
MOVSX EDI, DL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RSI] 
MOV DIL, -116 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
