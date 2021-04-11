let q = [];;
let  enqueue = fun q x -> 
	print_endline "element inserted in queue";
	q @ [x];;
 let q = enqueue q 3;;
 let q = enqueue q 4;;
 let q = enqueue q 543;;
 let q = enqueue q 33;;
 let q = enqueue q 32;;
 let q = enqueue q 63;;
let rec dequeue = fun q ->
	if List.tl q = [] then []
	else [List.hd q] @ dequeue (List.tl q)
let rec printqueue = fun q ->
	if (List.length q != 0) then
	(
		print_int (List.hd q);
		print_endline "";
		printqueue(List.tl q)
	);;
printqueue q;;
let q = dequeue(q);;
let q = dequeue(q);;
let q = dequeue(q);;
let q = dequeue(q);;
print_endline "Elements deleted";;
printqueue q;;

