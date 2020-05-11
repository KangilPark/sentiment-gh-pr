
input=$1
while IFS= read -r line
do
  curl -d "text=$line" http://text-processing.com/api/sentiment/ << ./NLTK/$1.txt
done < "$input"
