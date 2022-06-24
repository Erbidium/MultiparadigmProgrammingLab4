fun only_capitals(stringList: string list) =
    List.filter (fn str => 
                    Char.isUpper(String.sub(str, 0)))
                stringList;

fun longest_string1(stringList: string list) =
    List.foldl (fn (str1, str2) => 
                    if (String.size str1) > (String.size str2)
                    then str1
		            else str2)
                ""
                stringList;

fun longest_string2(stringList: string list) =
    List.foldl (fn (str1, str2) => 
                    if (String.size str1) >= (String.size str2)
                    then str1
		            else str2)
                ""
                stringList;

fun longest_string_helper stringComparator stringList =
    List.foldl (fn (str1, str2) => 
                    if stringComparator(String.size str1, String.size str2)
                    then str1
		            else str2)
                ""
                stringList;

val longest_string3 = longest_string_helper (fn (str1, str2) => str1 > str2);

val longest_string4 = longest_string_helper (fn (str1, str2) => str1 >= str2);

val longest_capitalized = longest_string1 o only_capitals;

val rev_string = String.implode o rev o String.explode;

exception NoAnswer;

fun first_answer functionToApply list =
    case list of
    head::tail => (case functionToApply(head) of
                   SOME v => v
                   |NONE => (first_answer functionToApply tail))
    |[] => raise NoAnswer;   

fun all_answers functionToApply list =
    let
        fun helper(tl, accum) = 
            case tl of
            head::tail => (case functionToApply(head) of
                           SOME v => helper(tail, accum @ v)
                           |NONE => NONE)
            |[] => SOME (accum)
    in
        helper(list, [])
    end;




datatype pattern = Wildcard
		 | Variable of string
		 | UnitP
		 | ConstP of int
		 | TupleP of pattern list
		 | ConstructorP of string * pattern;

datatype valu = Const of int
	      | Unit
	      | Tuple of valu list
	      | Constructor of string * valu;

fun g f1 f2 p =
    let 
	val r = g f1 f2 
    in
	case p of
	    Wildcard          => f1 ()
	  | Variable x        => f2 x
	  | TupleP ps         => List.foldl (fn (p,i) => (r p) + i) 0 ps
	  | ConstructorP(_,p) => r p
	  | _                 => 0
    end;


fun count_wildcards(pat: pattern) =
    g (fn _ => 1)
      (fn _ => 0)
      pat;

fun count_wild_and_variable_lengths(pat: pattern) =
    g (fn _ => 1)
      (String.size)
      pat;

fun count_some_var(str: string, pat: pattern) =
    g (fn _ => 0)
      (fn strParam => if strParam = str
                      then 1
                      else 0)
      pat;

fun check_pat(pat: pattern) =
    let
        fun getStrVariables(patt: pattern) =
            case patt of
            Variable x => [x]
            |TupleP ps => List.foldl(fn (p1, acc) => 
                                        getStrVariables(p1) @ acc)
                                     []
                                     ps
            |ConstructorP(_,p) => getStrVariables(p)
            |_ => []
        fun checkDublicates(stringList: string list) =
            case stringList of
            [] => true
            |head::tail => if (List.exists (fn s => s = head) tail)
                           then false
                           else checkDublicates(tail)
    in
        checkDublicates(getStrVariables(pat))
    end;