for i in *; do
  mv "$i" "`echo $i | sed "s/_\(.\)/_\U\1/g"`";
done

