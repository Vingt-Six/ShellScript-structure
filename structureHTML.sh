function body_html {
    cat <<- EOF 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./public/css/app.css">
</head>
<body>
    

    <script src="./node_modules/bootstrap/dist/js/bootstrap.js"></script>
</body>
</html>
EOF
}

function sass_structure {
    cat <<- EOF
//font
@import ./_font
//variable
@import ./_variable
//fontawesome
$fa-font-path : "../../node_modules/@fortawesome/fontawesome-free/webfonts"
@import "../../node_modules/@fortawesome/fontawesome-free/scss/fontawesome.scss"
@import "../../node_modules/@fortawesome/fontawesome-free/scss/solid.scss"
@import "../../node_modules/@fortawesome/fontawesome-free/scss/brands.scss"
@import "../../node_modules/@fortawesome/fontawesome-free/scss/regular.scss"
//bootstrap
@import ../../node_modules/bootstrap/scss/bootstrap.scss
//style
@import ./modules/_style
EOF
}

echo "Nom du projet"
read project_name
mkdir $project_name
touch $project_name/index.html
body_html > $project_name/index.html
mkdir -p $project_name/public/{css,pages,img}
touch $project_name/public/css/app.css
mkdir -p $project_name/src/sass/module
touch $project_name/src/sass/{app.sass,_variable.sass,_font.sass}
touch $project_name/src/sass/module/_style.sass
sass_structure > $project_name/src/sass/app.sass
echo "YOUPIIIIIII"
code $project_name
cd $project_name
npm init -y
npm i
npm install --save @fortawesome/fontawesome-free
npm install bootstrap
git init
git add *
git commit -m 'Structure fini'
git checkout -b marouane