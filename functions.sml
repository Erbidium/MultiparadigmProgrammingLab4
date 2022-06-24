fun only_capitals(stringList: string list) =
    List.filter (fn str => Char.isUpper(String.sub(str, 0))) stringList;