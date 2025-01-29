.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
MOVZX RAX, DL 
SETL BL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
XOR ESI, EDI 
SUB BX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], 33 
JNZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -75 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], 104 
CMP ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RBX] 
ADC AX, -57 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -44 # instrumentation
SETNP CL 
XADD AX, DX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 719621822 
SUB AX, -23 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CLD  # instrumentation
ADD DIL, -35 # instrumentation
ADC ECX, 30 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI] 
NOT EBX 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RDX] 
CMP AL, 20 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 89 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
OR RAX, 2141275401 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 105 # instrumentation
SETLE CL 
XOR RAX, 298164452 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RBX] 
NEG BX 
SETNBE AL 
SBB DL, -117 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
CMOVBE RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
