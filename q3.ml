let rec printarray = fun q ->
	if (List.length q != 0) then
	(
		print_int (List.hd q);
		print_endline "";
		printarray(List.tl q)
	);;
let value_list = [112;54;12;87;343;77;21;98;39];;
printarray value_list;;
let rec sort lst =
   match lst with
     [] -> []
   | head :: tail -> insert head (sort tail)
 and insert elt lst =
   match lst with
     [] -> [elt]
   | head :: tail -> if elt <= head then elt :: lst else head :: insert elt tail
 ;;
let value_list = sort value_list;;
print_endline "List sorted";;
printarray value_list;;

