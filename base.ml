let p() = "


let () =
let w = p() in
print_string \"let p() = \\\"\";
let code = ref \"let p() = \\\"\" in
for i=0 to (String.length w - 1) do
  if (w.[i]='\\') then (
    print_string \"\\\\\\\\\";
    code := (!code)^\"\\\\\\\\\")
  else if (w.[i]='\\\"') then (
    print_string \"\\\\\\\"\";
    code := (!code)^\"\\\\\\\"\" )
  else (
    print_char (w.[i]);
    code := (!code)^(String.make 1 (w.[i])))
done;
print_char '\\\"';
code := (!code)^\"\\\"\";
print_string (!code)"

let () =
let w = p() in
print_string "let p() = \"";
let code = ref "let p() = \"" in
for i=0 to (String.length w - 1) do
  if (w.[i]='\\') then (
    print_string "\\\\";
    code := (!code)^"\\\\")
  else if (w.[i]='\"') then (
    print_string "\\\"";
    code := (!code)^"\\\"" )
  else (
    print_char (w.[i]);
    code := (!code)^(String.make 1 (w.[i])))
done;
print_char '\"';
code := (!code)^"\"";
print_string (!code)