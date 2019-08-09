# Grep exclude rules
excludeRules="--exclude-dir="\node_modules" --exclude-dir=".vscode" --exclude-dir="\temp" --exclude-dir="\evidence\examples\portfolio-examples"  --exclude="goals-progress*.md" --exclude="feedback.md" --exclude="personal.md" --exclude="training.md" --exclude="portfolio.md" --exclude="useful.md" --exclude="temp/output-file*.md" --exclude="temp/goals-group*.md" --exclude="output-file*.md" --include="*.md" ./  "

#  CREATE FILE

function createFile {
    filePath=$1
    if [ ! -f ${filePath} ]; then
        touch ${filePath}
    fi
}

#  FIND LINES

function findLines {
    filePath=$1
    findRules=$2
    grep -r "$findRules" $excludeRules | sed G > ${filePath}
}

#  SORT FILE

function sortFile {
    filePath=$1
    sort -r ${filePath} -o ${filePath}
}

#  ADD SPACES

function addSpaces {
    filePath=$1
    sed -i "" '/^[[:space:]]*$/d' ${filePath}

sed -i '' -e 's/$/\
\
---\
/g' ${filePath}
}

#  FORMAT LINES

function formatLine {
    filePath=$1
    findRegex=$2
    replaceRegex=$3

    sed -i '' -e "s/$findRegex/$replaceRegex/g" ${filePath}
}

#  CLEAN MARKDOWN FILE

function cleanFile {
    filePath=$1

    sed -i '' -e 's/```.*//g' ${filePath}
}

# RUN ALL

function runAll {
    filePath=$1
    findRules=$2

    createFile $filePath
    findLines $filePath $findRules
    sortFile $filePath
    addSpaces $filePath
}
