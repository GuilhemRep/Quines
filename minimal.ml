let p() = "
let () =
let w = p() in
print_string (\"let p() = \\\"\");
for i=0 to (String.length w - 1) do
  if (w.[i]='\\\\') then
    print_string \"\\\\\\\\\"
  else if (w.[i]='\\\"') then
    print_string \"\\\\\\\"\"
  else
    print_char w.[i]
done;
print_char '\\\"';
print_string w"
let () =
let w = p() in
print_string ("let p() = \"");
for i=0 to (String.length w - 1) do
  if (w.[i]='\\') then
    print_string "\\\\"
  else if (w.[i]='\"') then
    print_string "\\\""
  else
    print_char w.[i]
done;
print_char '\"';
print_string w