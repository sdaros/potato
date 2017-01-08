# Maintainer: Stefano Da Ros <sd@cip.li>
pkgname=potato
pkgver=5
pkgrel=1
pkgdesc="A pomodoro timer for the shell (using libnotify)"
arch=('any')
url="https://github.com/sdaros/potato"
license=('MIT')
depends=('alsa-utils')
source=('potato.sh'
        'LICENSE')
sha256sums=('6710516854b4195291b520b4a9b67f9f53a7aa5db72cbac52cac723b869db181'
'SKIP')

package() {
	install -D $srcdir/potato.sh $pkgdir/usr/bin/$pkgname
	install -D -m644 LICENSE $pkgdir/usr/share/licenses/$pkgname/LICENSE
}
