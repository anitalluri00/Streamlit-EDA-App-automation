cd
yum install git docker -y
systemctl start docker
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -q)
docker system prune -a
git clone https://github.com/anitalluri00/Streamlit-EDA-App.git
cd Streamlit-EDA-App
docker build -t eda-app .
docker run -p 8501:8501 eda-app
