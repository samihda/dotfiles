#!/bin/awk -f

/^## Germany$/ {
    f=1;
    next;
}

f==0 {
    next;
}

/^$/ {
    exit;
}

/#Server = https:\/\// {
    print substr($0, 2);
}
