LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hex_seven_seg_vhd_tst IS
END hex_seven_seg_vhd_tst;
ARCHITECTURE hex_seven_seg_arch OF hex_seven_seg_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL hexin : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seven_seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT hex_seven_seg
	PORT (
	hexin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	seven_seg : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : hex_seven_seg
	PORT MAP (
-- list connections between master ports and signals
	hexin => hexin,
	seven_seg => seven_seg
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once	
	    	  
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list 
		  hexin <="0000";
       wait for 100 ns;
       hexin <="0001";
       wait for 100 ns;
       hexin <="0010";
       wait for 100 ns;
       hexin <="0011";
       wait for 100 ns;
       hexin <="0100";
       wait for 100 ns;
       hexin <="0101";
       wait for 100 ns;
       hexin <="0110";
       wait for 100 ns;
       hexin <="0111";
       wait for 100 ns;
       hexin <="1000";
       wait for 100 ns;
       hexin <="1001";
       wait for 100 ns;
       hexin <="1010";
       wait for 100 ns;
       hexin <="1011";
       wait for 100 ns;
       hexin <="1100";
       wait for 100 ns;
       hexin <="1101";
       wait for 100 ns;
       hexin <="1110";
       wait for 100 ns;
       hexin <="1111";
       wait for 100 ns; 
		 
WAIT;                                                        
END PROCESS always;                                          
END hex_seven_seg_arch;
