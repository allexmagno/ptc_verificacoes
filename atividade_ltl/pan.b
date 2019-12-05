	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM f3 */
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

		 /* CLAIM f2 */
;
		;
		;
		;
		
	case 10: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f1 */
;
		;
		
	case 12: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC env */
;
		;
		
	case 14: // STATE 2
		;
		now.incr = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC counter */
;
		;
		
	case 17: // STATE 2
		;
		now.count = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 3
		;
		now.incr = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: // STATE 5
		;
		now.count = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;
	}

