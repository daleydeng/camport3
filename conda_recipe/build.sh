mkdir -p $PREFIX/{include/camport3,lib}
cp -ar include/*.h $PREFIX/include/camport3
if [ "$ARCH" = "64" ]; then
    cp -ar lib/linux/lib_x64/* $PREFIX/lib
elif [ "$ARCH" = "aarch64" ]; then
    cp -ar lib/linux/lib_Aarch64/* $PREFIX/lib
fi
