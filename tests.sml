use "functions.sml";

(*only_capitals tests*)
fun provided_test_only_capitals() = 
    let
        val strList1 = ["Fred", "Fredrick", "bicycle", "Elizabeth", "Betty", "Freddie", "person"]
        val strList2 = ["London","England", "Poland"]
        val strList3 = ["car", "plane", "airport", "ship"]
    in
        [
            only_capitals(strList1),
            only_capitals(strList2),
            only_capitals(strList3)
        ]
    end;

provided_test_only_capitals();

(*longest_string1 tests*)
fun provided_test_longest_string1() = 
    let
        val strList1 = []
        val strList2 = ["1111","2222", "3333"]
        val strList3 = ["car", "aircraft", "airport", "ship", "bicylcle"]
    in
        [
            longest_string1(strList1),
            longest_string1(strList2),
            longest_string1(strList3)
        ]
    end;

provided_test_longest_string1();

(*longest_string2 tests*)
fun provided_test_longest_string2() = 
    let
        val strList1 = []
        val strList2 = ["1111","2222", "3333"]
        val strList3 = ["car", "aircraft", "airport", "ship", "bicylcle"]
    in
        [
            longest_string2(strList1),
            longest_string2(strList2),
            longest_string2(strList3)
        ]
    end;

provided_test_longest_string2();

(*longest_string3 tests*)
fun provided_test_longest_string3() = 
    let
        val strList1 = []
        val strList2 = ["1111","2222", "3333"]
        val strList3 = ["car", "aircraft", "airport", "ship", "bicylcle"]
    in
        [
            longest_string3(strList1),
            longest_string3(strList2),
            longest_string3(strList3)
        ]
    end;

provided_test_longest_string3();

(*longest_string4 tests*)
fun provided_test_longest_string4() = 
    let
        val strList1 = []
        val strList2 = ["1111","2222", "3333"]
        val strList3 = ["car", "aircraft", "airport", "ship", "bicylcle"]
    in
        [
            longest_string4(strList1),
            longest_string4(strList2),
            longest_string4(strList3)
        ]
    end;

provided_test_longest_string4();

(*longest_capitalized tests*)
fun provided_test_longest_capitalized() = 
    let
        val strList1 = ["veryLongWord", "Fred", "Frederick", "bicycle", "Elizabeth", "Betty", "Freddie", "person"]
        val strList2 = ["London","England", "Poland"]
        val strList3 = ["car", "plane", "airport", "ship"]
    in
        [
            longest_capitalized(strList1),
            longest_capitalized(strList2),
            longest_capitalized(strList3)
        ]
    end;

provided_test_longest_capitalized();

(*longest_capitalized tests*)
fun provided_test_rev_string() = 
    let
        val str1 = "Elizabeth"
        val str2 = "London"
        val str3 = "airport"
    in
        [
            rev_string(str1),
            rev_string(str2),
            rev_string(str3)
        ]
    end;

provided_test_rev_string();

(*first_answer tests*)
fun provided_test_first_answer() = 
    let
        val list1 = [5, 4, 3, 2, 1]
        val list2 = [4]
        val list3 = [1, 2, 3]
    in
        [
            (if (first_answer (fn arg => if arg = 4 then SOME (arg) else NONE) list1) = 4 then "Right" else "NOT") handle (NoAnswer) => "Wrong",
            (if (first_answer (fn arg => if arg = 4 then SOME (arg) else NONE) list2) = 4 then "Right" else "NOT") handle (NoAnswer) => "Wrong",
            (if (first_answer (fn arg => if arg = 4 then SOME (arg) else NONE) list3) = 4 then "Right" else "NOT") handle (NoAnswer) => "Wrong"
        ]
    end;

provided_test_first_answer();

(*all_answers tests*)
fun provided_test_all_answers() = 
    let
        val list1 = [5, 4, 3, 2, 1]
        val list2 = [4]
        val list3 = [1, 2, 3]
    in
        [
            all_answers (fn arg => if arg > 0 then SOME [arg] else NONE) list1,
            all_answers (fn arg => if arg = 4 then SOME [arg] else NONE) list2,
            all_answers (fn arg => if arg < 3 then SOME [arg] else NONE) list3
        ]
    end;

provided_test_all_answers();

(*count_wildcards tests*)
fun provided_test_count_wildcards() = 
    let
        val pattern1: pattern = (TupleP ([ConstP(1),ConstP(1), ConstructorP("mystr", Wildcard)]))
        val pattern2: pattern = Wildcard
        val pattern3: pattern = (TupleP ([Wildcard,ConstP(1), Wildcard, Wildcard]))
        val pattern4: pattern = Variable "hello"
    in
        [
            count_wildcards(pattern1),
            count_wildcards(pattern2),
            count_wildcards(pattern3),
            count_wildcards(pattern4)
        ]
    end;

provided_test_count_wildcards();

(*count_wild_and_variable_lengths tests*)
fun provided_test_count_wild_and_variable_lengths() = 
    let
        val pattern1: pattern = (TupleP ([Variable "car", Variable "bicycle", ConstructorP("mystr", Wildcard)]))
        val pattern2: pattern = Wildcard
        val pattern3: pattern = (TupleP ([Wildcard, Variable "sometext", Wildcard, Wildcard]))
        val pattern4: pattern = Variable "hello"
    in
        [
            count_wild_and_variable_lengths(pattern1),
            count_wild_and_variable_lengths(pattern2),
            count_wild_and_variable_lengths(pattern3),
            count_wild_and_variable_lengths(pattern4)
        ]
    end;

provided_test_count_wild_and_variable_lengths();

(*count_some_var tests*)
fun provided_test_count_some_var() = 
    let
        val str1 = "car" val pattern1: pattern = (TupleP ([Variable "car", Variable "car", ConstructorP("mystr", Wildcard)]))
        val str2 = "car"  val pattern2: pattern = Wildcard
        val str3 = "sometext"  val pattern3: pattern = (TupleP ([Wildcard, Variable "sometext", Wildcard, Wildcard]))
        val str4 = "hello"  val pattern4: pattern = Variable "hello"
    in
        [
            count_some_var(str1, pattern1),
            count_some_var(str2, pattern2),
            count_some_var(str3, pattern3),
            count_some_var(str4, pattern4)
        ]
    end;

provided_test_count_some_var();

(*check_pat tests*)
fun provided_test_check_pat() = 
    let
        val pattern1: pattern = (TupleP ([Variable "car", Variable "car", ConstructorP("mystr", Wildcard)]))
        val pattern2: pattern = Wildcard
        val pattern3: pattern = (TupleP ([Wildcard, Variable "sometext", Wildcard, Wildcard, Variable "another text"]))
        val pattern4: pattern = Variable "hello"
    in
        [
            check_pat(pattern1),
            check_pat(pattern2),
            check_pat(pattern3),
            check_pat(pattern4)
        ]
    end;

provided_test_check_pat();

(*first_match tests*)
fun provided_test_first_match() = 
    let
        val valu1: valu = Const 5
        val pattern1: pattern list = [Variable "car", ConstP 5, ConstructorP("mystr", Wildcard)]
        
        val valu2: valu = Unit
        val pattern2: pattern list = [UnitP]

        val valu3: valu = Constructor("str1", Const 1)
        val pattern3: pattern list = [Wildcard, Variable "sometext", ConstructorP("str1", ConstP 1)]

        val valu4: valu = Tuple ([Const 5, Const 1])
        val pattern4: pattern list = [TupleP ([ConstP 5, Variable "car"])]
    in
        [
            first_match(valu1, pattern1),
            first_match(valu2, pattern2),
            first_match(valu3, pattern3),
            first_match(valu4, pattern4)
        ]
    end;

provided_test_first_match();