# Information coming from: https://bastianolea.rbind.io/blog/tutorial_quarto_github_pages/
# Also review: https://bastianolea.rbind.io/blog/r_introduccion/tutorial_github/


#install.packages("usethis")
#install.packages("gitcreds")
#install.packages("gh")
#pak::pak("r-lib/gh")
library(usethis)
library(gitcreds)
library(gh)

#0.  crear un repositorio local.

# 1. Configurar nombre de usuario y correo Luego, tienes que registrar cuál es tu cuenta de GitHub.
usethis::use_git_config(user.name = "drjoseluisheram", user.email = "drjoseluisheram@gmail.com")



#2. Crear un token en GitHub para permitir el acceso de R a tu cuenta Es necesario hacer esto para permitir que tu computador pueda usar tu cuenta de GitHub. Se hace por medio de tokens para no tener que escribir tu contraseña. Es una medida más segura para poder iniciar sesión en un servicio online, porque además siempre puedes revocar la autorización desde tu cuenta de GitHub.
usethis::create_github_token()

#3 Se abrirá una ventana de GitHub en la que podrás generar y copiar el token. Ejecuta la siguiente función, y cuando la consola te lo indique, pega el token que copiaste:
#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

#gitcreds_get()
#gitcreds_set()


#4. Confirmar que está funcionando bien:
usethis::git_sitrep()

#Crear un repositorio local
usethis::use_github()

#Subir el repositorio local a GitHub - Una vez creado, no es necesario hacerlo todo el tiempo
 usethis::use_git_remote("origin", url = "https://github.com/drjoseluisheram/Quarto-DrJoseLuisHeram.git", overwrite = TRUE)
 
usethis::use_readme()




