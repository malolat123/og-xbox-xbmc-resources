$katalogi=get-childItem
ForEach ($k in $katalogi) {
	$kat=$k.name
	$path=$kat+'\_resources\artwork'
	$path
	New-Item -Name $path -ItemType "directory"

	move-item $kat\*.jpg $path
	move-item $kat\*.png $path
	
}