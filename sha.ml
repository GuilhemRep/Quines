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
print_newline();
print_string \"My code is :\";
print_newline();
print_newline();
print_string (!code);
print_newline();
print_newline();
for i=32 to 122 do
  print_string \"It contains \";
  print_int (count (!code) (Char.chr i));
  print_string \" times the character \\\"\";
  print_char (Char.chr i);
  print_string \"\\\".\\n\"
done;
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
print_newline();
print_string "My code is :";
print_newline();
print_newline();
print_string (!code);
print_newline();
print_newline();
for i=32 to 122 do
  print_string "It contains ";
  print_int (count (!code) (Char.chr i));
  print_string " times the character \"";
  print_char (Char.chr i);
  print_string "\".\n"
done;
print_newline()
