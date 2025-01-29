.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 19 # instrumentation
ADC CX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
CMOVP ECX, EDX 
XOR DL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 19 
SUB EAX, -53215700 
SETNL DL 
MOV DL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -16 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
CMOVNO EBX, ESI 
CMP EAX, 378770285 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -4 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -48 # instrumentation
SBB EDX, -16 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], CL 
XOR BX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DL 
XOR RDI, -110 
SETNL CL 
SETS BL 
CMOVB RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDI] 
TEST DIL, 24 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 91 
CMOVNS RDX, RSI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP AL, AL 
CMOVP DX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
SETZ BL 
LEA EDI, qword ptr [RBX] 
TEST RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
XADD EDI, EBX 
ADD DI, 99 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
SUB SI, 31 
XADD EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
