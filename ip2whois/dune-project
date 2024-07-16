(lang dune 3.4)

(name ip2whois)

(version 1.0.0)

(generate_opam_files true)
(implicit_transitive_deps false)

(source
 (github ip2whois/ip2whois-ocaml))

(authors "IP2Whois.com")

(maintainers "IP2Whois.com")

(license MIT)

(documentation https://github.com/ip2whois/ip2whois-ocaml)

(package
 (name ip2whois)
 (synopsis "IP2WHOIS OCaml module to get WHOIS data")
 (description "IP2WHOIS OCaml module enables user to easily implement the checking of WHOIS information for a particular domain into their solution using the API from www.ip2whois.com. ")
 (depends (ocaml (>= "4.14.1")) dune lwt (lwt (= unix)) cohttp cohttp-lwt-unix uri (yojson (>= "2.2.2")))
 (tags (ip2whois domain whois)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
