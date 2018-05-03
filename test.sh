source images.sh
for image in "${images[@]}"
do
  cd "$image" && rspec . && cd ..
  if [ $? -ne 0 ]
  then
    cd ..
    break
  fi
done

