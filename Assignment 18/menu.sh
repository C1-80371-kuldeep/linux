function one
{
echo "Enter the path to list from :"
read path
if [ -e $path ]
then
cd $path
ls
fi
}
function two
{
echo "Enter the path :"
read path
if [ -f $path ]
then
ls -l $file
else
ls -l
fi
}
function three
{
echo "Enter the path :"
read path
if [ -e $path ]
then
echo "Enter the name of the directory to create :"
read dir
mkdir $dir
else
echo "Invalid path"
fi
}
function four
{
echo "Enter the path :"
read path
if [ -e $path ]
then
echo "Enter the name of the file to create :"
read file
touch $file
else
echo "invalid path"
fi
}
function five
{
echo "source :"
read src
echo "destination :"
read dest
if [ -f $src ]
then
cp $src $dest
else
cp -r $src $dest
fi
}
function six
{
echo "source :"
read src
echo "dest :"
read dest
mv $src $dest
}
function seven
{
echo "Enter what you want to delete :"
read del
if [ -f del]
then
rm $del
else
rm -r $del
fi
}

while true;
do

echo "File and directory operations menu :"
echo "------------------------------------"
echo "1.List files and directories in the given path"
echo "2.Display information about a file or directory"
echo "3.create a directory"
echo "4.create a file"
echo "5.copy a file or directory"
echo "6.move or rename a file or directory"
echo "7.Delete a file or directory"
echo "8.Exit"
echo "Enter Your choice:"
read choice
case $choice in
1)
echo " in one"
one
;;
2)
two
;;
3)
three
;;
4)
four
;;
5)
five
;;
6)
six
;;
7)
seven
;;
8)
exit 0
;;
*)
echo "Invalid choice!"
esac
done