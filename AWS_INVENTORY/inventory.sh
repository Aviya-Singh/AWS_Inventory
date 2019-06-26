env=$1
aws_access_key_1=''
aws_secret_key_1=''
aws_access_key_2=''
aws_secret_key_2=''
aws_access_key_3=''
aws_secret_key_3=''
if [ $env == "prod" ]
then
export aws_access_key=$aws_access_key_1
export aws_secret_key=$aws_secret_key_1
elif [ $env == "nonprod" ]
then
export aws_access_key=$aws_access_key_2
export aws_secret_key=$aws_secret_key_2
else
export aws_access_key=$aws_access_key_3
export aws_secret_key=$aws_secret_key_3
fi
Region=$2
ansible-playbook AwsInventory.yml -e "Region=$Region aws_access_key=$aws_access_key aws_secret_key=$aws_secret_key" -vvv
