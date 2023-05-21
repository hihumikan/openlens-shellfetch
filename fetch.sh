curl -s https://api.github.com/repos/MuhammedKalkan/OpenLens/releases/latest \
| grep "browser_download_url.*AppImage" \
| grep -v "\.sha256" \
| grep -v "arm64" \
| cut -d : -f 2,3 \
| tr -d \" \
| xargs -I {} sh -c 'wget {} -O OpenLens.x86_64.AppImage && chmod +x OpenLens.x86_64.AppImage'

sudo apt install libatk1.0-0 libatk-bridge2.0-dev libcups2 libgtk3.0-cil-dev libgbm-dev libnss3-dev

./OpenLens.x86_64.AppImage

