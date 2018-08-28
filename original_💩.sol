pragma solidity ^0.4.24;

/*******************************************************************************
 *                                                                             *
 *                        SHITCOIN INC PROUDLY PRESENTS                        *
 *                                                                             *
 *          _____ _     _ _            _   __          __        _     _       * 
 *         / ____| |   (_| |          (_)  \ \        / /       | |   | |      *
 *        | (___ | |__  _| |_ ___ ___  _ _ _\ \  /\  / ___  _ __| | __| |      *
 *         \___ \| '_ \| | __/ __/ _ \| | '_ \ \/  \/ / _ \| '__| |/ _` |      *
 *         ____) | | | | | || (_| (_) | | | | \  /\  | (_) | |  | | (_| |      *
 *        |_____/|_| |_|_|\__\___\___/|_|_| |_|\/  \/ \___/|_|  |_|\__,_|💩    *
 *                                                                             *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                                                                             *
 *  Shitcoin World is the home of the Hodlers, mysterious creatures with the   *
 *                   ability to generate Original Shitcoins™.                  *
 *                                                                             *
 *     Please refer to the Shitcoin World FAQ website for more information     *
 *                        https://shitcoinworld.com/faq                        *
 *                                                                             *
 *      For the latest news and updates, visit https://shitcoinworld.com       *
 *                                                                             *
 *        THESE TOKENS ARE ONLY VALID ON ETHEREUM CLASSIC (CHAINID 61)         *
 *                                                                             *
 *******************************************************************************

                                        yyyyso+:.      ```..```             
                                       yds+syyhhdho..://////////:-`             
    STEP INTO                        `:hdysssssoso///:::::::::::://:.           
      SHITCOIN KINGDOM       `.--:+shdhyysssssso://:::::://::://::://:`         
                        -/syhdhhhyssoosssssssso:/::::://::::::::/::::+:`        
                     `/hdyso/////++ossssssssss///://:::::/::::::/:::::+-        
                    .ydysyssyhhhhhhhhyyyyyyyyy//:/:::::::::::::///::::+:        
                  `-hddhhhyyysssssssssssssssss///://:::::::::::::/::::/-        
               ./ydhyysoooossssssssssssssssssso+o/::::/:::::::::::/::/:`        
             :ydhs+//::/+ossssssssssssssssssssssssoo+/::::://::://://-`         
 -:-.       odho/::::+ssssssssssssssssssssssssssssssssso+:::::::///:.      .-:- 
+dhhdy/`   .ddso::/osssssssyyyyyyyyyyyyyyyyyyyyyyyyyyyyyysso/////oo     `/ydhhd+
odys+shh/  .ddyyyyhhhhhhhyyyyyyyssssssssssssssssyyyyyyhhhhhhhyyyydh    /hhoosydo
:dhys+/sdy--odddhyysooosssssssyysssssssssssssssssyyyssssssssyyhhddh/.-yho/osyhd:
 sdyyso+oyddyysso////+ossss/::ohhhhyssssssssssy+::+hhhhssso+//+ossyhddy+ossyydo 
 `hdyyssooydhssssssssssssh.   `yddddysssssssyh:    sddddyssssooossshdyossssydh` 
  :dhysssssshdssssssssssydh+/+ydhyhdhssssssshdh+:/sddhhdhsssssssssdhssssssyhd:  
  oddyysssssshyssssssssssddddddd/`/dysssssssydddddddo`:dyssssssssyhsssssssydo   
 +dhddyssssssysssssssssssshdddddddhyssssoosssshdddddddhssssssssssyyssssssydds   
`hdyydhsssssssssssosssssssssssyysssssso/:/+sssssssysssssssssossossssssssshddd-  
.ddyyhhsssssssssssyssssssssssssssssssssssssssssssssssssssssyysssssssssssshhhd:  
.ddyyyyssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssyydd.  
 ydyyyyssssssssssssssssssssssssyysssssssssssssssyysssssssssssssssssssssssyhds   
 :dhyyyyssssssssssssssssssssssyddhsssssssssssssyddysssssssssssssssssssssyhdy`   
  /ddyyyyssssssssssssssssssssssydddhyssssssssydddyssssssssssssssssssssyyhdo`    
   .oddhyyyssssssssssssssssssssssyhddddddddddddhsssssssssssssssssssyyhhds.      
     `:oyhdhhhyyssssssssssssssssssssssyyyyyysssssssssssssssssssyhhhdhs/`        
          `-:/osyhdhhhhyyyyyyssssssssssssssssssssssssyyyyhhhdhyso/-.            
                  ``.-://+oosssyyyyhhhhhhhhhhhhyyyssso++/:-.`
                  
*/

import './openzeppelin-solidity/contracts/token/ERC20/PausableToken.sol';
import './openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract OriginalShitcoin is PausableToken, MintableToken {
  string public name = "Original Shitcoin™";
  string public symbol = "💩";
  uint8 public decimals = 8;
}
