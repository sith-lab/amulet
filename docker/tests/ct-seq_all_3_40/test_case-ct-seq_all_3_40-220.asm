.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -113 # instrumentation
CMOVNB RDI, RSI 
CMOVL DX, DI 
CMP RAX, -102 
XOR AX, -20681 
LEA EDX, qword ptr [RBX + RDI + 12499] 
CMP RBX, RDX 
ADC AL, 38 
ADC DL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
ADD RAX, -1546590444 
SETS DL 
MOVSX EBX, AL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RBX] 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 63 
LAHF  
OR DIL, DL 
AND RDI, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDI] 
SETNLE AL 
SETLE DIL 
CMOVNZ DX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
XOR DL, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
SETBE DL 
JMP .bb_main.2 
.bb_main.2:
IMUL RBX, RAX, 8 
XOR AX, 18527 
SETNO DIL 
SETNO DL 
TEST AX, 5882 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], -2 
AND AL, 97 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RSI] 
OR DIL, -116 
CBW  
MOVZX SI, CL 
CMOVS ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
