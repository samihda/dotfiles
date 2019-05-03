#!/bin/awk -f

/^## Germany$/ {
    f=1;
    next;
}

f==1 {
    print substr($0, 1);
    f=0;
}

f==0 {
    next;
}

/^$/ {
    exit;
}
