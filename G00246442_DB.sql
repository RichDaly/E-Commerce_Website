-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: g00246442
-- ------------------------------------------------------
-- Server version	8.0.33
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!50503 SET NAMES utf8 */
;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;

/*!40103 SET TIME_ZONE='+00:00' */
;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;

--
-- Table structure for table `clothing`
--
DROP TABLE IF EXISTS `clothing`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `clothing` (
  `ID` int NOT NULL,
  `ProductName` text,
  `Description` text,
  `Cost` double DEFAULT NULL,
  `Image` text,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `clothing`
--
LOCK TABLES `clothing` WRITE;

/*!40000 ALTER TABLE `clothing` DISABLE KEYS */
;

INSERT INTO
  `clothing`
VALUES
  (
    1,
    'Yak Zeus Jacket',
    'A high spec cag, weÂ’ve tailored this one for whitewater aficionados. If you want your kit to work as hard as you do, while leaving you cool, calm and collected, youÂ’ll want the waterproof, windproof and breathable properties of our DX10K (10K hydrostatic head) fabric combined with wear resistance and a truly sympathetic cut.',
    112.5,
    'Zeus.jpg'
  ),
(
    2,
    'Peak UK Semi Long Evo',
    'The ideal intermediate whitewater jacket, constructed using X2.5 recycled ripstop nylon fabric. Double wrists and waist give a great seal whilst the neo cone neck offers a great alternative to latex.',
    169.15,
    'semi-long-blue.jpg'
  ),
(
    3,
    'Peak Uk Deleuxe 4L',
    'The ultimate whitewater jacket constructed from post industrial recycled 4 layer nylon with tough reinforced shoulders & elbows. Heavyweight fabric, perfect for tackling any extreme WW environment. Features double neck, wrist and waist seals for the ultimate protection, plus a handy zip pocket. Available in ladies sizes.',
    245.65,
    'deluxe-black.jpg'
  ),
(
    4,
    'Peak UK Combi Evo',
    'Perfect for the Alps. The Combi features our unique latex bicep seals and can be combined with our Combi Sleeves to give a warmer option. A lightweight, tough and versatile whitewater jacket.',
    169.15,
    'combi-black.jpg'
  ),
(
    5,
    'Palm Zenith Shortsleeve',
    'A midweight shortsleeve jacket for warm weather paddling, with a soft, comfortable UltraStretch neck and bicep seals. Made from XP 2.5-layer fabric the Zenith is the one for alpine tripsÂ‚summer surfing or freestyle.',
    140.26,
    'zenith.jpg'
  ),
(
    6,
    'Palm Zenith Jacket',
    'A midweight whitewater jacket with a comfy GlideSkin neck? made from XP 2.5-layer fabric. The Zenith is a do-itall jacket for surfing? freestyling and laps of your home run, when comfort and freedom of movement are your priority. ',
    161.5,
    'zenithjacket.jpg'
  );

/*!40000 ALTER TABLE `clothing` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `kayakproducts`
--
DROP TABLE IF EXISTS `kayakproducts`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!50503 SET character_set_client = utf8mb4 */
;

CREATE TABLE `kayakproducts` (
  `ID` int NOT NULL,
  `ProductName` text,
  `ProductType` text,
  `Description` text,
  `Cost` int DEFAULT NULL,
  `Image` text,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `kayakproducts`
--
LOCK TABLES `kayakproducts` WRITE;

/*!40000 ALTER TABLE `kayakproducts` DISABLE KEYS */
;

INSERT INTO
  `kayakproducts`
VALUES
  (
    1,
    'Firecracker',
    'Freeride Kayak',
    'The Firecracker is a #HalfSizeHalfSlice to whip into every micro-eddy, snap onto every wave, and get vertical absolutely everywhere - no matter who you are, you\'ll be able to throw this around, sky-gaze, and have the comfort and confidence to nail that new move.',
    1765,
    'firecrackerYellow.jpg'
  ),
(
    2,
    'Rip-R Evo 2',
    'Kayak Cross',
    'We\'ve been designing and producing innovative whitewater kayaks for over 50 years, but 2022 brought a project which called for us to invest perhaps the most time and energy yet into its testing and development - the Rip-R Evo 2; while our competitors were trying to match the performance of the original Rip-R Evo, we were setting the bar even higher.',
    1450,
    'riprevo2.jpg'
  ),
(
    3,
    'Ripper 2',
    'Riverplay',
    'Others have tried, but ultimately, only we could improve on the original Ripperâ€¦ The design improvements we\'ve introduced in Ripper 2 take the fun to the next level and open up even more opportunities for it; surf more waves, drop the tail with less effort and in more locations, and get even more recklessly vertical. Whether you were a fan of the original or not, you haven\'t truly experienced half slice until you\'ve tried this.',
    1750,
    'ripper2.jpg'
  ),
(
    4,
    'Sorch',
    'River Running',
    'The Scorch is the boundary-smashing culmination of decades of evolution, combining and refining features from industry-leading designs like the Burn (uncompromisingly sharp rails), 9R (volume distribution and bow rocker), and Ripper (fast and nimble planing hull); the hybrid rocker profile adds to this with the progressive bow rocker being efficient on the move, planing over even the burliest of features, whilst the stern kick-rocker gets the back edge of the boat out of your way on the lip of drops and ensures you skip out over whatever lies in wait below; a fine balance of length and edge carries speed and maintains precise lines, even in boily, unpredictable water; and the generous but carefully tailored volume keeps you on top of the water and gives you the capacity to carry all your essentials without blocking your paddle strokes.',
    1345,
    'sorch.jpg'
  ),
(
    5,
    'Burn III',
    'River Running',
    'Over the years, the Burn has become a staple of clubs, centres, and coaches, being a highly versatile platform, which supports paddler development and enables clear skills demonstrations, whilst still inspiring confidence. We\'re delighted to be in a position now to offer the Burn III in Connect outfitting at a lower price point for the benefit of these paddler groups.',
    1100,
    'burn3.jpg'
  ),
(
    6,
    'Surf Jet 2.0',
    'Recreation',
    'The SurfJet 2.0 is a family fun kayak; a surf machine; a swimming platform; an all-round gateway to adventure. Whether you\'re spending some time on the coast and want to explore rock pools and ride the surf, or you\'re unwinding inland and are looking for adventures on lakes and rivers, we guarantee the SurfJet 2.0 will put a smile on your face.',
    385,
    'surfjet.jpg'
  ),
(
    7,
    'Ozone',
    'Freeride Kayak',
    'Pyranha\'s long-awaited return to the river-running playboat market! The DNA of the Ozone flows from models such as the ProZone, InaZone, and Z.One; unlock mid-rapid play spots, throw some shapes on an eddy line, and just generally enjoy every moment on the water.A progressive rocker profile accentuated at the bow gives dry rides on a wave, keeps the kayak plaining efficiently when riding rapids or surfing and works with the volume profile to make it simple to initiate a huge range of moves both old and new, from cartwheels to blunts; fear not though, there\'s plenty of volume to carry you downstream without things getting \'too\' fun, and moderate length means the Ozone is short enough to throw around, but long enough to run most rapids and access a heap of play opportunities in all sorts of places.',
    1355,
    'ozone.jpg'
  ),
(
    8,
    '9R II',
    'River Running',
    'The 9R kick-started a creek boat design revolution; now it\'s time to raise the bar with the 9R II. This sports car of a kayak is an exhilarating ride on any river, its narrow width not only increasing the 9R\'s dynamic speed, but also offering immense connectivity, effortless rolling, and lightning fast edge to edge transitions; the 9R\'s unparalleled speed is just as much fun to wield during everyday missions as it is in competitions, opening up more moves and whole new possibilities such as mid-rapid line changes and easy attainments.',
    1517,
    '9r2.jpg'
  ),
(
    9,
    'Fusion SOT',
    'Crossover',
    'The Fusion sit-on-top is about having a real fun kayak. Paddle down a wild river, cruise flat water or paddle and surf waves with ease. The Fusion SOT is a boat that you can jump on and have a blast right away, no matter if you are a complete beginner or seriously experienced.',
    635,
    'fusionSOT.jpg'
  ),
(
    10,
    'Jed',
    'FreeStyle',
    'The Jed isn\'t like the others; it\'s longer than its competitors, which allows for a more fluid distribution of volume and comparatively slicy ends for easier trick initiation. Extra length also makes the Jed faster on a wave and smoother on end in a hole. A unique \'V-Chine\' in the hull at the stern frees up the back end for spins and edge transitions while surfing, and also adds to the dynamic speed on a wave. Smooth transition of volume to the core of the boat produces some incredible pop in a hole and the deceptively smooth lines over all give an obscenely fast and aggressive ride on any wave.',
    1153,
    'jed.jpg'
  );

/*!40000 ALTER TABLE `kayakproducts` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Dumping events for database 'g00246442'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;

-- Dump completed on 2023-05-20 16:00:14