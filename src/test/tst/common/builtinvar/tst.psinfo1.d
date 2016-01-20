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

#pragma	ident	"@(#)tst.psinfo1.d	1.1	06/08/28 SMI"

/*
 * ASSERTION:
 * To print psinfo structure values.
 *
 * SECTION: Variables/Built-in Variables
 */

#pragma D option quiet

BEGIN
{
	printf("number of lwps in process = %d\n", curpsinfo->pr_nlwp);
	printf("unique process id = %d\n", curpsinfo->pr_pid);
	printf("process id of parent = %d\n", curpsinfo->pr_ppid);
	printf("pid of process group leader = %d\n", curpsinfo->pr_pgid);
	printf("session id = %d\n", curpsinfo->pr_sid);
	printf("real user id = %d\n", curpsinfo->pr_uid);
	printf("effective user id = %d\n", curpsinfo->pr_euid);
	printf("real group id = %d\n", curpsinfo->pr_gid);
	printf("effective group id = %d\n", curpsinfo->pr_egid);
	printf("address of process = %u\n", curpsinfo->pr_addr);
	exit (0);
}
