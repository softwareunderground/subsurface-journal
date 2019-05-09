for filename in `find ./submissions -name requirements.txt`
do
  echo $filename
  pip install -r $filename
done

for filename in `find ./submissions -name "*.ipynb"`
do
  cd $(dirname "$filename")
  notebook=$(basename "$filename")
  bash -c "jupyter nbconvert --to notebook --execute $notebook"
  $notebook="${notebook%.*}.nbconvert.ipynb"
  py.test --nbval $notebook
done

