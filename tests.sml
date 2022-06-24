use "functions.sml";

(*only_capitals tests*)
fun provided_test_only_capitals() = 
    let
        val strList1 = ["Fred", "Fredrick", "bicylce", "Elizabeth", "Betty", "Freddie", "person"]
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