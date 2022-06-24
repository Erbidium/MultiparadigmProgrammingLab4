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
    