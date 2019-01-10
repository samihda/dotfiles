#!/bin/awk -f

/^## Germany$/ {
    f=1;
}

f==0 {
    next;
}

/^$/ {
    exit;
}

{
    print substr($0, 2);
}
