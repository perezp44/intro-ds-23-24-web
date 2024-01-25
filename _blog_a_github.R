#- para llevar el blog a Github

#usethis::use_git_config(user.name = "Jane", user.email = "jane@example.org")

#- GIT (activando) -------------------------------------------------------------
usethis::use_git()  #- activa GIT. Le h dicho que SÍ. Se reinicia RStudio para q aparezca git pane


#- GITHUB ----------------------------------------------------------------------
#-  Una vez RStudio se haya reiniciado, ejecutas en la CONSOLA: usethis::use_github()  . Te preguntará que qué git protocol quieres usar. Selecciona https. Te preguntará si la Description está OK. Le dices que SI. Se creará el repo en Github y añadirá el remote origin y alguna cosa mas y lo dejará casi niquelado.
usethis::use_github() #- no funciono a la primera tuve q hacer: 

#- tuve q hacer:
#- Sys.unsetenv("GITHUB_PAT")
#- gitcreds::gitcreds_set() 
#- remover el token y volverlo a meter

#- ahora ya SI
usethis::use_github() #- funciono


#usethis::gh_token_help() #- deberia guardar el TOKEN, pero ...
#- si el usethis::use_github() no funcionase, tendrías que hacerlo a mano:
#- 1) te vas a Github y creas un repo con el mimos nombre
#- haces 1) git add -A 2) git commit --all --message "adding origin to the local repo"
#- 3) git remote add origin https://github.com/perezp44/pjpv.datos.01.git
#- 4) git push -u origin master


#- Subiendo a Github -------------------------
credentials::set_github_pat()
git add -A
git commit --all --message "todo a Github"
git push -u origin master



#- Tuneando el repo de Github
usethis::use_readme_md()                           #- modifica a tu gusto la README.md
usethis::use_github_links() #- Populates the URL and BugReports fields of a GitHub-using R package with appropriate links.


#-  MAS COSAS ------------------------------

#- en la documentacion antigua tienes cosas como hacer la vignettes y tb hacer checks etc...


#- CHECK -------------------------------------------------
devtools::document()


devtools::check(cran = FALSE)     #- chequea
devtools::check()                 #- chequea

devtools::build()
