.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -7 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
SBB AL, 70 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -104 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], CX 
MOVZX CX, AL 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 55 
AND RSI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RSI] 
MOVSX EDI, BL 
CMOVL AX, DX 
MUL BL 
AND RBX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
ADD RAX, -54 
CMP RAX, 1127726227 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 66 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 109 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EBX 
CMOVB RDX, RCX 
CMOVNB BX, AX 
SBB DL, 17 
MOVSX EDI, AL 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
CMOVB AX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
