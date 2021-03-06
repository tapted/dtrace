/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

/*
 * Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */

#pragma ident	"@(#)err.D_SPEC_SPEC.SpecAftSpec.d	1.1	06/08/28 SMI"

/*
 * ASSERTION:
 * A clause can contain only one speculate() call.
 *
 * SECTION: Speculative Tracing/Using a Speculation
 *
 */
#pragma D option quiet

BEGIN
{
	self->i = 0;
	var1 = speculation();
	printf("Speculation ID: %d\n", var1);
	var2 = speculation();
	printf("Speculation ID: %d\n", var2);
}

profile:::tick-1sec
{
	speculate(var1);
	printf("Speculating on id: %d\n", var1);
	speculate(var2);
	printf("Speculating on id: %d", var2);
	self->i++;

}

profile:::tick-1sec
/1 > self->i/
{
	exit(0);
}

END
{
	exit(0);
}
