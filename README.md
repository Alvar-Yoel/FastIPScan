# FastIPScan.sh
Este proyecto, es un script gratuito y basico basado en bash, sirve para hacer un escaneado rapido de tus IP's,
puedes elegir entre un rango de IP's a mirar si estan activos. Esto es bastante basico ya que lo hace a traves de un ping por
eso hay que tener en cuenta que si el dispositivo tiene desabilitado el ping no lo detectara aun que este activo

Uso:
#chmod +x FastIPScan.sh
#./FastIPScan.sh
Dime el rango de IP's a escanear (Ejemplo: 192.168.1.{1-255}): <IP's a escanear>
Cuando se ejecute empezara a mandar un ping a todo el rango de IP's y a detectar si estan activos

Tambien si quieres puedes cambiarle el nombre a FastIPScan y meterlo en /usr/bin para que lo detecte como un comando del sistema

