source images.sh
for image in "${images[@]}"
do
  docker build -t "$image" "$image"/.
  if [ $? -ne 0 ]
  then
    break
  fi
done

