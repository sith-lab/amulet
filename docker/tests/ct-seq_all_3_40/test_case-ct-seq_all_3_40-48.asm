.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD AL, CL 
SETO BL 
AND AL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RDI 
SBB BL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
CMOVZ RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
CMOVLE RDI, RCX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -95 # instrumentation
SETNL CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI] 
CMOVO DX, AX 
OR AL, CL 
AND RDX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RDX] 
TEST EDI, -3985810 
CMOVO EAX, ESI 
MOV EDX, -703162460 
SETZ BL 
XOR RSI, RBX 
CMP SI, 55 
MOV CL, AL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
CMOVL ECX, ECX 
ADD RSI, 30 
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
AND AX, 15832 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], DIL 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLC  
AND AL, 21 
TEST EDX, EBX 
CMP EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], AL 
ADC RAX, -174563969 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
CMOVS EBX, ESI 
MOV ECX, -463126623 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], 101 
SBB SI, BX 
IMUL ECX 
MOVSX RDX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
