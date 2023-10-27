(name bin)
(description "Native project containing a binary")

(config project_name
  (input (prompt "Project name:")))

(config project_slug
  (default (slugify :project_name)))

(config project_snake
  (default (snake_case :project_slug)))

(config project_description
  (input (prompt "Description:"))
  (default "A short, but powerful statement about your project")
  (rules
    ("The last character of the description cannot be a \".\" to comply with Opam"
      (neq . (last_char :project_description)))))

(config author_name
  (input (prompt "Name of the author:")))

; We need to do this because Dune won't copy .github during build
(post_gen
  (actions
    ((run mv github .github)
     (run mv vscode .vscode))))

(example_commands
  (commands
    ((make "Build the project."))))
