library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity abc is
Port ( s0 : in STD_LOGIC;
s1 : in STD_LOGIC;
s2 : in STD_LOGIC;
s3 : in STD_LOGIC;
s4 : in STD_LOGIC;
s5 : in STD_LOGIC;
s6 : in STD_LOGIC;
e : in STD_LOGIC;
w : in STD_LOGIC;
n : in STD_LOGIC;
s : in STD_LOGIC;
r : in STD_LOGIC;
v : in STD_LOGIC;
rms0 : out STD_LOGIC;
rms1 : out STD_LOGIC;
rms2 : out STD_LOGIC;
rms3 : out STD_LOGIC;
rms4 : out STD_LOGIC;
rms5 : out STD_LOGIC;
rms6 : out STD_LOGIC;
d : out STD_LOGIC;
win : out STD_LOGIC;
sw : inout STD_LOGIC);
end abc;
architecture operation of abc is
begin
rms6<=s4 and v;
rms5<=s4 and (not v);
rms4<=s2 and e and v;
rms3<=s2 and w;
rms2<=(s1 and s) or (s3 and e and
v);
rms1<=(s0 and e) or (s2 and n) ;
rms0<=r;
sw<=(s2 and w);
win<=(s4 and v);
d<=s4 and (not v);
end operation;
