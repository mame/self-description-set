main = putStrLn $ show a
a = b ++ c
b = [(x,  y+1) | x<-i(0,240), y<-i(0,59), g(kv,240*y+x,2)==1 ]
c = [(x, -y-1) | x<-i(0,240), y<-i(0,419), f(x,y)==1 ]
i(x,y) = [x..y-1]
f(x,y) = g(g(2*fv,g(kv,(4199-60*(div y 6)-(div x 4)),10),1048576),4*(mod y 6)+(mod x 4),2)
g(k,x,b) = mod (k `div` (b^x)) b
fv = 731024063570851866511465264858993450227206304418681785374039
kv = 1431487833696853176700157431078133300807345625216694848338184012552437419109511203005356332157382220125910980063560991517623555426779458108374998395527657247677909074895595656742503620714971445447949816032205608835797741456152776203541674821964596400758396286965810360663931789975321033536203484100496122814529841831743787394631810616749026532989926559403895766010273891624341424956051402380866209593275699599132524711506179859949181425216759850623219990373006596307023609842139011806354869531278068532395563382510855150976555579161971764416717081528488714911685787468504816129267786304366846271992094678299970498416999084953864041189672423035260960944993457061839226224569341128400924526372002507533310230447323881923210921171649507874795436827709309900349750396826449615634743606684179186881368357462279071363542278814057684697868354044595410460464291688008383814256630006036245875654110334361831567984265733963575997826673992303153405863748502067809483905670806504393202044425494592657799072580572630271100058802562605616849380113659574323051410499740443964318168258065803730038913026155804253670544672671911143145886609643713082914866976411113105942007600768469815915466583666525191226878268945354747098880693943458877336005335891768333053354693195358220623048733083505022209908630637529280337995220813112207993433552204654586765086958979888480162464488103287918364224975693733450707290836504692585651088377456502342266421068971125002682016382507064521297736948488866708642756088864932646047761431179316662220068247203529861208184689084009016137661780362327547631929864980074044613301467889143819760069112356024996016608792689682135198614869104547449101119986402517206512725587493979740511764479724360805543948472917803312196004753188346456682676473138985676833206914287797920200726612769188583751563063208533611011856079846367653582298331517115087072802632958422907147905738662327422577247849644899394373041225199887459519392063293132792877369850472109638099139105406433286065477987049578381358476122388968617171395061628363540015908481885566076610189554328138109436809656348934321782490895653083805686474099473195853316609168084418072625166531186858895723458898429422158087691296050023085924060655764081804314490605508327259866869823368116161794692318065691559822096930370995417932255689642010514962466948798495429539774438868550077388638044108929351164744593003867117631013198059729857007659509615987825559311731926143305645385026332030600738355286505721061296771497130358614605743732949870096484827465697370213777896457276402142698830280803299355749453688924415530518232596296810454307608710493768745355355920557453235755211458870292847317977302992362736343853086815265874011562015033767413005037922835331784472477084654865656814204915623827221477874403098743018296269437253626105410301714579777188682380166799002298752523340317777569687811710084041672098312114803705807457991129736865878127704663266890098226484470274069757961701233093835742863665034521396101186534941833116720831439451233108071629397045017951747009005104741164638236979392615040995854911690219112271611373209708433992515931595186249022271596720008987854064114303347165213241917706869859348427984727487128547471909201021620718135526048037196776803290978521176342155837619357583476265127262881973331318412466784314813607775945741858761301603902209265821865938581670279032058958288396014540051418788791830842992296743378825202002290224551857817573237822466871963591702833727637211886254861479833767398677272413274359655795027603214970975176803155589709710226879210641683698663024503314420486728487780868011215882567531077111788507254249403863444646123546075639970604094063476555606366686977382729371109487756535331323826702937476806136443802932581817282606862371089460079209409519484296999369720194986465730420215466829141468814670837884841943431389408716894282730631567500878735394795453451926159884884974703856682828119760531417950425238938622417373313857619757716359622967919563015264803265872587596100174360699696375707862479113430279431969397621392291391699742964814953473465668710335046289852389128487715653344018920953310135147325219269409488691546562939363619835298484565167838648431971508320887024576039267484629693216238087601328784168136411745326701662769188376070899794949::Integer
