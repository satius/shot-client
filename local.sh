if [ "x$1" = "x" ]; then
  echo "You have to specify which action to be executed. [ gen, deploy-web ]" 1>&2
  exit 1
fi

# gen
if [ "x$1" = "xgen" ]; then
  flutter pub run build_runner build --delete-conflicting-outputs
fi

# deploy-web
if [ "x$1" = "xdeploy-web" ]; then
  flutter build web && firebase deploy
fi
