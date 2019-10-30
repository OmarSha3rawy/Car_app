
#ifndef _STD_MACROS_H_
#define _STD_MACROS_H_

#define STD_CLR_BIT(Var,BitNum) ((Var)&=~(1u<<(BitNum)))
#define STD_SET_BIT(Var,BitNum) ((Var)|= (1u<<(BitNum)))
#define STD_TGL_BIT(Var,BitNum) ((Var)^= (1u<<(BitNum)))
#define STD_CLR_MASK(Var,Mask)  ((var)&=~(Mask))
#define STD_SET_MASK(Var,Mask)  ((var)|= (Mask))
#define STD_TGL_MASK(Var,Mask)  ((var)^= (Mask))
#define STD_GET_BIT(Var,BitNum) (((Var)>>(BitNum))&(1u))
#define STD_GET_MASK(Var,Mask)  ((Var)&(Mask))


#define STD_HIGH (1u)
#define STD_LOW  (0u)

#define STD_OUTPUT (1u)
#define STD_INPUT  (0u)

#define STD_TRUE (1u)
#define STD_FALSE (0u)

#define STD_ACTIVE_HIGH (1u)
#define STD_ACTIVE_LOW	(0u)

#endif