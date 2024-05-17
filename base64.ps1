$filebytes=[system.io.file]::readallbytes('test.txt')
$filestr=[text.encoding]::UTF8.getstring($filebytes)
$unicodebytes=[system.text.encoding]::unicode.getbytes($filestr)
$encoded=[Convert]::tobase64string($unicodebytes)
$encoded
