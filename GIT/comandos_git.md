
`git config --global --list`
`git config --global user.name "<name>"`
`git config --global user.email "<email>"`

git init: directorio oculto. Contiene datos de los cambios que se han hecho en los archivos del proyecto
`git init`

git status: estado del directorio, nuestra area de preparacion y la diferencia entre los dos (untracked files)
`git status`

git add: agregar un archivo al staging area
`git add <. | filename>`

git commit: crear un nuevo commit
`git commit -m <message>`
<<<<<<< HEAD

git log: ver historial de los commits
`git log`
=======
>>>>>>> b9c6042 (Funcion git cambiar rama)

### BRANCHES

para cambiar el nombre de la rama por defecto
`git config --global init.defaultBranch "<branch_name>"`
<<<<<<< HEAD
=======

para cambiar el nombre de la rama actual
`git branch -m "<branch name>"`
>>>>>>> b9c6042 (Funcion git cambiar rama)

para crear nueva rama
`git branch "<branch_name>"`

para cambiar de rama
`git switch "<branch_name>"`

para crear una nueva rama y cambiar de rama
`git checkout -b "<branch_name>"`

para cambiar de rama o "viajar en el tiempo" entrando a logs pasados
`git checkout "<branch_name>"`

SOLO EN DEV

<<<<<<< HEAD


para juntar 2 branches
`git merge "<branch_name>"`
=======
para juntar ramas
`git merge "<branch_name>"`

### REPOSITORIOS REMOTOS (GITHUB)
`git clone <https | ssh>`

>>>>>>> 3f66391 (Repositorios Remotos)
