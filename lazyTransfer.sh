if [ ! -f ~/.ssh/config ]; then
    touch ~/.ssh/config
fi

if grep -q dimefox.eng.unimelb.edu.au ~/.ssh/config
then
    # code if found
    :
else
    # code if not found
    echo "Your UoM Login ID:"
    read login_id
    echo "Host enguom" >> ~/.ssh/config
    echo "    HostName dimefox.eng.unimelb.edu.au" >> ~/.ssh/config
    echo "    User" $login_id >> ~/.ssh/config
fi

scp $1 enguom:
ssh enguom
