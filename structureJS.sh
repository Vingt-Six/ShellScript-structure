function body_html {
    cat <<- EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    


    <script src="./public/js/main.js" type="module"></script>
</body>
</html>
EOF
}

echo "nom de ton projet JS :"
read project_name
mkdir $project_name
touch $project_name/index.html
body_html > $project_name/index.html
mkdir -p $project_name/public/js/module
touch $project_name/public/js/main.js
touch $project_name/consigne.md
echo "Great Job"
code $project_name
cd $project_name
git init
git add *
git commit -m 'Structure fini'
git checkout -b marouane