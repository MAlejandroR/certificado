git add *
git commit -m "actualizando contenido"
git push origin main

sudo rm ./public -r
hugo -d public
rsync -avz -e "ssh -p 22022" ./public/ inaem@infenlaces.com:web/certificado.infenlaces.com/public_html/contenido/

