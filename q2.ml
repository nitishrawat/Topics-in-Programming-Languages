type 'a btree =
Empty
| Node of 'a btree * 'a * 'a btree 
;;
let rec insert btree x =
match btree with
Empty ->
	 Node(Empty, x, Empty)
| Node(lb, r, rb) -> 
	if x < r then 
		Node(insert lb x, r, rb)
	else
		 Node(lb, r, insert rb x) 
;;
let btree =Empty;;
let btree = insert btree 5;;
print_endline "Node inserted in binary tree";;
let btree = insert btree 25;;
print_endline "Node inserted in binary tree";;
let btree = insert btree 53;;
print_endline "Node inserted in binary tree";;
let btree = insert btree 45;;
print_endline "Node inserted in binary tree";;
let btree = insert btree 59;;
print_endline "Node inserted in binary tree";;
let btree = insert btree 15;;
print_endline "Node inserted in binary tree";;
let rec search = fun btree x ->
match btree with
Empty -> print_endline "Element not found"
| Node(lb, r, rb) ->
	if x<r then
		search lb x
	else if x>r then
			search rb x
		else  print_endline "Element found in Binary Tree"
;;
search btree 53;;
search btree 333;;


