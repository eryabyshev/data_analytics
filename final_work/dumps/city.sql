--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5 (Debian 10.5-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    code character varying(255),
    name text
);


ALTER TABLE public.city OWNER TO postgres;

--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.city (code, name) FROM stdin;
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
ROA	Roanoke, VA: Roanoke Blacksburg Regional Woodrum Field
ROC	Rochester, NY: Greater Rochester International
ROW	Roswell, NM: Roswell International Air Center
RST	Rochester, MN: Rochester International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SDF	Louisville, KY: Louisville International-Standiford Field
SGF	Springfield, MO: Springfield-Branson National
SHV	Shreveport, LA: Shreveport Regional
SJT	San Angelo, TX: San Angelo Regional/Mathis Field
SPI	Springfield, IL: Abraham Lincoln Capital
SPS	Wichita Falls, TX: Sheppard AFB/Wichita Falls Municipal
STL	St. Louis, MO: St Louis Lambert International
SUX	Sioux City, IA: Sioux Gateway/Col. Bud Day Field
SWO	Stillwater, OK: Stillwater Regional
SYR	Syracuse, NY: Syracuse Hancock International
TLH	Tallahassee, FL: Tallahassee International
TOL	Toledo, OH: Toledo Express
TUL	Tulsa, OK: Tulsa International
TVC	Traverse City, MI: Cherry Capital
TXK	Texarkana, AR: Texarkana Regional-Webb Field
TYR	Tyler, TX: Tyler Pounds Regional
TYS	Knoxville, TN: McGhee Tyson
XNA	Fayetteville, AR: Northwest Arkansas Regional
ACY	Atlantic City, NJ: Atlantic City International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
BDL	Hartford, CT: Bradley International
BOS	Boston, MA: Logan International
BQN	Aguadilla, PR: Rafael Hernandez
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
CAK	Akron, OH: Akron-Canton Regional
CLE	Cleveland, OH: Cleveland-Hopkins International
CMH	Columbus, OH: John Glenn Columbus International
CRW	Charleston/Dunbar, WV: Yeager
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DTW	Detroit, MI: Detroit Metro Wayne County
EWR	Newark, NJ: Newark Liberty International
FLL	Fort Lauderdale, FL: Fort Lauderdale-Hollywood International
IAG	Niagara Falls, NY: Niagara Falls International
IAH	Houston, TX: George Bush Intercontinental/Houston
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LBE	Latrobe, PA: Arnold Palmer Regional
LGA	New York, NY: LaGuardia
MCI	Kansas City, MO: Kansas City International
MCO	Orlando, FL: Orlando International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MYR	Myrtle Beach, SC: Myrtle Beach International
OAK	Oakland, CA: Metropolitan Oakland International
ORD	Chicago, IL: Chicago OHare International
PBG	Plattsburgh, NY: Plattsburgh International
PDX	Portland, OR: Portland International
PHL	Philadelphia, PA: Philadelphia International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PIT	Pittsburgh, PA: Pittsburgh International
RIC	Richmond, VA: Richmond International
RSW	Fort Myers, FL: Southwest Florida International
SAN	San Diego, CA: San Diego International
SEA	Seattle, WA: Seattle/Tacoma International
SJU	San Juan, PR: Luis Munoz Marin International
STT	Charlotte Amalie, VI: Cyril E King
TPA	Tampa, FL: Tampa International
ABE	Allentown/Bethlehem/Easton, PA: Lehigh Valley International
AGS	Augusta, GA: Augusta Regional at Bush Field
ALB	Albany, NY: Albany International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
AUS	Austin, TX: Austin - Bergstrom International
AVL	Asheville, NC: Asheville Regional
AVP	Scranton/Wilkes-Barre, PA: Wilkes Barre Scranton International
BDL	Hartford, CT: Bradley International
BGR	Bangor, ME: Bangor International
BHM	Birmingham, AL: Birmingham-Shuttlesworth International
BNA	Nashville, TN: Nashville International
BTR	Baton Rouge, LA: Baton Rouge Metropolitan/Ryan Field
BTV	Burlington, VT: Burlington International
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
CAE	Columbia, SC: Columbia Metropolitan
CAK	Akron, OH: Akron-Canton Regional
CHA	Chattanooga, TN: Lovell Field
CHO	Charlottesville, VA: Charlottesville Albemarle
CHS	Charleston, SC: Charleston AFB/International
CID	Cedar Rapids/Iowa City, IA: The Eastern Iowa
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
CRW	Charleston/Dunbar, WV: Yeager
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DAB	Daytona Beach, FL: Daytona Beach International
DAY	Dayton, OH: James M Cox/Dayton International
DCA	Washington, DC: Ronald Reagan Washington National
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
EVV	Evansville, IN: Evansville Regional
EWN	New Bern/Morehead/Beaufort, NC: Coastal Carolina Regional
FAY	Fayetteville, NC: Fayetteville Regional/Grannis Field
FWA	Fort Wayne, IN: Fort Wayne International
GNV	Gainesville, FL: Gainesville Regional
GPT	Gulfport/Biloxi, MS: Gulfport-Biloxi International
MOT	Minot, ND: Minot International
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
GSP	Greer, SC: Greenville-Spartanburg International
HPN	White Plains, NY: Westchester County
HSV	Huntsville, AL: Huntsville International-Carl T Jones Field
HTS	Ashland, WV: Tri-State/Milton J. Ferguson Field
HVN	New Haven, CT: Tweed New Haven
IAD	Washington, DC: Washington Dulles International
ILM	Wilmington, NC: Wilmington International
IND	Indianapolis, IN: Indianapolis International
JAN	Jackson/Vicksburg, MS: Jackson Medgar Wiley Evers International
JAX	Jacksonville, FL: Jacksonville International
LEX	Lexington, KY: Blue Grass
LGA	New York, NY: LaGuardia
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
LYH	Lynchburg, VA: Lynchburg Regional/Preston Glenn Field
MCI	Kansas City, MO: Kansas City International
MDT	Harrisburg, PA: Harrisburg International
MEM	Memphis, TN: Memphis International
MGM	Montgomery, AL: Montgomery Regional
MHT	Manchester, NH: Manchester-Boston Regional
MKE	Milwaukee, WI: General Mitchell International
MLB	Melbourne, FL: Melbourne International
MOB	Mobile, AL: Mobile Regional
MSN	Madison, WI: Dane County Regional-Truax Field
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MYR	Myrtle Beach, SC: Myrtle Beach International
OAJ	Jacksonville/Camp Lejeune, NC: Albert J Ellis
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
PGV	Greenville, NC: Pitt Greenville
PHF	Newport News/Williamsburg, VA: Newport News/Williamsburg International
PHL	Philadelphia, PA: Philadelphia International
PIA	Peoria, IL: General Downing - Peoria International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RAP	Rapid City, SD: Rapid City Regional
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
ROA	Roanoke, VA: Roanoke Blacksburg Regional Woodrum Field
ROC	Rochester, NY: Greater Rochester International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SDF	Louisville, KY: Louisville International-Standiford Field
SHV	Shreveport, LA: Shreveport Regional
SRQ	Sarasota/Bradenton, FL: Sarasota/Bradenton International
STL	St. Louis, MO: St Louis Lambert International
SYR	Syracuse, NY: Syracuse Hancock International
TLH	Tallahassee, FL: Tallahassee International
TOL	Toledo, OH: Toledo Express
TRI	Bristol/Johnson City/Kingsport, TN: Tri Cities
TUL	Tulsa, OK: Tulsa International
TYS	Knoxville, TN: McGhee Tyson
VPS	Valparaiso, FL: Eglin AFB Destin Fort Walton Beach
XNA	Fayetteville, AR: Northwest Arkansas Regional
ABE	Allentown/Bethlehem/Easton, PA: Lehigh Valley International
ABQ	Albuquerque, NM: Albuquerque International Sunport
ABR	Aberdeen, SD: Aberdeen Regional
ABY	Albany, GA: Southwest Georgia Regional
ACV	Arcata/Eureka, CA: California Redwood Coast Humboldt County
AEX	Alexandria, LA: Alexandria International
AGS	Augusta, GA: Augusta Regional at Bush Field
ALB	Albany, NY: Albany International
APN	Alpena, MI: Alpena County Regional
ASE	Aspen, CO: Aspen Pitkin County Sardy Field
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
ATW	Appleton, WI: Appleton International
AUS	Austin, TX: Austin - Bergstrom International
AVL	Asheville, NC: Asheville Regional
AVP	Scranton/Wilkes-Barre, PA: Wilkes Barre Scranton International
AZO	Kalamazoo, MI: Kalamazoo/Battle Creek International
BDL	Hartford, CT: Bradley International
BFF	Scottsbluff, NE: Western Neb. Regional/William B. Heilig Field
BFL	Bakersfield, CA: Meadows Field
BGM	Binghamton, NY: Greater Binghamton/Edwin A. Link Field
BGR	Bangor, ME: Bangor International
BHM	Birmingham, AL: Birmingham-Shuttlesworth International
BIL	Billings, MT: Billings Logan International
BIS	Bismarck/Mandan, ND: Bismarck Municipal
BJI	Bemidji, MN: Bemidji Regional
BMI	Bloomington/Normal, IL: Central Illinois Regional
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BOS	Boston, MA: Logan International
BRD	Brainerd, MN: Brainerd Lakes Regional
BRO	Brownsville, TX: Brownsville South Padre Island International
BTM	Butte, MT: Bert Mooney
BTR	Baton Rouge, LA: Baton Rouge Metropolitan/Ryan Field
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BUR	Burbank, CA: Bob Hope
BZN	Bozeman, MT: Bozeman Yellowstone International
CAE	Columbia, SC: Columbia Metropolitan
CAK	Akron, OH: Akron-Canton Regional
CDC	Cedar City, UT: Cedar City Regional
CGI	Cape Girardeau, MO: Cape Girardeau Regional
CHA	Chattanooga, TN: Lovell Field
CHO	Charlottesville, VA: Charlottesville Albemarle
CHS	Charleston, SC: Charleston AFB/International
CID	Cedar Rapids/Iowa City, IA: The Eastern Iowa
CIU	Sault Ste. Marie, MI: Chippewa County International
CKB	Clarksburg/Fairmont, WV: North Central West Virginia
CLE	Cleveland, OH: Cleveland-Hopkins International
CLL	College Station/Bryan, TX: Easterwood Field
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
CMX	Hancock/Houghton, MI: Houghton County Memorial
CNY	Moab, UT: Canyonlands Field
COD	Cody, WY: Yellowstone Regional
COS	Colorado Springs, CO: City of Colorado Springs Municipal
COU	Columbia, MO: Columbia Regional
CPR	Casper, WY: Casper/Natrona County International
CRW	Charleston/Dunbar, WV: Yeager
CSG	Columbus, GA: Columbus Airport
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
CWA	Mosinee, WI: Central Wisconsin
DAL	Dallas, TX: Dallas Love Field
DAY	Dayton, OH: James M Cox/Dayton International
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DHN	Dothan, AL: Dothan Regional
DLH	Duluth, MN: Duluth International
DRO	Durango, CO: Durango La Plata County
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
DVL	Devils Lake, ND: Devils Lake Regional
EAU	Eau Claire, WI: Chippewa Valley Regional
EGE	Eagle, CO: Eagle County Regional
EKO	Elko, NV: Elko Regional
ELP	El Paso, TX: El Paso International
ERI	Erie, PA: Erie International/Tom Ridge Field
ESC	Escanaba, MI: Delta County
EUG	Eugene, OR: Mahlon Sweet Field
EVV	Evansville, IN: Evansville Regional
EWN	New Bern/Morehead/Beaufort, NC: Coastal Carolina Regional
EWR	Newark, NJ: Newark Liberty International
FAR	Fargo, ND: Hector International
FAT	Fresno, CA: Fresno Yosemite International
FCA	Kalispell, MT: Glacier Park International
FLG	Flagstaff, AZ: Flagstaff Pulliam
FNT	Flint, MI: Bishop International
FSD	Sioux Falls, SD: Joe Foss Field
FSM	Fort Smith, AR: Fort Smith Regional
FWA	Fort Wayne, IN: Fort Wayne International
GCC	Gillette, WY: Gillette Campbell County
GEG	Spokane, WA: Spokane International
GFK	Grand Forks, ND: Grand Forks International
GJT	Grand Junction, CO: Grand Junction Regional
GNV	Gainesville, FL: Gainesville Regional
GRB	Green Bay, WI: Green Bay Austin Straubel International
GRK	Killeen, TX: Robert Gray AAF
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
GSP	Greer, SC: Greenville-Spartanburg International
GTF	Great Falls, MT: Great Falls International
HDN	Hayden, CO: Yampa Valley
HIB	Hibbing, MN: Range Regional
HLN	Helena, MT: Helena Regional
HPN	White Plains, NY: Westchester County
HSV	Huntsville, AL: Huntsville International-Carl T Jones Field
HYS	Hays, KS: Hays Regional
IAD	Washington, DC: Washington Dulles International
IAH	Houston, TX: George Bush Intercontinental/Houston
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
IDA	Idaho Falls, ID: Idaho Falls Regional
IMT	Iron Mountain/Kingsfd, MI: Ford
IND	Indianapolis, IN: Indianapolis International
INL	International Falls, MN: Falls International Einarson Field
ISN	Williston, ND: Sloulin Field International
ITH	Ithaca/Cortland, NY: Ithaca Tompkins Regional
JAC	Jackson, WY: Jackson Hole
JAX	Jacksonville, FL: Jacksonville International
JFK	New York, NY: John F. Kennedy International
JMS	Jamestown, ND: Jamestown Regional
KTN	Ketchikan, AK: Ketchikan International
LAN	Lansing, MI: Capital Region International
LAR	Laramie, WY: Laramie Regional
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LBB	Lubbock, TX: Lubbock Preston Smith International
LBF	North Platte, NE: North Platte Regional Airport Lee Bird Field
LBL	Liberal, KS: Liberal Mid-America Regional
LEX	Lexington, KY: Blue Grass
LFT	Lafayette, LA: Lafayette Regional Paul Fournet Field
LGA	New York, NY: LaGuardia
LGB	Long Beach, CA: Long Beach Airport
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
LNK	Lincoln, NE: Lincoln Airport
LSE	La Crosse, WI: La Crosse Regional
LWB	Lewisburg, WV: Greenbrier Valley
LWS	Lewiston, ID: Lewiston Nez Perce County
MAF	Midland/Odessa, TX: Midland International Air and Space Port
MBS	Saginaw/Bay City/Midland, MI: MBS International
MCI	Kansas City, MO: Kansas City International
MDT	Harrisburg, PA: Harrisburg International
MDW	Chicago, IL: Chicago Midway International
MEI	Meridian, MS: Key Field
MEM	Memphis, TN: Memphis International
MFR	Medford, OR: Rogue Valley International - Medford
MGM	Montgomery, AL: Montgomery Regional
MHT	Manchester, NH: Manchester-Boston Regional
MKE	Milwaukee, WI: General Mitchell International
MKG	Muskegon, MI: Muskegon County
MLI	Moline, IL: Quad City International
MLU	Monroe, LA: Monroe Regional
MOB	Mobile, AL: Mobile Regional
MQT	Marquette, MI: Sawyer International
MRY	Monterey, CA: Monterey Regional
MSN	Madison, WI: Dane County Regional-Truax Field
MSO	Missoula, MT: Missoula International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MTJ	Montrose/Delta, CO: Montrose Regional
OAJ	Jacksonville/Camp Lejeune, NC: Albert J Ellis
OAK	Oakland, CA: Metropolitan Oakland International
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ONT	Ontario, CA: Ontario International
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
OTH	North Bend/Coos Bay, OR: Southwest Oregon Regional
PAH	Paducah, KY: Barkley Regional
PBG	Plattsburgh, NY: Plattsburgh International
PDX	Portland, OR: Portland International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PIA	Peoria, IL: General Downing - Peoria International
PIB	Hattiesburg/Laurel, MS: Hattiesburg-Laurel Regional
PIH	Pocatello, ID: Pocatello Regional
PIT	Pittsburgh, PA: Pittsburgh International
PLN	Pellston, MI: Pellston Regional Airport of Emmet County
PNS	Pensacola, FL: Pensacola International
PRC	Prescott, AZ: Ernest A. Love Field
PSC	Pasco/Kennewick/Richland, WA: Tri Cities
PSP	Palm Springs, CA: Palm Springs International
PUB	Pueblo, CO: Pueblo Memorial
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RAP	Rapid City, SD: Rapid City Regional
RDD	Redding, CA: Redding Municipal
RDM	Bend/Redmond, OR: Roberts Field
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RHI	Rhinelander, WI: Rhinelander/Oneida County
RIC	Richmond, VA: Richmond International
RKS	Rock Springs, WY: Rock Springs Sweetwater County
RNO	Reno, NV: Reno/Tahoe International
ROA	Roanoke, VA: Roanoke Blacksburg Regional Woodrum Field
ROC	Rochester, NY: Greater Rochester International
ROW	Roswell, NM: Roswell International Air Center
RST	Rochester, MN: Rochester International
SAF	Santa Fe, NM: Santa Fe Municipal
SAN	San Diego, CA: San Diego International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SBA	Santa Barbara, CA: Santa Barbara Municipal
SBN	South Bend, IN: South Bend International
SBP	San Luis Obispo, CA: San Luis County Regional
SCE	State College, PA: University Park
SDF	Louisville, KY: Louisville International-Standiford Field
SEA	Seattle, WA: Seattle/Tacoma International
SFO	San Francisco, CA: San Francisco International
SGF	Springfield, MO: Springfield-Branson National
SGU	St. George, UT: St George Regional
SHD	Staunton, VA: Shenandoah Valley Regional
SHV	Shreveport, LA: Shreveport Regional
SIT	Sitka, AK: Sitka Rocky Gutierrez
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SLC	Salt Lake City, UT: Salt Lake City International
SLN	Salina, KS: Salina Regional
SMF	Sacramento, CA: Sacramento International
SNA	Santa Ana, CA: John Wayne Airport-Orange County
SPI	Springfield, IL: Abraham Lincoln Capital
STL	St. Louis, MO: St Louis Lambert International
STS	Santa Rosa, CA: Charles M. Schulz - Sonoma County
SUN	Sun Valley/Hailey/Ketchum, ID: Friedman Memorial
SWF	Newburgh/Poughkeepsie, NY: Stewart International
SYR	Syracuse, NY: Syracuse Hancock International
TOL	Toledo, OH: Toledo Express
TPA	Tampa, FL: Tampa International
TRI	Bristol/Johnson City/Kingsport, TN: Tri Cities
TUL	Tulsa, OK: Tulsa International
TUS	Tucson, AZ: Tucson International
TVC	Traverse City, MI: Cherry Capital
TWF	Twin Falls, ID: Joslin Field - Magic Valley Regional
TYS	Knoxville, TN: McGhee Tyson
UIN	Quincy, IL: Quincy Regional-Baldwin Field
VEL	Vernal, UT: Vernal Regional
VLD	Valdosta, GA: Valdosta Regional
WYS	West Yellowstone, MT: Yellowstone
XNA	Fayetteville, AR: Northwest Arkansas Regional
YUM	Yuma, AZ: Yuma MCAS/Yuma International
ABQ	Albuquerque, NM: Albuquerque International Sunport
ALB	Albany, NY: Albany International
ANC	Anchorage, AK: Ted Stevens Anchorage International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
AUS	Austin, TX: Austin - Bergstrom International
AVL	Asheville, NC: Asheville Regional
BDL	Hartford, CT: Bradley International
BGR	Bangor, ME: Bangor International
BIL	Billings, MT: Billings Logan International
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BOS	Boston, MA: Logan International
BQN	Aguadilla, PR: Rafael Hernandez
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BUR	Burbank, CA: Bob Hope
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
BZN	Bozeman, MT: Bozeman Yellowstone International
CHS	Charleston, SC: Charleston AFB/International
CID	Cedar Rapids/Iowa City, IA: The Eastern Iowa
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
CRP	Corpus Christi, TX: Corpus Christi International
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DLH	Duluth, MN: Duluth International
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
ELP	El Paso, TX: El Paso International
EUG	Eugene, OR: Mahlon Sweet Field
EWR	Newark, NJ: Newark Liberty International
FAI	Fairbanks, AK: Fairbanks International
FAT	Fresno, CA: Fresno Yosemite International
FCA	Kalispell, MT: Glacier Park International
FLL	Fort Lauderdale, FL: Fort Lauderdale-Hollywood International
FSD	Sioux Falls, SD: Joe Foss Field
GEG	Spokane, WA: Spokane International
GRR	Grand Rapids, MI: Gerald R. Ford International
GUM	Guam, TT: Guam International
HNL	Honolulu, HI: Daniel K Inouye International
IAD	Washington, DC: Washington Dulles International
IAH	Houston, TX: George Bush Intercontinental/Houston
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
IND	Indianapolis, IN: Indianapolis International
ITO	Hilo, HI: Hilo International
JAC	Jackson, WY: Jackson Hole
JAX	Jacksonville, FL: Jacksonville International
KOA	Kona, HI: Ellison Onizuka Kona International at Keahole
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LGA	New York, NY: LaGuardia
LIH	Lihue, HI: Lihue Airport
MAF	Midland/Odessa, TX: Midland International Air and Space Port
MCI	Kansas City, MO: Kansas City International
MCO	Orlando, FL: Orlando International
MDT	Harrisburg, PA: Harrisburg International
MEM	Memphis, TN: Memphis International
MFE	Mission/McAllen/Edinburg, TX: McAllen Miller International
MFR	Medford, OR: Rogue Valley International - Medford
MIA	Miami, FL: Miami International
MKE	Milwaukee, WI: General Mitchell International
MSN	Madison, WI: Dane County Regional-Truax Field
MSO	Missoula, MT: Missoula International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MYR	Myrtle Beach, SC: Myrtle Beach International
OGG	Kahului, HI: Kahului Airport
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ONT	Ontario, CA: Ontario International
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
PBI	West Palm Beach/Palm Beach, FL: Palm Beach International
PDX	Portland, OR: Portland International
PHL	Philadelphia, PA: Philadelphia International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PSP	Palm Springs, CA: Palm Springs International
PWM	Portland, ME: Portland International Jetport
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
RNO	Reno, NV: Reno/Tahoe International
ROC	Rochester, NY: Greater Rochester International
RSW	Fort Myers, FL: Southwest Florida International
SAN	San Diego, CA: San Diego International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SEA	Seattle, WA: Seattle/Tacoma International
SFO	San Francisco, CA: San Francisco International
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SJU	San Juan, PR: Luis Munoz Marin International
SLC	Salt Lake City, UT: Salt Lake City International
SMF	Sacramento, CA: Sacramento International
SNA	Santa Ana, CA: John Wayne Airport-Orange County
SPN	Saipan, TT: Francisco C. Ada Saipan International
SRQ	Sarasota/Bradenton, FL: Sarasota/Bradenton International
STL	St. Louis, MO: St Louis Lambert International
STT	Charlotte Amalie, VI: Cyril E King
SYR	Syracuse, NY: Syracuse Hancock International
TPA	Tampa, FL: Tampa International
TUL	Tulsa, OK: Tulsa International
TVC	Traverse City, MI: Cherry Capital
TYS	Knoxville, TN: McGhee Tyson
ABQ	Albuquerque, NM: Albuquerque International Sunport
ALB	Albany, NY: Albany International
AMA	Amarillo, TX: Rick Husband Amarillo International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
AUS	Austin, TX: Austin - Bergstrom International
BDL	Hartford, CT: Bradley International
BHM	Birmingham, AL: Birmingham-Shuttlesworth International
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BOS	Boston, MA: Logan International
BUF	Buffalo, NY: Buffalo Niagara International
BUR	Burbank, CA: Bob Hope
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
CHS	Charleston, SC: Charleston AFB/International
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
CRP	Corpus Christi, TX: Corpus Christi International
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DAL	Dallas, TX: Dallas Love Field
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
ECP	Panama City, FL: Northwest Florida Beaches International
ELP	El Paso, TX: El Paso International
EWR	Newark, NJ: Newark Liberty International
FLL	Fort Lauderdale, FL: Fort Lauderdale-Hollywood International
GEG	Spokane, WA: Spokane International
GRR	Grand Rapids, MI: Gerald R. Ford International
GSP	Greer, SC: Greenville-Spartanburg International
HOU	Houston, TX: William P Hobby
HRL	Harlingen/San Benito, TX: Valley International
IAD	Washington, DC: Washington Dulles International
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
IND	Indianapolis, IN: Indianapolis International
ISP	Islip, NY: Long Island MacArthur
JAX	Jacksonville, FL: Jacksonville International
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LBB	Lubbock, TX: Lubbock Preston Smith International
LGA	New York, NY: LaGuardia
LGB	Long Beach, CA: Long Beach Airport
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
MAF	Midland/Odessa, TX: Midland International Air and Space Port
MCI	Kansas City, MO: Kansas City International
MCO	Orlando, FL: Orlando International
MDW	Chicago, IL: Chicago Midway International
MEM	Memphis, TN: Memphis International
MHT	Manchester, NH: Manchester-Boston Regional
MKE	Milwaukee, WI: General Mitchell International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
OAK	Oakland, CA: Metropolitan Oakland International
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ONT	Ontario, CA: Ontario International
ORF	Norfolk, VA: Norfolk International
PBI	West Palm Beach/Palm Beach, FL: Palm Beach International
PDX	Portland, OR: Portland International
PHL	Philadelphia, PA: Philadelphia International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
RNO	Reno, NV: Reno/Tahoe International
ROC	Rochester, NY: Greater Rochester International
RSW	Fort Myers, FL: Southwest Florida International
SAN	San Diego, CA: San Diego International
SAT	San Antonio, TX: San Antonio International
SDF	Louisville, KY: Louisville International-Standiford Field
SEA	Seattle, WA: Seattle/Tacoma International
SFO	San Francisco, CA: San Francisco International
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SJU	San Juan, PR: Luis Munoz Marin International
SLC	Salt Lake City, UT: Salt Lake City International
SMF	Sacramento, CA: Sacramento International
SNA	Santa Ana, CA: John Wayne Airport-Orange County
STL	St. Louis, MO: St Louis Lambert International
ABE	Allentown/Bethlehem/Easton, PA: Lehigh Valley International
ACK	Nantucket, MA: Nantucket Memorial
AGS	Augusta, GA: Augusta Regional at Bush Field
ALB	Albany, NY: Albany International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
ATW	Appleton, WI: Appleton International
AUS	Austin, TX: Austin - Bergstrom International
AVL	Asheville, NC: Asheville Regional
AVP	Scranton/Wilkes-Barre, PA: Wilkes Barre Scranton International
BDL	Hartford, CT: Bradley International
BGR	Bangor, ME: Bangor International
BHM	Birmingham, AL: Birmingham-Shuttlesworth International
BMI	Bloomington/Normal, IL: Central Illinois Regional
BNA	Nashville, TN: Nashville International
BOS	Boston, MA: Logan International
BQK	Brunswick, GA: Brunswick Golden Isles
BTR	Baton Rouge, LA: Baton Rouge Metropolitan/Ryan Field
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
CAE	Columbia, SC: Columbia Metropolitan
CAK	Akron, OH: Akron-Canton Regional
CHA	Chattanooga, TN: Lovell Field
CHO	Charlottesville, VA: Charlottesville Albemarle
CHS	Charleston, SC: Charleston AFB/International
CID	Cedar Rapids/Iowa City, IA: The Eastern Iowa
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
CRW	Charleston/Dunbar, WV: Yeager
CSG	Columbus, GA: Columbus Airport
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
CWA	Mosinee, WI: Central Wisconsin
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
EVV	Evansville, IN: Evansville Regional
EWR	Newark, NJ: Newark Liberty International
FAR	Fargo, ND: Hector International
FAY	Fayetteville, NC: Fayetteville Regional/Grannis Field
FNT	Flint, MI: Bishop International
GNV	Gainesville, FL: Gainesville Regional
GPT	Gulfport/Biloxi, MS: Gulfport-Biloxi International
GRB	Green Bay, WI: Green Bay Austin Straubel International
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
GSP	Greer, SC: Greenville-Spartanburg International
GTR	Columbus, MS: Golden Triangle Regional
HPN	White Plains, NY: Westchester County
HSV	Huntsville, AL: Huntsville International-Carl T Jones Field
IAD	Washington, DC: Washington Dulles International
IAH	Houston, TX: George Bush Intercontinental/Houston
ILM	Wilmington, NC: Wilmington International
IND	Indianapolis, IN: Indianapolis International
JAN	Jackson/Vicksburg, MS: Jackson Medgar Wiley Evers International
JAX	Jacksonville, FL: Jacksonville International
JFK	New York, NY: John F. Kennedy International
LEX	Lexington, KY: Blue Grass
LGA	New York, NY: LaGuardia
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
LNK	Lincoln, NE: Lincoln Airport
MBS	Saginaw/Bay City/Midland, MI: MBS International
MCI	Kansas City, MO: Kansas City International
MCO	Orlando, FL: Orlando International
MEM	Memphis, TN: Memphis International
MGM	Montgomery, AL: Montgomery Regional
MHT	Manchester, NH: Manchester-Boston Regional
MKE	Milwaukee, WI: General Mitchell International
MOT	Minot, ND: Minot International
MSN	Madison, WI: Dane County Regional-Truax Field
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MVY	Marthas Vineyard, MA: Marthas Vineyard Airport
MYR	Myrtle Beach, SC: Myrtle Beach International
OAJ	Jacksonville/Camp Lejeune, NC: Albert J Ellis
OMA	Omaha, NE: Eppley Airfield
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
PBI	West Palm Beach/Palm Beach, FL: Palm Beach International
PHF	Newport News/Williamsburg, VA: Newport News/Williamsburg International
PHL	Philadelphia, PA: Philadelphia International
PIT	Pittsburgh, PA: Pittsburgh International
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RAP	Rapid City, SD: Rapid City Regional
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
ROA	Roanoke, VA: Roanoke Blacksburg Regional Woodrum Field
ROC	Rochester, NY: Greater Rochester International
RSW	Fort Myers, FL: Southwest Florida International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SBN	South Bend, IN: South Bend International
SDF	Louisville, KY: Louisville International-Standiford Field
SGF	Springfield, MO: Springfield-Branson National
SHV	Shreveport, LA: Shreveport Regional
SRQ	Sarasota/Bradenton, FL: Sarasota/Bradenton International
STL	St. Louis, MO: St Louis Lambert International
SYR	Syracuse, NY: Syracuse Hancock International
TLH	Tallahassee, FL: Tallahassee International
TRI	Bristol/Johnson City/Kingsport, TN: Tri Cities
TUL	Tulsa, OK: Tulsa International
TVC	Traverse City, MI: Cherry Capital
TYS	Knoxville, TN: McGhee Tyson
VLD	Valdosta, GA: Valdosta Regional
XNA	Fayetteville, AR: Northwest Arkansas Regional
ABQ	Albuquerque, NM: Albuquerque International Sunport
ALB	Albany, NY: Albany International
ANC	Anchorage, AK: Ted Stevens Anchorage International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
AUS	Austin, TX: Austin - Bergstrom International
BDL	Hartford, CT: Bradley International
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BOS	Boston, MA: Logan International
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
BZN	Bozeman, MT: Bozeman Yellowstone International
CAE	Columbia, SC: Columbia Metropolitan
CHS	Charleston, SC: Charleston AFB/International
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
COS	Colorado Springs, CO: City of Colorado Springs Municipal
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
EGE	Eagle, CO: Eagle County Regional
ELP	El Paso, TX: El Paso International
EWR	Newark, NJ: Newark Liberty International
FAT	Fresno, CA: Fresno Yosemite International
FLL	Fort Lauderdale, FL: Fort Lauderdale-Hollywood International
GEG	Spokane, WA: Spokane International
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
GSP	Greer, SC: Greenville-Spartanburg International
HNL	Honolulu, HI: Daniel K Inouye International
IAD	Washington, DC: Washington Dulles International
IAH	Houston, TX: George Bush Intercontinental/Houston
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
ILM	Wilmington, NC: Wilmington International
IND	Indianapolis, IN: Indianapolis International
JAC	Jackson, WY: Jackson Hole
JAX	Jacksonville, FL: Jacksonville International
JFK	New York, NY: John F. Kennedy International
KOA	Kona, HI: Ellison Onizuka Kona International at Keahole
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LGA	New York, NY: LaGuardia
LIH	Lihue, HI: Lihue Airport
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
MCI	Kansas City, MO: Kansas City International
MCO	Orlando, FL: Orlando International
MDT	Harrisburg, PA: Harrisburg International
MEM	Memphis, TN: Memphis International
MHT	Manchester, NH: Manchester-Boston Regional
MIA	Miami, FL: Miami International
MKE	Milwaukee, WI: General Mitchell International
MLB	Melbourne, FL: Melbourne International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MYR	Myrtle Beach, SC: Myrtle Beach International
OAK	Oakland, CA: Metropolitan Oakland International
OGG	Kahului, HI: Kahului Airport
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ONT	Ontario, CA: Ontario International
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
PBI	West Palm Beach/Palm Beach, FL: Palm Beach International
PDX	Portland, OR: Portland International
PHL	Philadelphia, PA: Philadelphia International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PSP	Palm Springs, CA: Palm Springs International
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
RNO	Reno, NV: Reno/Tahoe International
RSW	Fort Myers, FL: Southwest Florida International
SAN	San Diego, CA: San Diego International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SBA	Santa Barbara, CA: Santa Barbara Municipal
SEA	Seattle, WA: Seattle/Tacoma International
SFO	San Francisco, CA: San Francisco International
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SJU	San Juan, PR: Luis Munoz Marin International
SLC	Salt Lake City, UT: Salt Lake City International
SMF	Sacramento, CA: Sacramento International
SNA	Santa Ana, CA: John Wayne Airport-Orange County
STL	St. Louis, MO: St Louis Lambert International
STT	Charlotte Amalie, VI: Cyril E King
STX	Christiansted, VI: Henry E. Rohlsen
SYR	Syracuse, NY: Syracuse Hancock International
TPA	Tampa, FL: Tampa International
TUL	Tulsa, OK: Tulsa International
TUS	Tucson, AZ: Tucson International
VPS	Valparaiso, FL: Eglin AFB Destin Fort Walton Beach
XNA	Fayetteville, AR: Northwest Arkansas Regional
ABQ	Albuquerque, NM: Albuquerque International Sunport
ADK	Adak Island, AK: Adak
ADQ	Kodiak, AK: Kodiak Airport
AKN	King Salmon, AK: King Salmon Airport
ANC	Anchorage, AK: Ted Stevens Anchorage International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
AUS	Austin, TX: Austin - Bergstrom International
BET	Bethel, AK: Bethel Airport
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BOS	Boston, MA: Logan International
BRW	Barrow, AK: Wiley Post/Will Rogers Memorial
BUR	Burbank, CA: Bob Hope
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
CDV	Cordova, AK: Merle K Mudhole Smith
CHS	Charleston, SC: Charleston AFB/International
DAL	Dallas, TX: Dallas Love Field
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DLG	Dillingham, AK: Dillingham Airport
DTW	Detroit, MI: Detroit Metro Wayne County
EWR	Newark, NJ: Newark Liberty International
FAI	Fairbanks, AK: Fairbanks International
FLL	Fort Lauderdale, FL: Fort Lauderdale-Hollywood International
GEG	Spokane, WA: Spokane International
GST	Gustavus, AK: Gustavus Airport
HNL	Honolulu, HI: Daniel K Inouye International
IAD	Washington, DC: Washington Dulles International
IAH	Houston, TX: George Bush Intercontinental/Houston
IND	Indianapolis, IN: Indianapolis International
JFK	New York, NY: John F. Kennedy International
JNU	Juneau, AK: Juneau International
KOA	Kona, HI: Ellison Onizuka Kona International at Keahole
KTN	Ketchikan, AK: Ketchikan International
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LIH	Lihue, HI: Lihue Airport
MCI	Kansas City, MO: Kansas City International
MCO	Orlando, FL: Orlando International
MKE	Milwaukee, WI: General Mitchell International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
OAK	Oakland, CA: Metropolitan Oakland International
OGG	Kahului, HI: Kahului Airport
OMA	Omaha, NE: Eppley Airfield
OME	Nome, AK: Nome Airport
ONT	Ontario, CA: Ontario International
ORD	Chicago, IL: Chicago OHare International
OTZ	Kotzebue, AK: Ralph Wien Memorial
PDX	Portland, OR: Portland International
PHL	Philadelphia, PA: Philadelphia International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PSG	Petersburg, AK: Petersburg James A Johnson
PSP	Palm Springs, CA: Palm Springs International
RDM	Bend/Redmond, OR: Roberts Field
RDU	Raleigh/Durham, NC: Raleigh-Durham International
SAN	San Diego, CA: San Diego International
SAT	San Antonio, TX: San Antonio International
SBA	Santa Barbara, CA: Santa Barbara Municipal
SCC	Deadhorse, AK: Deadhorse Airport
SEA	Seattle, WA: Seattle/Tacoma International
SFO	San Francisco, CA: San Francisco International
SIT	Sitka, AK: Sitka Rocky Gutierrez
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SLC	Salt Lake City, UT: Salt Lake City International
SMF	Sacramento, CA: Sacramento International
SNA	Santa Ana, CA: John Wayne Airport-Orange County
STL	St. Louis, MO: St Louis Lambert International
TPA	Tampa, FL: Tampa International
TUS	Tucson, AZ: Tucson International
WRG	Wrangell, AK: Wrangell Airport
YAK	Yakutat, AK: Yakutat Airport
ABQ	Albuquerque, NM: Albuquerque International Sunport
ACK	Nantucket, MA: Nantucket Memorial
ALB	Albany, NY: Albany International
ANC	Anchorage, AK: Ted Stevens Anchorage International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
AUS	Austin, TX: Austin - Bergstrom International
BDL	Hartford, CT: Bradley International
BNA	Nashville, TN: Nashville International
BOS	Boston, MA: Logan International
BQN	Aguadilla, PR: Rafael Hernandez
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BUR	Burbank, CA: Bob Hope
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
CHS	Charleston, SC: Charleston AFB/International
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
DAB	Daytona Beach, FL: Daytona Beach International
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DTW	Detroit, MI: Detroit Metro Wayne County
EWR	Newark, NJ: Newark Liberty International
FLL	Fort Lauderdale, FL: Fort Lauderdale-Hollywood International
HOU	Houston, TX: William P Hobby
HPN	White Plains, NY: Westchester County
HYA	Hyannis, MA: Barnstable Municipal-Boardman/Polando Field
IAD	Washington, DC: Washington Dulles International
JAX	Jacksonville, FL: Jacksonville International
JFK	New York, NY: John F. Kennedy International
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LGA	New York, NY: LaGuardia
LGB	Long Beach, CA: Long Beach Airport
MCO	Orlando, FL: Orlando International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MVY	Marthas Vineyard, MA: Marthas Vineyard Airport
OAK	Oakland, CA: Metropolitan Oakland International
ORD	Chicago, IL: Chicago OHare International
ORH	Worcester, MA: Worcester Regional
PBI	West Palm Beach/Palm Beach, FL: Palm Beach International
PDX	Portland, OR: Portland International
PHL	Philadelphia, PA: Philadelphia International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PIT	Pittsburgh, PA: Pittsburgh International
PSE	Ponce, PR: Mercedita
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
RNO	Reno, NV: Reno/Tahoe International
ROC	Rochester, NY: Greater Rochester International
RSW	Fort Myers, FL: Southwest Florida International
SAN	San Diego, CA: San Diego International
SAV	Savannah, GA: Savannah/Hilton Head International
SEA	Seattle, WA: Seattle/Tacoma International
SFO	San Francisco, CA: San Francisco International
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SJU	San Juan, PR: Luis Munoz Marin International
SLC	Salt Lake City, UT: Salt Lake City International
SMF	Sacramento, CA: Sacramento International
SRQ	Sarasota/Bradenton, FL: Sarasota/Bradenton International
STT	Charlotte Amalie, VI: Cyril E King
STX	Christiansted, VI: Henry E. Rohlsen
SWF	Newburgh/Poughkeepsie, NY: Stewart International
SYR	Syracuse, NY: Syracuse Hancock International
TPA	Tampa, FL: Tampa International
ABE	Allentown/Bethlehem/Easton, PA: Lehigh Valley International
ABQ	Albuquerque, NM: Albuquerque International Sunport
AGS	Augusta, GA: Augusta Regional at Bush Field
ALB	Albany, NY: Albany International
ANC	Anchorage, AK: Ted Stevens Anchorage International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
ATW	Appleton, WI: Appleton International
AUS	Austin, TX: Austin - Bergstrom International
AVL	Asheville, NC: Asheville Regional
AVP	Scranton/Wilkes-Barre, PA: Wilkes Barre Scranton International
BDL	Hartford, CT: Bradley International
BGR	Bangor, ME: Bangor International
BHM	Birmingham, AL: Birmingham-Shuttlesworth International
BIL	Billings, MT: Billings Logan International
BIS	Bismarck/Mandan, ND: Bismarck Municipal
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BOS	Boston, MA: Logan International
BTR	Baton Rouge, LA: Baton Rouge Metropolitan/Ryan Field
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
BZN	Bozeman, MT: Bozeman Yellowstone International
CAE	Columbia, SC: Columbia Metropolitan
CAK	Akron, OH: Akron-Canton Regional
CHA	Chattanooga, TN: Lovell Field
CHO	Charlottesville, VA: Charlottesville Albemarle
CHS	Charleston, SC: Charleston AFB/International
CID	Cedar Rapids/Iowa City, IA: The Eastern Iowa
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
COS	Colorado Springs, CO: City of Colorado Springs Municipal
CRW	Charleston/Dunbar, WV: Yeager
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DAB	Daytona Beach, FL: Daytona Beach International
DAL	Dallas, TX: Dallas Love Field
DAY	Dayton, OH: James M Cox/Dayton International
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
ECP	Panama City, FL: Northwest Florida Beaches International
ELP	El Paso, TX: El Paso International
EVV	Evansville, IN: Evansville Regional
EWR	Newark, NJ: Newark Liberty International
EYW	Key West, FL: Key West International
FAI	Fairbanks, AK: Fairbanks International
FAR	Fargo, ND: Hector International
FAY	Fayetteville, NC: Fayetteville Regional/Grannis Field
FCA	Kalispell, MT: Glacier Park International
FLL	Fort Lauderdale, FL: Fort Lauderdale-Hollywood International
FNT	Flint, MI: Bishop International
FSD	Sioux Falls, SD: Joe Foss Field
GEG	Spokane, WA: Spokane International
GNV	Gainesville, FL: Gainesville Regional
GPT	Gulfport/Biloxi, MS: Gulfport-Biloxi International
GRB	Green Bay, WI: Green Bay Austin Straubel International
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
GSP	Greer, SC: Greenville-Spartanburg International
GTF	Great Falls, MT: Great Falls International
HNL	Honolulu, HI: Daniel K Inouye International
HOU	Houston, TX: William P Hobby
HPN	White Plains, NY: Westchester County
HSV	Huntsville, AL: Huntsville International-Carl T Jones Field
IAD	Washington, DC: Washington Dulles International
IAH	Houston, TX: George Bush Intercontinental/Houston
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
ILM	Wilmington, NC: Wilmington International
IND	Indianapolis, IN: Indianapolis International
JAC	Jackson, WY: Jackson Hole
JAN	Jackson/Vicksburg, MS: Jackson Medgar Wiley Evers International
JAX	Jacksonville, FL: Jacksonville International
JFK	New York, NY: John F. Kennedy International
JNU	Juneau, AK: Juneau International
KOA	Kona, HI: Ellison Onizuka Kona International at Keahole
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LEX	Lexington, KY: Blue Grass
LFT	Lafayette, LA: Lafayette Regional Paul Fournet Field
LGA	New York, NY: LaGuardia
LIH	Lihue, HI: Lihue Airport
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
MCI	Kansas City, MO: Kansas City International
MCO	Orlando, FL: Orlando International
MDT	Harrisburg, PA: Harrisburg International
MDW	Chicago, IL: Chicago Midway International
MEM	Memphis, TN: Memphis International
MHT	Manchester, NH: Manchester-Boston Regional
MIA	Miami, FL: Miami International
MKE	Milwaukee, WI: General Mitchell International
MLB	Melbourne, FL: Melbourne International
MOB	Mobile, AL: Mobile Regional
MSN	Madison, WI: Dane County Regional-Truax Field
MSO	Missoula, MT: Missoula International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MYR	Myrtle Beach, SC: Myrtle Beach International
OAK	Oakland, CA: Metropolitan Oakland International
OGG	Kahului, HI: Kahului Airport
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ONT	Ontario, CA: Ontario International
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
PBI	West Palm Beach/Palm Beach, FL: Palm Beach International
PDX	Portland, OR: Portland International
PHL	Philadelphia, PA: Philadelphia International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PSC	Pasco/Kennewick/Richland, WA: Tri Cities
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RAP	Rapid City, SD: Rapid City Regional
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
RNO	Reno, NV: Reno/Tahoe International
ROA	Roanoke, VA: Roanoke Blacksburg Regional Woodrum Field
ROC	Rochester, NY: Greater Rochester International
RSW	Fort Myers, FL: Southwest Florida International
SAN	San Diego, CA: San Diego International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SDF	Louisville, KY: Louisville International-Standiford Field
SEA	Seattle, WA: Seattle/Tacoma International
SFO	San Francisco, CA: San Francisco International
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SJU	San Juan, PR: Luis Munoz Marin International
SLC	Salt Lake City, UT: Salt Lake City International
SMF	Sacramento, CA: Sacramento International
SNA	Santa Ana, CA: John Wayne Airport-Orange County
SRQ	Sarasota/Bradenton, FL: Sarasota/Bradenton International
STL	St. Louis, MO: St Louis Lambert International
STT	Charlotte Amalie, VI: Cyril E King
STX	Christiansted, VI: Henry E. Rohlsen
SYR	Syracuse, NY: Syracuse Hancock International
TLH	Tallahassee, FL: Tallahassee International
TPA	Tampa, FL: Tampa International
TRI	Bristol/Johnson City/Kingsport, TN: Tri Cities
TUL	Tulsa, OK: Tulsa International
TUS	Tucson, AZ: Tucson International
TVC	Traverse City, MI: Cherry Capital
TYS	Knoxville, TN: McGhee Tyson
VPS	Valparaiso, FL: Eglin AFB Destin Fort Walton Beach
XNA	Fayetteville, AR: Northwest Arkansas Regional
ABE	Allentown/Bethlehem/Easton, PA: Lehigh Valley International
ABQ	Albuquerque, NM: Albuquerque International Sunport
AEX	Alexandria, LA: Alexandria International
AGS	Augusta, GA: Augusta Regional at Bush Field
AMA	Amarillo, TX: Rick Husband Amarillo International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
ATW	Appleton, WI: Appleton International
AUS	Austin, TX: Austin - Bergstrom International
AVL	Asheville, NC: Asheville Regional
AVP	Scranton/Wilkes-Barre, PA: Wilkes Barre Scranton International
BGR	Bangor, ME: Bangor International
BHM	Birmingham, AL: Birmingham-Shuttlesworth International
BMI	Bloomington/Normal, IL: Central Illinois Regional
BNA	Nashville, TN: Nashville International
BOS	Boston, MA: Logan International
BRO	Brownsville, TX: Brownsville South Padre Island International
BTR	Baton Rouge, LA: Baton Rouge Metropolitan/Ryan Field
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
CAE	Columbia, SC: Columbia Metropolitan
CAK	Akron, OH: Akron-Canton Regional
CHA	Chattanooga, TN: Lovell Field
CHS	Charleston, SC: Charleston AFB/International
CLE	Cleveland, OH: Cleveland-Hopkins International
CLL	College Station/Bryan, TX: Easterwood Field
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
COS	Colorado Springs, CO: City of Colorado Springs Municipal
CRP	Corpus Christi, TX: Corpus Christi International
CRW	Charleston/Dunbar, WV: Yeager
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DAY	Dayton, OH: James M Cox/Dayton International
DCA	Washington, DC: Ronald Reagan Washington National
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
ECP	Panama City, FL: Northwest Florida Beaches International
ELP	El Paso, TX: El Paso International
ERI	Erie, PA: Erie International/Tom Ridge Field
EVV	Evansville, IN: Evansville Regional
EWR	Newark, NJ: Newark Liberty International
EYW	Key West, FL: Key West International
FAR	Fargo, ND: Hector International
FLG	Flagstaff, AZ: Flagstaff Pulliam
GPT	Gulfport/Biloxi, MS: Gulfport-Biloxi International
GRB	Green Bay, WI: Green Bay Austin Straubel International
GRI	Grand Island, NE: Central Nebraska Regional
GRK	Killeen, TX: Robert Gray AAF
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
GSP	Greer, SC: Greenville-Spartanburg International
GUC	Gunnison, CO: Gunnison-Crested Butte Regional
HDN	Hayden, CO: Yampa Valley
HOB	Hobbs, NM: Lea County Regional
HOU	Houston, TX: William P Hobby
HRL	Harlingen/San Benito, TX: Valley International
HSV	Huntsville, AL: Huntsville International-Carl T Jones Field
IAH	Houston, TX: George Bush Intercontinental/Houston
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
IND	Indianapolis, IN: Indianapolis International
JAN	Jackson/Vicksburg, MS: Jackson Medgar Wiley Evers International
JAX	Jacksonville, FL: Jacksonville International
JLN	Joplin, MO: Joplin Regional
LAW	Lawton/Fort Sill, OK: Lawton-Fort Sill Regional
LBB	Lubbock, TX: Lubbock Preston Smith International
LCH	Lake Charles, LA: Lake Charles Regional
LEX	Lexington, KY: Blue Grass
LFT	Lafayette, LA: Lafayette Regional Paul Fournet Field
LGA	New York, NY: LaGuardia
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
LRD	Laredo, TX: Laredo International
MAF	Midland/Odessa, TX: Midland International Air and Space Port
MCI	Kansas City, MO: Kansas City International
MEM	Memphis, TN: Memphis International
MFE	Mission/McAllen/Edinburg, TX: McAllen Miller International
MHK	Manhattan/Ft. Riley, KS: Manhattan Regional
MHT	Manchester, NH: Manchester-Boston Regional
MKE	Milwaukee, WI: General Mitchell International
MLI	Moline, IL: Quad City International
MLU	Monroe, LA: Monroe Regional
MOB	Mobile, AL: Mobile Regional
MSN	Madison, WI: Dane County Regional-Truax Field
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
PHF	Newport News/Williamsburg, VA: Newport News/Williamsburg International
PIA	Peoria, IL: General Downing - Peoria International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PWM	Portland, ME: Portland International Jetport
RAP	Rapid City, SD: Rapid City Regional
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
ROA	Roanoke, VA: Roanoke Blacksburg Regional Woodrum Field
ROC	Rochester, NY: Greater Rochester International
ROW	Roswell, NM: Roswell International Air Center
RST	Rochester, MN: Rochester International
SAF	Santa Fe, NM: Santa Fe Municipal
SAV	Savannah, GA: Savannah/Hilton Head International
SBN	South Bend, IN: South Bend International
SDF	Louisville, KY: Louisville International-Standiford Field
SGF	Springfield, MO: Springfield-Branson National
SHV	Shreveport, LA: Shreveport Regional
STL	St. Louis, MO: St Louis Lambert International
SYR	Syracuse, NY: Syracuse Hancock International
TLH	Tallahassee, FL: Tallahassee International
TUL	Tulsa, OK: Tulsa International
TUS	Tucson, AZ: Tucson International
TVC	Traverse City, MI: Cherry Capital
TYS	Knoxville, TN: McGhee Tyson
VPS	Valparaiso, FL: Eglin AFB Destin Fort Walton Beach
XNA	Fayetteville, AR: Northwest Arkansas Regional
ABQ	Albuquerque, NM: Albuquerque International Sunport
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
AUS	Austin, TX: Austin - Bergstrom International
BHM	Birmingham, AL: Birmingham-Shuttlesworth International
BIS	Bismarck/Mandan, ND: Bismarck Municipal
BKG	Branson, MO: Branson Airport
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BUF	Buffalo, NY: Buffalo Niagara International
BZN	Bozeman, MT: Bozeman Yellowstone International
CHS	Charleston, SC: Charleston AFB/International
CID	Cedar Rapids/Iowa City, IA: The Eastern Iowa
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
COS	Colorado Springs, CO: City of Colorado Springs Municipal
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
ELP	El Paso, TX: El Paso International
FAR	Fargo, ND: Hector International
FAT	Fresno, CA: Fresno Yosemite International
FSD	Sioux Falls, SD: Joe Foss Field
GEG	Spokane, WA: Spokane International
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
IAD	Washington, DC: Washington Dulles International
IAH	Houston, TX: George Bush Intercontinental/Houston
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
IND	Indianapolis, IN: Indianapolis International
ISP	Islip, NY: Long Island MacArthur
JAC	Jackson, WY: Jackson Hole
JAX	Jacksonville, FL: Jacksonville International
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LGA	New York, NY: LaGuardia
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
MCI	Kansas City, MO: Kansas City International
MCO	Orlando, FL: Orlando International
MDT	Harrisburg, PA: Harrisburg International
MEM	Memphis, TN: Memphis International
MIA	Miami, FL: Miami International
MKE	Milwaukee, WI: General Mitchell International
MSN	Madison, WI: Dane County Regional-Truax Field
MSO	Missoula, MT: Missoula International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MYR	Myrtle Beach, SC: Myrtle Beach International
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ONT	Ontario, CA: Ontario International
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
PBI	West Palm Beach/Palm Beach, FL: Palm Beach International
PDX	Portland, OR: Portland International
PHL	Philadelphia, PA: Philadelphia International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PSP	Palm Springs, CA: Palm Springs International
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RNO	Reno, NV: Reno/Tahoe International
RSW	Fort Myers, FL: Southwest Florida International
SAN	San Diego, CA: San Diego International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SBA	Santa Barbara, CA: Santa Barbara Municipal
SDF	Louisville, KY: Louisville International-Standiford Field
SEA	Seattle, WA: Seattle/Tacoma International
SFO	San Francisco, CA: San Francisco International
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SJU	San Juan, PR: Luis Munoz Marin International
SLC	Salt Lake City, UT: Salt Lake City International
SMF	Sacramento, CA: Sacramento International
SNA	Santa Ana, CA: John Wayne Airport-Orange County
STL	St. Louis, MO: St Louis Lambert International
SYR	Syracuse, NY: Syracuse Hancock International
TPA	Tampa, FL: Tampa International
TTN	Trenton, NJ: Trenton Mercer
TUL	Tulsa, OK: Tulsa International
TYS	Knoxville, TN: McGhee Tyson
ABE	Allentown/Bethlehem/Easton, PA: Lehigh Valley International
ABQ	Albuquerque, NM: Albuquerque International Sunport
ATW	Appleton, WI: Appleton International
AUS	Austin, TX: Austin - Bergstrom International
AVL	Asheville, NC: Asheville Regional
AZA	Phoenix, AZ: Phoenix - Mesa Gateway
BGR	Bangor, ME: Bangor International
BIL	Billings, MT: Billings Logan International
BIS	Bismarck/Mandan, ND: Bismarck Municipal
BLI	Bellingham, WA: Bellingham International
BLV	Belleville, IL: Scott AFB/MidAmerica
BMI	Bloomington/Normal, IL: Central Illinois Regional
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
BZN	Bozeman, MT: Bozeman Yellowstone International
CHA	Chattanooga, TN: Lovell Field
CHS	Charleston, SC: Charleston AFB/International
CID	Cedar Rapids/Iowa City, IA: The Eastern Iowa
CKB	Clarksburg/Fairmont, WV: North Central West Virginia
CLE	Cleveland, OH: Cleveland-Hopkins International
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DAY	Dayton, OH: James M Cox/Dayton International
DEN	Denver, CO: Denver International
DSM	Des Moines, IA: Des Moines International
ELM	Elmira/Corning, NY: Elmira/Corning Regional
ELP	El Paso, TX: El Paso International
EUG	Eugene, OR: Mahlon Sweet Field
EVV	Evansville, IN: Evansville Regional
EWR	Newark, NJ: Newark Liberty International
FAR	Fargo, ND: Hector International
FAT	Fresno, CA: Fresno Yosemite International
FCA	Kalispell, MT: Glacier Park International
FLL	Fort Lauderdale, FL: Fort Lauderdale-Hollywood International
FNT	Flint, MI: Bishop International
FSD	Sioux Falls, SD: Joe Foss Field
FWA	Fort Wayne, IN: Fort Wayne International
GFK	Grand Forks, ND: Grand Forks International
GJT	Grand Junction, CO: Grand Junction Regional
GPT	Gulfport/Biloxi, MS: Gulfport-Biloxi International
GRI	Grand Island, NE: Central Nebraska Regional
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
GSP	Greer, SC: Greenville-Spartanburg International
GTF	Great Falls, MT: Great Falls International
HGR	Hagerstown, MD: Hagerstown Regional-Richard A. Henson Field
HTS	Ashland, WV: Tri-State/Milton J. Ferguson Field
IAG	Niagara Falls, NY: Niagara Falls International
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
IDA	Idaho Falls, ID: Idaho Falls Regional
IND	Indianapolis, IN: Indianapolis International
JAX	Jacksonville, FL: Jacksonville International
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LCK	Columbus, OH: Rickenbacker International
LEX	Lexington, KY: Blue Grass
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
LRD	Laredo, TX: Laredo International
MCI	Kansas City, MO: Kansas City International
MDT	Harrisburg, PA: Harrisburg International
MEM	Memphis, TN: Memphis International
MFE	Mission/McAllen/Edinburg, TX: McAllen Miller International
MFR	Medford, OR: Rogue Valley International - Medford
MKE	Milwaukee, WI: General Mitchell International
MLI	Moline, IL: Quad City International
MOT	Minot, ND: Minot International
MRY	Monterey, CA: Monterey Regional
MSO	Missoula, MT: Missoula International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MYR	Myrtle Beach, SC: Myrtle Beach International
OAK	Oakland, CA: Metropolitan Oakland International
OGD	Ogden, UT: Ogden-Hinckley
OGS	Ogdensburg, NY: Ogdensburg International
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ORF	Norfolk, VA: Norfolk International
OWB	Owensboro, KY: Owensboro Daviess County Regional
PBG	Plattsburgh, NY: Plattsburgh International
PGD	Punta Gorda, FL: Punta Gorda Airport
PIA	Peoria, IL: General Downing - Peoria International
PIE	St. Petersburg, FL: St Pete Clearwater International
PIT	Pittsburgh, PA: Pittsburgh International
PSC	Pasco/Kennewick/Richland, WA: Tri Cities
PSM	Portsmouth, NH: Portsmouth International at Pease
PSP	Palm Springs, CA: Palm Springs International
PVD	Providence, RI: Theodore Francis Green State
PVU	Provo, UT: Provo Municipal
RAP	Rapid City, SD: Rapid City Regional
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RFD	Rockford, IL: Chicago/Rockford International
RIC	Richmond, VA: Richmond International
RNO	Reno, NV: Reno/Tahoe International
ROA	Roanoke, VA: Roanoke Blacksburg Regional Woodrum Field
ROC	Rochester, NY: Greater Rochester International
SAN	San Diego, CA: San Diego International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SBN	South Bend, IN: South Bend International
SCK	Stockton, CA: Stockton Metropolitan
SDF	Louisville, KY: Louisville International-Standiford Field
SFB	Sanford, FL: Orlando Sanford International
SGF	Springfield, MO: Springfield-Branson National
SHV	Shreveport, LA: Shreveport Regional
SJU	San Juan, PR: Luis Munoz Marin International
SMX	Santa Maria, CA: Santa Maria Public/Capt. G. Allan Hancock Field
SPI	Springfield, IL: Abraham Lincoln Capital
SRQ	Sarasota/Bradenton, FL: Sarasota/Bradenton International
STC	St. Cloud, MN: St. Cloud Regional
SWF	Newburgh/Poughkeepsie, NY: Stewart International
SYR	Syracuse, NY: Syracuse Hancock International
TOL	Toledo, OH: Toledo Express
TRI	Bristol/Johnson City/Kingsport, TN: Tri Cities
TUL	Tulsa, OK: Tulsa International
TYS	Knoxville, TN: McGhee Tyson
USA	CONCORD, NC: CONCORD REGIONAL
VPS	Valparaiso, FL: Eglin AFB Destin Fort Walton Beach
XNA	Fayetteville, AR: Northwest Arkansas Regional
HNL	Honolulu, HI: Daniel K Inouye International
ITO	Hilo, HI: Hilo International
JFK	New York, NY: John F. Kennedy International
KOA	Kona, HI: Ellison Onizuka Kona International at Keahole
LAS	Las Vegas, NV: McCarran International
LAX	Los Angeles, CA: Los Angeles International
LGB	Long Beach, CA: Long Beach Airport
LIH	Lihue, HI: Lihue Airport
OAK	Oakland, CA: Metropolitan Oakland International
OGG	Kahului, HI: Kahului Airport
PDX	Portland, OR: Portland International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PPG	Pago Pago, TT: Pago Pago International
SAN	San Diego, CA: San Diego International
SEA	Seattle, WA: Seattle/Tacoma International
SFO	San Francisco, CA: San Francisco International
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SMF	Sacramento, CA: Sacramento International
ABI	Abilene, TX: Abilene Regional
ABQ	Albuquerque, NM: Albuquerque International Sunport
ACT	Waco, TX: Waco Regional
AEX	Alexandria, LA: Alexandria International
ALB	Albany, NY: Albany International
ALO	Waterloo, IA: Waterloo Regional
AMA	Amarillo, TX: Rick Husband Amarillo International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
ATW	Appleton, WI: Appleton International
AUS	Austin, TX: Austin - Bergstrom International
AVP	Scranton/Wilkes-Barre, PA: Wilkes Barre Scranton International
AZO	Kalamazoo, MI: Kalamazoo/Battle Creek International
BDL	Hartford, CT: Bradley International
BGR	Bangor, ME: Bangor International
BHM	Birmingham, AL: Birmingham-Shuttlesworth International
BIL	Billings, MT: Billings Logan International
BIS	Bismarck/Mandan, ND: Bismarck Municipal
BMI	Bloomington/Normal, IL: Central Illinois Regional
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BOS	Boston, MA: Logan International
BPT	Beaumont/Port Arthur, TX: Jack Brooks Regional
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
BZN	Bozeman, MT: Bozeman Yellowstone International
CAK	Akron, OH: Akron-Canton Regional
CHA	Chattanooga, TN: Lovell Field
CHO	Charlottesville, VA: Charlottesville Albemarle
CHS	Charleston, SC: Charleston AFB/International
CID	Cedar Rapids/Iowa City, IA: The Eastern Iowa
CLE	Cleveland, OH: Cleveland-Hopkins International
CLL	College Station/Bryan, TX: Easterwood Field
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
CMI	Champaign/Urbana, IL: University of Illinois/Willard
COU	Columbia, MO: Columbia Regional
CRP	Corpus Christi, TX: Corpus Christi International
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
CWA	Mosinee, WI: Central Wisconsin
DAY	Dayton, OH: James M Cox/Dayton International
DBQ	Dubuque, IA: Dubuque Regional
DCA	Washington, DC: Ronald Reagan Washington National
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
EVV	Evansville, IN: Evansville Regional
EWR	Newark, NJ: Newark Liberty International
EYW	Key West, FL: Key West International
FAR	Fargo, ND: Hector International
FAY	Fayetteville, NC: Fayetteville Regional/Grannis Field
FNT	Flint, MI: Bishop International
FSD	Sioux Falls, SD: Joe Foss Field
FSM	Fort Smith, AR: Fort Smith Regional
FWA	Fort Wayne, IN: Fort Wayne International
GCK	Garden City, KS: Garden City Regional
GGG	Longview, TX: East Texas Regional
GJT	Grand Junction, CO: Grand Junction Regional
GNV	Gainesville, FL: Gainesville Regional
GRB	Green Bay, WI: Green Bay Austin Straubel International
GRI	Grand Island, NE: Central Nebraska Regional
GRK	Killeen, TX: Robert Gray AAF
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
GSP	Greer, SC: Greenville-Spartanburg International
HOU	Houston, TX: William P Hobby
HSV	Huntsville, AL: Huntsville International-Carl T Jones Field
HTS	Ashland, WV: Tri-State/Milton J. Ferguson Field
IAH	Houston, TX: George Bush Intercontinental/Houston
ILM	Wilmington, NC: Wilmington International
IND	Indianapolis, IN: Indianapolis International
JAN	Jackson/Vicksburg, MS: Jackson Medgar Wiley Evers International
JAX	Jacksonville, FL: Jacksonville International
JFK	New York, NY: John F. Kennedy International
JLN	Joplin, MO: Joplin Regional
LAN	Lansing, MI: Capital Region International
LAW	Lawton/Fort Sill, OK: Lawton-Fort Sill Regional
LBB	Lubbock, TX: Lubbock Preston Smith International
LCH	Lake Charles, LA: Lake Charles Regional
LEX	Lexington, KY: Blue Grass
LFT	Lafayette, LA: Lafayette Regional Paul Fournet Field
LGA	New York, NY: LaGuardia
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
LRD	Laredo, TX: Laredo International
LSE	La Crosse, WI: La Crosse Regional
MAF	Midland/Odessa, TX: Midland International Air and Space Port
MCI	Kansas City, MO: Kansas City International
MDT	Harrisburg, PA: Harrisburg International
MEM	Memphis, TN: Memphis International
MGM	Montgomery, AL: Montgomery Regional
MHK	Manhattan/Ft. Riley, KS: Manhattan Regional
MIA	Miami, FL: Miami International
MLI	Moline, IL: Quad City International
MLU	Monroe, LA: Monroe Regional
MQT	Marquette, MI: Sawyer International
MSN	Madison, WI: Dane County Regional-Truax Field
MSO	Missoula, MT: Missoula International
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MYR	Myrtle Beach, SC: Myrtle Beach International
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
PBI	West Palm Beach/Palm Beach, FL: Palm Beach International
PHL	Philadelphia, PA: Philadelphia International
PIA	Peoria, IL: General Downing - Peoria International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
TPA	Tampa, FL: Tampa International
TUL	Tulsa, OK: Tulsa International
TUS	Tucson, AZ: Tucson International
ABQ	Albuquerque, NM: Albuquerque International Sunport
ALB	Albany, NY: Albany International
AMA	Amarillo, TX: Rick Husband Amarillo International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
AUS	Austin, TX: Austin - Bergstrom International
BDL	Hartford, CT: Bradley International
BFL	Bakersfield, CA: Meadows Field
BHM	Birmingham, AL: Birmingham-Shuttlesworth International
BIS	Bismarck/Mandan, ND: Bismarck Municipal
BMI	Bloomington/Normal, IL: Central Illinois Regional
BNA	Nashville, TN: Nashville International
BOI	Boise, ID: Boise Air Terminal
BOS	Boston, MA: Logan International
BRO	Brownsville, TX: Brownsville South Padre Island International
BTR	Baton Rouge, LA: Baton Rouge Metropolitan/Ryan Field
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BUR	Burbank, CA: Bob Hope
BZN	Bozeman, MT: Bozeman Yellowstone International
CHA	Chattanooga, TN: Lovell Field
CHS	Charleston, SC: Charleston AFB/International
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
COS	Colorado Springs, CO: City of Colorado Springs Municipal
COU	Columbia, MO: Columbia Regional
CRP	Corpus Christi, TX: Corpus Christi International
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DAY	Dayton, OH: James M Cox/Dayton International
DCA	Washington, DC: Ronald Reagan Washington National
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DRO	Durango, CO: Durango La Plata County
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
ECP	Panama City, FL: Northwest Florida Beaches International
ELP	El Paso, TX: El Paso International
EVV	Evansville, IN: Evansville Regional
FAT	Fresno, CA: Fresno Yosemite International
FLG	Flagstaff, AZ: Flagstaff Pulliam
FSD	Sioux Falls, SD: Joe Foss Field
FSM	Fort Smith, AR: Fort Smith Regional
GPT	Gulfport/Biloxi, MS: Gulfport-Biloxi International
GSP	Greer, SC: Greenville-Spartanburg International
GUC	Gunnison, CO: Gunnison-Crested Butte Regional
HOU	Houston, TX: William P Hobby
HRL	Harlingen/San Benito, TX: Valley International
HSV	Huntsville, AL: Huntsville International-Carl T Jones Field
IAD	Washington, DC: Washington Dulles International
IAH	Houston, TX: George Bush Intercontinental/Houston
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
ILM	Wilmington, NC: Wilmington International
IND	Indianapolis, IN: Indianapolis International
JAN	Jackson/Vicksburg, MS: Jackson Medgar Wiley Evers International
JAX	Jacksonville, FL: Jacksonville International
LBB	Lubbock, TX: Lubbock Preston Smith International
LFT	Lafayette, LA: Lafayette Regional Paul Fournet Field
LGA	New York, NY: LaGuardia
LGB	Long Beach, CA: Long Beach Airport
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
MAF	Midland/Odessa, TX: Midland International Air and Space Port
MCI	Kansas City, MO: Kansas City International
MDT	Harrisburg, PA: Harrisburg International
MEM	Memphis, TN: Memphis International
MFE	Mission/McAllen/Edinburg, TX: McAllen Miller International
MKE	Milwaukee, WI: General Mitchell International
MLI	Moline, IL: Quad City International
MOB	Mobile, AL: Mobile Regional
MRY	Monterey, CA: Monterey Regional
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MTJ	Montrose/Delta, CO: Montrose Regional
OAK	Oakland, CA: Metropolitan Oakland International
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ONT	Ontario, CA: Ontario International
ORF	Norfolk, VA: Norfolk International
PHL	Philadelphia, PA: Philadelphia International
PHX	Phoenix, AZ: Phoenix Sky Harbor International
PIA	Peoria, IL: General Downing - Peoria International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PSP	Palm Springs, CA: Palm Springs International
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RAP	Rapid City, SD: Rapid City Regional
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
RNO	Reno, NV: Reno/Tahoe International
ROC	Rochester, NY: Greater Rochester International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SBA	Santa Barbara, CA: Santa Barbara Municipal
SBP	San Luis Obispo, CA: San Luis County Regional
SDF	Louisville, KY: Louisville International-Standiford Field
SHV	Shreveport, LA: Shreveport Regional
SJC	San Jose, CA: Norman Y. Mineta San Jose International
SLC	Salt Lake City, UT: Salt Lake City International
SMF	Sacramento, CA: Sacramento International
STL	St. Louis, MO: St Louis Lambert International
STS	Santa Rosa, CA: Charles M. Schulz - Sonoma County
SYR	Syracuse, NY: Syracuse Hancock International
TUL	Tulsa, OK: Tulsa International
TUS	Tucson, AZ: Tucson International
VPS	Valparaiso, FL: Eglin AFB Destin Fort Walton Beach
XNA	Fayetteville, AR: Northwest Arkansas Regional
ABQ	Albuquerque, NM: Albuquerque International Sunport
ACK	Nantucket, MA: Nantucket Memorial
ALB	Albany, NY: Albany International
ATL	Atlanta, GA: Hartsfield-Jackson Atlanta International
AUS	Austin, TX: Austin - Bergstrom International
BDL	Hartford, CT: Bradley International
BGR	Bangor, ME: Bangor International
BNA	Nashville, TN: Nashville International
BOS	Boston, MA: Logan International
BRO	Brownsville, TX: Brownsville South Padre Island International
BTR	Baton Rouge, LA: Baton Rouge Metropolitan/Ryan Field
BTV	Burlington, VT: Burlington International
BUF	Buffalo, NY: Buffalo Niagara International
BWI	Baltimore, MD: Baltimore/Washington International Thurgood Marshall
CAE	Columbia, SC: Columbia Metropolitan
CHS	Charleston, SC: Charleston AFB/International
CLE	Cleveland, OH: Cleveland-Hopkins International
CLT	Charlotte, NC: Charlotte Douglas International
CMH	Columbus, OH: John Glenn Columbus International
COS	Colorado Springs, CO: City of Colorado Springs Municipal
CRP	Corpus Christi, TX: Corpus Christi International
CVG	Cincinnati, OH: Cincinnati/Northern Kentucky International
DAY	Dayton, OH: James M Cox/Dayton International
DCA	Washington, DC: Ronald Reagan Washington National
DEN	Denver, CO: Denver International
DFW	Dallas/Fort Worth, TX: Dallas/Fort Worth International
DRO	Durango, CO: Durango La Plata County
DSM	Des Moines, IA: Des Moines International
DTW	Detroit, MI: Detroit Metro Wayne County
ELP	El Paso, TX: El Paso International
EWR	Newark, NJ: Newark Liberty International
EYW	Key West, FL: Key West International
FAR	Fargo, ND: Hector International
GJT	Grand Junction, CO: Grand Junction Regional
GRR	Grand Rapids, MI: Gerald R. Ford International
GSO	Greensboro/High Point, NC: Piedmont Triad International
GSP	Greer, SC: Greenville-Spartanburg International
HHH	Hilton Head, SC: Hilton Head Airport
HRL	Harlingen/San Benito, TX: Valley International
HSV	Huntsville, AL: Huntsville International-Carl T Jones Field
IAD	Washington, DC: Washington Dulles International
IAH	Houston, TX: George Bush Intercontinental/Houston
ICT	Wichita, KS: Wichita Dwight D Eisenhower National
ILM	Wilmington, NC: Wilmington International
IND	Indianapolis, IN: Indianapolis International
JAX	Jacksonville, FL: Jacksonville International
JFK	New York, NY: John F. Kennedy International
LEX	Lexington, KY: Blue Grass
LFT	Lafayette, LA: Lafayette Regional Paul Fournet Field
LGA	New York, NY: LaGuardia
LIT	Little Rock, AR: Bill and Hillary Clinton Nat Adams Field
MAF	Midland/Odessa, TX: Midland International Air and Space Port
MCI	Kansas City, MO: Kansas City International
MDT	Harrisburg, PA: Harrisburg International
MEM	Memphis, TN: Memphis International
MFE	Mission/McAllen/Edinburg, TX: McAllen Miller International
MHT	Manchester, NH: Manchester-Boston Regional
MIA	Miami, FL: Miami International
MKE	Milwaukee, WI: General Mitchell International
MSN	Madison, WI: Dane County Regional-Truax Field
MSP	Minneapolis, MN: Minneapolis-St Paul International
MSY	New Orleans, LA: Louis Armstrong New Orleans International
MVY	Marthas Vineyard, MA: Marthas Vineyard Airport
MYR	Myrtle Beach, SC: Myrtle Beach International
OKC	Oklahoma City, OK: Will Rogers World
OMA	Omaha, NE: Eppley Airfield
ORD	Chicago, IL: Chicago OHare International
ORF	Norfolk, VA: Norfolk International
PBI	West Palm Beach/Palm Beach, FL: Palm Beach International
PHL	Philadelphia, PA: Philadelphia International
PIT	Pittsburgh, PA: Pittsburgh International
PNS	Pensacola, FL: Pensacola International
PVD	Providence, RI: Theodore Francis Green State
PWM	Portland, ME: Portland International Jetport
RAP	Rapid City, SD: Rapid City Regional
RDU	Raleigh/Durham, NC: Raleigh-Durham International
RIC	Richmond, VA: Richmond International
ROC	Rochester, NY: Greater Rochester International
RSW	Fort Myers, FL: Southwest Florida International
SAT	San Antonio, TX: San Antonio International
SAV	Savannah, GA: Savannah/Hilton Head International
SDF	Louisville, KY: Louisville International-Standiford Field
SLC	Salt Lake City, UT: Salt Lake City International
SRQ	Sarasota/Bradenton, FL: Sarasota/Bradenton International
STL	St. Louis, MO: St Louis Lambert International
SYR	Syracuse, NY: Syracuse Hancock International
TLH	Tallahassee, FL: Tallahassee International
TPA	Tampa, FL: Tampa International
TUL	Tulsa, OK: Tulsa International
TVC	Traverse City, MI: Cherry Capital
VPS	Valparaiso, FL: Eglin AFB Destin Fort Walton Beach
XNA	Fayetteville, AR: Northwest Arkansas Regional
\.


--
-- PostgreSQL database dump complete
--

