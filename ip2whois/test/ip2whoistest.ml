open Printf
open Ip2whois

exception Ws_exception of string

let my_config = Configuration.init "YOUR_API_KEY";;

let my_domain = "google.com";;
let code, json = Ip_2_whois.lookup my_config my_domain;;

let open Yojson.Basic.Util in
if code == 200
then
begin
  let domain = json |> member "domain" |> to_string in
  printf "domain: %s\n" domain;
  let domain_id = json |> member "domain_id" |> to_string in
  printf "domain_id: %s\n" domain_id;
  let status = json |> member "status" |> to_string in
  printf "status: %s\n" status;
  let create_date = json |> member "create_date" |> to_string in
  printf "create_date: %s\n" create_date;
  let update_date = json |> member "update_date" |> to_string in
  printf "update_date: %s\n" update_date;
  let expire_date = json |> member "expire_date" |> to_string in
  printf "expire_date: %s\n" expire_date;
  let domain_age = json |> member "domain_age" |> to_int in
  printf "domain_age: %d\n" domain_age;
  let whois_server = json |> member "whois_server" |> to_string in
  printf "whois_server: %s\n" whois_server;
  
  let registrar_iana_id = json |> member "registrar" |> member "iana_id" |> to_string in
  printf "registrar_iana_id: %s\n" registrar_iana_id;
  let registrar_name = json |> member "registrar" |> member "name" |> to_string in
  printf "registrar_name: %s\n" registrar_name;
  let registrar_url = json |> member "registrar" |> member "url" |> to_string in
  printf "registrar_url: %s\n" registrar_url;
  
  let registrant_name = json |> member "registrant" |> member "name" |> to_string in
  printf "registrant_name: %s\n" registrant_name;
  let registrant_organization = json |> member "registrant" |> member "organization" |> to_string in
  printf "registrant_organization: %s\n" registrant_organization;
  let registrant_street_address = json |> member "registrant" |> member "street_address" |> to_string in
  printf "registrant_street_address: %s\n" registrant_street_address;
  let registrant_city = json |> member "registrant" |> member "city" |> to_string in
  printf "registrant_city: %s\n" registrant_city;
  let registrant_region = json |> member "registrant" |> member "region" |> to_string in
  printf "registrant_region: %s\n" registrant_region;
  let registrant_zip_code = json |> member "registrant" |> member "zip_code" |> to_string in
  printf "registrant_zip_code: %s\n" registrant_zip_code;
  let registrant_country = json |> member "registrant" |> member "country" |> to_string in
  printf "registrant_country: %s\n" registrant_country;
  let registrant_phone = json |> member "registrant" |> member "phone" |> to_string in
  printf "registrant_phone: %s\n" registrant_phone;
  let registrant_fax = json |> member "registrant" |> member "fax" |> to_string in
  printf "registrant_fax: %s\n" registrant_fax;
  let registrant_email = json |> member "registrant" |> member "email" |> to_string in
  printf "registrant_email: %s\n" registrant_email;
  
  let admin_name = json |> member "admin" |> member "name" |> to_string in
  printf "admin_name: %s\n" admin_name;
  let admin_organization = json |> member "admin" |> member "organization" |> to_string in
  printf "admin_organization: %s\n" admin_organization;
  let admin_street_address = json |> member "admin" |> member "street_address" |> to_string in
  printf "admin_street_address: %s\n" admin_street_address;
  let admin_city = json |> member "admin" |> member "city" |> to_string in
  printf "admin_city: %s\n" admin_city;
  let admin_region = json |> member "admin" |> member "region" |> to_string in
  printf "admin_region: %s\n" admin_region;
  let admin_zip_code = json |> member "admin" |> member "zip_code" |> to_string in
  printf "admin_zip_code: %s\n" admin_zip_code;
  let admin_country = json |> member "admin" |> member "country" |> to_string in
  printf "admin_country: %s\n" admin_country;
  let admin_phone = json |> member "admin" |> member "phone" |> to_string in
  printf "admin_phone: %s\n" admin_phone;
  let admin_fax = json |> member "admin" |> member "fax" |> to_string in
  printf "admin_fax: %s\n" admin_fax;
  let admin_email = json |> member "admin" |> member "email" |> to_string in
  printf "admin_email: %s\n" admin_email;
  
  let tech_name = json |> member "tech" |> member "name" |> to_string in
  printf "tech_name: %s\n" tech_name;
  let tech_organization = json |> member "tech" |> member "organization" |> to_string in
  printf "tech_organization: %s\n" tech_organization;
  let tech_street_address = json |> member "tech" |> member "street_address" |> to_string in
  printf "tech_street_address: %s\n" tech_street_address;
  let tech_city = json |> member "tech" |> member "city" |> to_string in
  printf "tech_city: %s\n" tech_city;
  let tech_region = json |> member "tech" |> member "region" |> to_string in
  printf "tech_region: %s\n" tech_region;
  let tech_zip_code = json |> member "tech" |> member "zip_code" |> to_string in
  printf "tech_zip_code: %s\n" tech_zip_code;
  let tech_country = json |> member "tech" |> member "country" |> to_string in
  printf "tech_country: %s\n" tech_country;
  let tech_phone = json |> member "tech" |> member "phone" |> to_string in
  printf "tech_phone: %s\n" tech_phone;
  let tech_fax = json |> member "tech" |> member "fax" |> to_string in
  printf "tech_fax: %s\n" tech_fax;
  let tech_email = json |> member "tech" |> member "email" |> to_string in
  printf "tech_email: %s\n" tech_email;
  
  let billing_name = json |> member "billing" |> member "name" |> to_string in
  printf "billing_name: %s\n" billing_name;
  let billing_organization = json |> member "billing" |> member "organization" |> to_string in
  printf "billing_organization: %s\n" billing_organization;
  let billing_street_address = json |> member "billing" |> member "street_address" |> to_string in
  printf "billing_street_address: %s\n" billing_street_address;
  let billing_city = json |> member "billing" |> member "city" |> to_string in
  printf "billing_city: %s\n" billing_city;
  let billing_region = json |> member "billing" |> member "region" |> to_string in
  printf "billing_region: %s\n" billing_region;
  let billing_zip_code = json |> member "billing" |> member "zip_code" |> to_string in
  printf "billing_zip_code: %s\n" billing_zip_code;
  let billing_country = json |> member "billing" |> member "country" |> to_string in
  printf "billing_country: %s\n" billing_country;
  let billing_phone = json |> member "billing" |> member "phone" |> to_string in
  printf "billing_phone: %s\n" billing_phone;
  let billing_fax = json |> member "billing" |> member "fax" |> to_string in
  printf "billing_fax: %s\n" billing_fax;
  let billing_email = json |> member "billing" |> member "email" |> to_string in
  printf "billing_email: %s\n" billing_email;
  
  let nameservers = json |> member "nameservers" |> to_list |> List.map (fun x -> x |> to_string) in
  print_endline "nameservers:";
  List.iter (fun x -> x |> print_endline) nameservers;
end
else if (code == 400 || code == 401) && ((member "error" json) <> `Null)
then
begin
  let error_message = json |> member "error" |> member "error_message" |> to_string in
  raise (Ws_exception ("error_message: " ^ error_message));
end
else
  raise (Ws_exception ("HTTP Code: " ^ (Int.to_string code)))

let domain_name = Ip_2_whois.get_domain_name "https://www.example.com/exe";;
printf "domain_name: %s\n" domain_name;;

let domain_extension = Ip_2_whois.get_domain_extension "example.com";;
printf "domain_extension: %s\n" domain_extension;;
