.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -82 # instrumentation
ADC DIL, 105 
LEA ECX, qword ptr [RAX] 
CMOVNLE RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], -88 
CMP AX, 82 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
CMOVNL EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RSI] 
CMP AL, 109 
SBB CL, 113 
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX] 
ADD SIL, 114 # instrumentation
CMOVBE EDX, EDI 
MOV ESI, 731398883 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
CMOVNS SI, SI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 114 
ADC CL, DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ECX 
MOVZX ECX, DL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RDX] 
CMOVNS ECX, EBX 
CMP RAX, RSI 
CMOVO EBX, ECX 
INC AL 
CMOVNP ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
