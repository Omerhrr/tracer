# build_file.sh
echo "Building new project"


# build_files.sh
echo "Upgrading pip"
pip install --upgrade pip
echo "Installing Django"
pip install django
echo "Installing MysqlClient"
pip install mysqlclient
echo "Installing Requirements"
pip install -r requirements.txt

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear

echo "Making Migrations"
python3.9 manage.py makemigrations --noinput 

python3.9 manage.py migrate --noinput 

