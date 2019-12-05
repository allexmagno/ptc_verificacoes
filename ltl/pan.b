	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM justica */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 7: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM crit */
;
		
	case 8: // STATE 1
		goto R999;

	case 9: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC p2 */

	case 10: // STATE 1
		;
		XX = 1;
		unrecv(now.sema, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 11: // STATE 3
		;
		_m = unsend(now.sema);
		;
		goto R999;

	case 12: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC p1 */

	case 13: // STATE 1
		;
		XX = 1;
		unrecv(now.sema, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 14: // STATE 3
		;
		_m = unsend(now.sema);
		;
		goto R999;

	case 15: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Dijkstra */

	case 16: // STATE 1
		;
	/* 0 */	((P0 *)_this)->count = trpt->bup.oval;
		;
		;
		goto R999;

	case 17: // STATE 2
		;
		_m = unsend(now.sema);
		;
		goto R999;

	case 18: // STATE 3
		;
		((P0 *)_this)->count = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 4
		;
	/* 0 */	((P0 *)_this)->count = trpt->bup.oval;
		;
		;
		goto R999;

	case 20: // STATE 5
		;
		XX = 1;
		unrecv(now.sema, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 21: // STATE 6
		;
		((P0 *)_this)->count = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;
	}

