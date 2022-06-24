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