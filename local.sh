if [ "x$1" = "x" ]; then
  echo "You have to specify which action to be executed. [ gen ]" 1>&2
  exit 1
fi

# gen
if [ "x$1" = "xgen" ]; then
  flutter pub run build_runner build --delete-conflicting-outputs
fi
