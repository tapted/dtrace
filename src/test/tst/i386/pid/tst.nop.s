	.text
.globl _nop
_nop:
	.byte 0x90
	.byte 0x66, 0x90
	.byte 0x0F, 0x1f, 0x00
	.byte 0x0F, 0x1f, 0x40, 0x00
	.byte 0x0F, 0x1f, 0x44, 0x00, 0x00
	.byte 0x66, 0x0F, 0x1f, 0x44, 0x00, 0x00
	.byte 0x0F, 0x1f, 0x80, 0x00, 0x00, 0x00, 0x00
	.byte 0x0F, 0x1f, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x66, 0x0F, 0x1f, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2E, 0x66, 0x0F, 0x1f, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x36, 0x66, 0x0F, 0x1f, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x3E, 0x66, 0x0F, 0x1f, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x26, 0x66, 0x0F, 0x1f, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x64, 0x66, 0x0F, 0x1f, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x65, 0x66, 0x0F, 0x1f, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00
	ret

