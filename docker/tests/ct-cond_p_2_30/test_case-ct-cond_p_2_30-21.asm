.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], AX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RDX 
CMOVO RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
IMUL AX, DI, -11 
MOVZX SI, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
ADC EAX, -371461957 
CMOVS SI, SI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RCX] 
MOV ECX, -977742508 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -77 
SUB SIL, 21 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 98 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
ADC RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], BX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
MOV EBX, 1006000402 
CMP RAX, -1078333930 
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
