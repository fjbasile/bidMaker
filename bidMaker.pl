/*query format: getBid(A, E, D, M, P, Q1, H, C, A1, O). 
The query requests that the computer "get a bid" using the shift arguments passed to it. Each shift can be applied
to a bid up to six times. The computer must then only return results such that the number of each type of shift 
conforms to the demands required of each day.  */

getBid(A, E, D, M, P, Q1, H, C, A1, O) :- /*get bid*/
    member(A, [0,1,2,3,4,5,6]), /*up to six A shifts */
    member(E, [0,1,2,3,4,5,6]), /*up to six E shifts */
    member(D, [0,1,2,3,4,5,6]), /*up to six D shifts */
    member(M, [0,1,2,3,4,5,6]), /*up to six M shifts */
    member(P, [0,1,2,3,4,5,6]), /*up to six P shifts */ 
    member(Q1, [0,1,2,3,4,5,6]), /*up to six Q1 shifts */ 
    member(H, [0,1,2,3,4,5,6]), /*up to six H shifts*/
    member(C, [0,1,2,3,4,5,6]), /*up to six C shifts */
    member(A1, [0,1,2,3,4,5,6]), /*up to six A1 shifts */
    member(O, [0,1,2,3,4,5,6]), /*up to six O shifts */

 	Sun is A + P + Q1 + C + O, /*these shifts work on Sundays*/
	Sun = 10, /*Sunday needs 'n' people*/
	
    Mon is M + P + Q1 + H + C + A1 + O, /*these shifts work on Mondays*/
    Mon = 13, /*Monday needs 'n' people*/
    
    Tue is E + M + Q1 + H + C + A1, /*these shifts work on Tuesdays*/
    Tue = 14, /*Tuesday need 'n' people*/
    
    Wed is E + D + H + C, /*these shifts work on Wednesdays*/
    Wed = 14, /*Wednesdays need 'n' people*/
    
    Thu is A + E + D + M + H + O, /*these shifts work on Thursdays*/
    Thu = 14, /*Thursdays needs 'n' people*/
    
    Fri is A + E + D + M + P + A1 + O, /*these shifts work on Fridays*/
    Fri = 15, /*Fridays need 'n' people*/
    
    Sat is A + D + P + Q1 + A1, /*these shifts work on Saturdays*/
    Sat = 12. /*Saturdays need 'n' people*/
