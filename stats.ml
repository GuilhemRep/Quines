let p() = "
let () =
let w = p() in
let code = ref \"\" in
code := (!code)^\"let p() = \\\"\";
for i=0 to (String.length w - 1) do
  if (w.[i]='\\\\') then
    code := (!code)^\"\\\\\\\\\"
  else if (w.[i]='\\\"') then
    code := (!code)^\"\\\\\\\"\"
  else
    code := (!code)^(String.make 1 (w.[i]))
done;
code := (!code)^(String.make 1 '\\\"');
code := (!code)^w;
code := (!code)^\"\\n\";

let count s l =
  let c = ref 0 in
  for i=0 to (String.length s -1) do
    if s.[i]=l then incr c
  done;
  !c
in
let list_char s =
  let rec aux s i b l =
    if i>=b then l
    else (
      let x = count s (Char.chr i) in
      aux s (i+1) b (if x=0 then l else (((Char.chr i),x)::l))
    )
  in
  List.sort (fun x1 x2 -> if ((snd x1)<(snd x2)) then 1 else -1) (aux s 0 126 [])
in
let rec pprint l = match l with
[]->()
|t::q -> (
  print_string \"It contains \";
  print_int (snd t);
  print_string \" times the character \\\"\";
  print_char (fst t);
  print_string \"\\\".\\n\";
  pprint q
)
in
print_newline();
print_string \"My code is :\";
print_newline();
print_newline();
print_string (!code);
print_newline();
print_newline();
let l = list_char (!code) in
pprint l;
print_newline()"
let () =
let w = p() in
let code = ref "" in
code := (!code)^"let p() = \"";
for i=0 to (String.length w - 1) do
  if (w.[i]='\\') then
    code := (!code)^"\\\\"
  else if (w.[i]='\"') then
    code := (!code)^"\\\""
  else
    code := (!code)^(String.make 1 (w.[i]))
done;
code := (!code)^(String.make 1 '\"');
code := (!code)^w;
code := (!code)^"\n";

let count s l =
  let c = ref 0 in
  for i=0 to (String.length s -1) do
    if s.[i]=l then incr c
  done;
  !c
in
let list_char s =
  let rec aux s i b l =
    if i>=b then l
    else (
      let x = count s (Char.chr i) in
      aux s (i+1) b (if x=0 then l else (((Char.chr i),x)::l))
    )
  in
  List.sort (fun x1 x2 -> if ((snd x1)<(snd x2)) then 1 else -1) (aux s 0 126 [])
in
let rec pprint l = match l with
[]->()
|t::q -> (
  print_string "It contains ";
  print_int (snd t);
  print_string " times the character \"";
  print_char (fst t);
  print_string "\".\n";
  pprint q
)
in
print_newline();
print_string "My code is :";
print_newline();
print_newline();
print_string (!code);
print_newline();
print_newline();
let l = list_char (!code) in
pprint l;
print_newline()
