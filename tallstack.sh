#!/bin/bash

read -p "This requires a fresh Laravel install. Ready to run in this folder? " -n 1 -r
echo    
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

# This allows us to copy from the folder this is in to the new TALL Stack
TALLSTACKSCRIPTDIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "Installing Livewire"
composer require livewire/livewire

echo "Running npm install && npx mix"
npm i && npx mix

echo "Installing AlpineJS and TailwindCSS with @tailwindcss/forms and @tailwindcss/typography"
npm install -D tailwindcss@latest postcss@latest autoprefixer@latest @tailwindcss/typography @tailwindcss/forms

echo "Running tailwindcss init"
npx tailwindcss init

echo "rewriting tailwind.config.js"
cp $TALLSTACKSCRIPTDIR/tailwind.config.js $PWD/tailwind.config.js

echo 'rewriting webpack.mix.js'
cp $TALLSTACKSCRIPTDIR/webpack.mix.js $PWD/webpack.mix.js

echo 'rewriting app.js'
cp $TALLSTACKSCRIPTDIR/app.js $PWD/resources/js/app.js

echo 'rewriting app.css'
cp $TALLSTACKSCRIPTDIR/app.css $PWD/resources/css/app.css

echo 'running npx mix'
npx mix

echo "Now you just have to edit your views and you are done!"
echo "This doesn't edit views because it helps with your own personal preference."