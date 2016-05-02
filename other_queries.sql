select char(9) || count(*) || ' dm2ns'
from dm2ns;

select char(9) || count(*)  || ' domains'
from domains;

select char(9) || count(*) || ' nameservers'
from nameservers;

select char(9) || count(*) || ' scanned'
from scanned;