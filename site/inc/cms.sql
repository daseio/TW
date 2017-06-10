-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Iun 2017 la 00:32
-- Versiune server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `category`
--

CREATE TABLE `category` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`) VALUES
(1, 0, 'primu', '', '2017-05-31', '', ' ', ''),
(2, 3, 'primu', 'numele meu', '2017-05-31', '1st.jpg', 'edsedsefsf ', 'js, php, astaesefefe'),
(3, 3, 'primu', 'numele meu', '2017-05-31', '1st.jpg', 'edsedsefsf ', 'js, php, astaesefefe'),
(4, 3, 'primu', 'numele meu', '2017-05-31', '1st.jpg', 'edsedsefsf ', 'js, php, astaesefefe'),
(5, 0, 'game of thrones', 'iuliu', '2017-05-31', 'got.jpg', 'aweawe awneaw eiaweawn awe iawne oawn oanrforawr naweawemaw oewe awe awe a ae ', 'game of thrones'),
(6, 0, 'cartea mea', 'juliu', '2017-05-31', 'header.jpg', ' acesta este un test', 'carte, vacanta, copil'),
(7, 0, 'urzeala tronurulor', '', '2017-05-31', 'got.jpg', 'The summons came in the hour before the dawn, when the world was still and grey.\r\nAlyn shook him roughly from his dreams and Ned stumbled into the predawn chill,\r\ngroggy from sleep, to find his horse saddled and the king already mounted. Robert wore\r\nthick brown gloves and a heavy fur cloak with a hood that covered his ears, and looked\r\nfor all the world like a bear sitting a horse. â€œUp, Stark!â€ he roared. â€œUp, up! We have\r\nmatters of state to discuss.â€\r\nâ€œBy all means,â€ Ned said. â€œCome inside, Your Grace.â€ Alyn lifted the flap of the tent.\r\nâ€œNo, no, no,â€ Robert said. His breath steamed with every word. â€œThe camp is full of ears.\r\nBesides, I want to ride out and taste this country of yours.â€ Ser Boros and Ser Meryn\r\nwaited behind him with a dozen guardsmen, Ned saw. There was nothing to do but rub\r\nthe sleep from his eyes, dress, and mount up.\r\nRobert set the pace, driving his huge black destrier hard as Ned galloped along beside\r\nhim, trying to keep up. He called out a question as they rode, but the wind blew his\r\nwords away, and the king did not hear him. After that Ned rode in silence. They soon left\r\nthe kingsroad and took off across rolling plains dark with mist. By then the guard had\r\nfallen back a small distance, safely out of earshot, but still Robert would not slow.\r\nDawn broke as they crested a low ridge, and finally the king pulled up. By then they were\r\nmiles south of the main party. Robert was flushed and exhilarated as Ned reined up\r\nbeside him. â€œGods,â€ he swore, laughing, â€œit feels good to get out and ride the way a man\r\nwas meant to ride! I swear, Ned, this creeping along is enough to drive a man mad.â€ He\r\nhad never been a patient man, Robert Baratheon. â€œThat damnable wheelhouse, the way\r\nit creaks and groans, climbing every bump in the road as if it were a mountain . . . I\r\npromise you, if that wretched thing breaks another axle, Iâ€™m going to burn it, and Cersei\r\ncan walk!â€\r\nNed laughed. â€œI will gladly light the torch for you.â€\r\nâ€œGood man!â€ The king clapped him on the shoulder. â€œIâ€™ve half a mind to leave them all\r\nbehind and just keep going.â€\r\nA smile touched Nedâ€™s lips. â€œI do believe you mean it.â€\r\nâ€œI do, I do,â€ the king said. â€œWhat do you say, Ned? Just you and me, two vagabond\r\nknights on the kingsroad, our swords at our sides and the gods know what in front of us,\r\nand maybe a farmerâ€™s daughter or a tavern wench to warm our beds tonight.â€\r\nâ€œWould that we could,â€ Ned said, â€œbut we have duties now, my liege . . . to the realm, to\r\nour children, I to my lady wife and you to your queen. We are not the boys we were.â€\r\nâ€œYou were never the boy you were,â€ Robert grumbled. â€œMoreâ€™s the pity. And yet there\r\nwas that one time . . . what was her name, that common girl of yours? Becca? No, she\r\nwas one of mine, gods love her, black hair and these sweet big eyes, you could drown in\r\nthem. Yours was . . . Aleena? No. You told me once. Was it Merryl? You know the one I\r\nmean, your bastardâ€™s mother?â€\r\nâ€œHer name was Wylla,â€ Ned replied with cool courtesy, â€œand I would sooner not speak of\r\nher.â€\r\nâ€œWylla. Yes.â€ The king grinned. â€œShe must have been a rare wench if she could make\r\nLord Eddard Stark forget his honor, even for an hour. You never told me what she\r\nlooked like . . . â€\r\nNedâ€™s mouth tightened in anger. â€œNor will I. Leave it be, Robert, for the love you say you\r\nbear me. I dishonored myself and I dishonored Catelyn, in the sight of gods and men.â€\r\nâ€œGods have mercy, you scarcely knew Catelyn.â€\r\nâ€œI had taken her to wife. She was carrying my child.â€\r\nâ€œYou are too hard on yourself, Ned. You always were. Damn it, no woman wants Baelor\r\nthe Blessed in her bed.â€ He slapped a hand on his knee. â€œWell, Iâ€™ll not press you if you\r\nfeel so strong about it, though I swear, at times youâ€™re so prickly you ought to take the\r\nhedgehog as your sigil.â€\r\nThe rising sun sent fingers of light through the pale white mists of dawn. A wide plain\r\nspread out beneath them, bare and brown, its flatness here and there relieved by long,\r\nlow hummocks. Ned pointed them out to his king. â€œThe barrows of the First Men.â€\r\nRobert frowned. â€œHave we ridden onto a graveyard?â€\r\nâ€œThere are barrows everywhere in the north, Your Grace,â€ Ned told him. â€œThis land is\r\nold.â€\r\nâ€œAnd cold,â€ Robert grumbled, pulling his cloak more tightly around himself. The guard\r\nhad reined up well behind them, at the bottom of the ridge. â€œWell, I did not bring you\r\nout here to talk of graves or bicker about your bastard. There was a rider in the night,\r\nfrom Lord Varys in Kingâ€™s Landing. Here.â€ The king pulled a paper from his belt and\r\nhanded it to Ned.\r\nVarys the eunuch was the kingâ€™s master of whisperers. He served Robert now as he had\r\nonce served Aerys Targaryen. Ned unrolled the paper with trepidation, thinking of Lysa\r\nand her terrible accusation, but the message did not concern Lady Arryn. â€œWhat is the\r\nsource for this information?â€\r\nâ€œDo you remember Ser Jorah Mormont?â€\r\nâ€œWould that I might forget him,â€ Ned said bluntly. The Mormonts of Bear Island were an\r\nold house, proud and honorable, but their lands were cold and distant and poor. Ser\r\nJorah had tried to swell the family coffers by selling some poachers to a Tyroshi slaver.\r\nAs the Mormonts were bannermen to the Starks, his crime had dishonored the north.\r\nNed had made the long journey west to Bear Island, only to find when he arrived that\r\nJorah had taken ship beyond the reach of Ice and the kingâ€™s justice. Five years had\r\npassed since then.\r\nâ€œSer Jorah is now in Pentos, anxious to earn a royal pardon that would allow him to\r\nreturn from exile,â€ Robert explained. â€œLord Varys makes good use of him.â€\r\nâ€œSo the slaver has become a spy,â€ Ned said with distaste. He handed the letter back. â€œI\r\nwould rather he become a corpse.â€\r\nâ€œVarys tells me that spies are more useful than corpses,â€ Robert said. â€œJorah aside, what\r\ndo you make of his report?â€\r\nâ€œDaenerys Targaryen has wed some Dothraki horselord. What of it? Shall we send her a\r\nwedding gift?â€\r\nThe king frowned. â€œA knife, perhaps. A good sharp one, and a bold man to wield it.â€\r\nNed did not feign surprise; Robertâ€™s hatred of the Targaryens was a madness in him. He\r\nremembered the angry words they had exchanged when Tywin Lannister had presented\r\nRobert with the corpses of Rhaegarâ€™s wife and children as a token of fealty. Ned had\r\nnamed that murder; Robert called it war. When he had protested that the young prince\r\nand princess were no more than babes, his new-made king had replied, â€œI see no babes.\r\nOnly dragonspawn.â€ Not even Jon Arryn had been able to calm that storm. Eddard Stark \r\nhad ridden out that very day in a cold rage, to fight the last battles of the war alone in the\r\nsouth. It had taken another death to reconcile them; Lyannaâ€™s death, and the grief they\r\nhad shared over her passing.\r\nThis time, Ned resolved to keep his temper. â€œYour Grace, the girl is scarcely more than a\r\nchild. You are no Tywin Lannister, to slaughter innocents.â€ It was said that Rhaegarâ€™s\r\nlittle girl had cried as they dragged her from beneath her bed to face the swords. The boy\r\nhad been no more than a babe in arms, yet Lord Tywinâ€™s soldiers had torn him from his\r\nmotherâ€™s breast and dashed his head against a wall.\r\nâ€œAnd how long will this one remain an innocent?â€ Robertâ€™s mouth grew hard. â€œThis child\r\nwill soon enough spread her legs and start breeding more dragonspawn to plague me.â€\r\nâ€œNonetheless,â€ Ned said, â€œthe murder of children . . . it would be\r\nvile . . . unspeakable . . . â€\r\nâ€œUnspeakable?â€ the king roared. â€œWhat Aerys did to your brother Brandon was\r\nunspeakable. The way your lord father died, that was unspeakable. And Rhaegar . . . how\r\nmany times do you think he raped your sister? How many hundreds of times?â€ His voice\r\nhad grown so loud that his horse whinnied nervously beneath him. The king jerked the\r\nreins hard, quieting the animal, and pointed an angry finger at Ned. â€œI will kill every\r\nTargaryen I can get my hands on, until they are as dead as their dragons, and then I will\r\npiss on their graves.â€\r\nNed knew better than to defy him when the wrath was on him. If the years had not\r\nquenched Robertâ€™s thirst for revenge, no words of his would help. â€œYou canâ€™t get your\r\nhands on this one, can you?â€ he said quietly.\r\nThe kingâ€™s mouth twisted in a bitter grimace. â€œNo, gods be cursed. Some pox-ridden\r\nPentoshi cheesemonger had her brother and her walled up on his estate with pointyhatted\r\neunuchs all around them, and now heâ€™s handed them over to the Dothraki. I\r\nshould have had them both killed years ago, when it was easy to get at them, but Jon was\r\nas bad as you. More fool I, I listened to him.â€\r\nâ€œJon Arryn was a wise man and a good Hand.â€\r\nRobert snorted. The anger was leaving him as suddenly as it had come. â€œThis Khal Drogo\r\nis said to have a hundred thousand men in his horde. What would Jon say to that?â€\r\nâ€œHe would say that even a million Dothraki are no threat to the realm, so long as they\r\nremain on the other side of the narrow sea,â€ Ned replied calmly. â€œThe barbarians have\r\nno ships. They hate and fear the open sea.â€\r\nThe king shifted uncomfortably in his saddle. â€œPerhaps. There are ships to be had in the\r\nFree Cities, though. I tell you, Ned, I do not like this marriage. There are still those in the\r\nSeven Kingdoms who call me Usurper. Do you forget how many houses fought for\r\nTargaryen in the war? They bide their time for now, but give them half a chance, they\r\nwill murder me in my bed, and my sons with me. If the beggar king crosses with a\r\nDothraki horde at his back, the traitors will join him.â€\r\nâ€œHe will not cross,â€ Ned promised. â€œAnd if by some mischance he does, we will throw\r\nhim back into the sea. Once you choose a new Warden of the Eastâ€”â€\r\nThe king groaned. â€œFor the last time, I will not name the Arryn boy Warden. I know the\r\nboy is your nephew, but with Targaryens climbing in bed with Dothraki, I would be mad\r\nto rest one quarter of the realm on the shoulders of a sickly child.â€\r\nNed was ready for that. â€œYet we still must have a Warden of the East. If Robert Arryn will\r\nnot do, name one of your brothers. Stannis proved himself at the siege of Stormâ€™s End,\r\nsurely.â€\r\nHe let the name hang there for a moment. The king frowned and said nothing. He\r\nlooked uncomfortable.\r\nâ€œThat is,â€ Ned finished quietly, watching, â€œunless you have already promised the honor\r\nto another.â€\r\nFor a moment Robert had the grace to look startled. Just as quickly, the look became\r\nannoyance. â€œWhat if I have?â€\r\nâ€œItâ€™s Jaime Lannister, is it not?â€\r\nRobert kicked his horse back into motion and started down the ridge toward the\r\nbarrows. Ned kept pace with him. The king rode on, eyes straight ahead. â€œYes,â€ he said at\r\nlast. A single hard word to end the matter.\r\nâ€œKingslayer,â€ Ned said. The rumors were true, then. He rode on dangerous ground now,\r\nhe knew. â€œAn able and courageous man, no doubt,â€ he said carefully, â€œbut his father is\r\nWarden of the West, Robert. In time Ser Jaime will succeed to that honor. No one man\r\nshould hold both East and West.â€ He left unsaid his real concern; that the appointment\r\nwould put half the armies of the realm into the hands of Lannisters. ', 'urzeala tronurile, game of thrones, got, carti, sf'),
(9, 0, '', '', '2017-06-03', '', ' ', ''),
(10, 0, '', '', '2017-06-03', '', ' ', ''),
(11, 0, '', '', '2017-06-03', '', ' ', ''),
(12, 0, 'wadadasa', '', '2017-06-03', '', ' ', ''),
(13, 0, 'sfsaf', '', '2017-06-03', '', ' ', ''),
(14, 0, 'ram', '', '2017-06-03', '', ' ', ''),
(15, 0, 'sdfsdf', 'Anonim', '2017-06-03', '', ' ', ''),
(16, 0, '1', 'Anonim', '2017-06-03', '', ' ', ''),
(17, 0, '1', 'Anonim', '2017-06-03', '', ' ', ''),
(18, 0, 'wwrwerw', 'sfsf', '2017-06-03', '075.jpg', ' ', 'sfdsf'),
(19, 0, 'wwrwerw', 'sfsf', '2017-06-03', '075.jpg', ' ', 'sfdsf'),
(20, 0, 'wwrwerw', 'sfsf', '2017-06-03', '075.jpg', ' ', 'sfdsf'),
(21, 0, 'wwrwerw', 'sfsf', '2017-06-03', '075.jpg', ' ', 'sfdsf'),
(22, 0, 'qeqeq', 'adad', '2017-06-03', '075.jpg', 'Continutul cartii trebuie saqwepqwqeqweqpoweqwpoeoqwpepoqweoqpweoqpweoqpweopqweop fie de minim 50 caractere ', 'qeqwewe'),
(23, 0, 'qeqeq', 'adad', '2017-06-03', '075.jpg', 'Continutul cartii trebuie saqwepqwqeqweqpoweqwpoeoqwpepoqweoqpweoqpweoqpweopqweop fie de minim 50 caractere ', 'qeqwewe'),
(24, 0, 'qpiweqwjnewqi', 'wpioqwjeqoijeqwioe', '2017-06-03', '075.jpg', 'Ea delectus, necessitatibus non. Consequatur doloribus dolorem similique aspernatur! Non quos hic, debitis deserunt ipsam perferendis, dicta quod vitae ullam repellat dolorum minima accusantium qui aliquid, beatae totam. A, consequuntur?Ea delectus, necessitatibus non. Consequatur doloribus dolorem similique aspernatur! Non quos hic, debitis deserunt ipsam perferendis, dicta quod vitae ullam repellat dolorum minima accusantium qui aliquid, beatae totam. A, consequuntur?Ea delectus, necessitatibus non. Consequatur doloribus dolorem similique aspernatur! Non quos hic, debitis deserunt ipsam perferendis, dicta quod vitae ullam repellat dolorum minima accusantium qui aliquid, beatae totam. A, consequuntur?Ea delectus, necessitatibus non. Consequatur doloribus dolorem similique aspernatur! Non quos hic, debitis deserunt ipsam perferendis, dicta quod vitae ullam repellat dolorum minima accusantium qui aliquid, beatae totam. A, consequuntur?Ea delectus, necessitatibus non. Consequatur doloribus dolorem similique aspernatur! Non quos hic, debitis deserunt ipsam perferendis, dicta quod vitae ullam repellat dolorum minima accusantium qui aliquid, beatae totam. A, consequuntur?', 'sifdosmfsdofmsdfms');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$ainevoiedelactatenaica'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'iuliu', '123', 'das', 'dan', 'iuliu.dascalu@gmaik.com', '', 'admin', ''),
(2, 'sdsd', 'sdsd', '', '', '2323@gmail.df', '', 'subscriber', '$2y$10$ainevoiedelactatenaica'),
(3, 'juerwe', '1231312312', '', '', 'wqeqe@gmail.com', '', 'subscriber', '$2y$10$ainevoiedelactatenaica'),
(4, 'admin', 'admin', '', '', 'admin@admin.admin', '', 'subscriber', '$2y$10$ainevoiedelactatenaica'),
(5, '', '', '', '', '', '', 'subscriber', '$2y$10$ainevoiedelactatenaica'),
(6, 'sdsd', '$1$tk0.y74.$bsdnuaIjAvoodE9fDX4Aj1', '', '', 'iuwwd@gmail.com', '', 'subscriber', '$2y$10$ainevoiedelactatenaica'),
(7, 'july', '$1$p93.8W0.$ucrt0.Han9t5msTstsiW61', '', '', 'iu@gmail.com', '', 'subscriber', '$2y$10$ainevoiedelactatenaica'),
(8, 'daniel', '$1$tW5.yH5.$4EUAujJNuJ5MD/z/xqo7N1', '', '', 'danile@gmail.com', '', 'subscriber', '$2y$10$ainevoiedelactatenaica'),
(9, 'tst', '$1$fJ0.6X1.$KjjWjJF0x3T4ZjGdgmTfH1', '', '', 'tst@tst.com', '', 'subscriber', '$2y$10$ainevoiedelactatenaica'),
(10, 'cane', '$1$e01.PG1.$TAZ5TPvkreus8hPXmVPUd1', '', '', 'cane@cane.cane', '', 'subscriber', '$2y$10$ainevoiedelactatenaica');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
