
 add_fsm_encoding \
       {bft.loadState} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} {111 111} }

 add_fsm_encoding \
       {or1200_ic_fsm.state} \
       { }  \
       {{00 0001} {01 0010} {10 0100} {11 1000} }

 add_fsm_encoding \
       {or1200_except.state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {or1200_dc_fsm.state} \
       { }  \
       {{000 000} {001 010} {010 011} {011 001} {100 100} }
