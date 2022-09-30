-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2022 at 10:07 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workstreet`
--

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `listing_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL,
  `update_flg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`listing_id`, `title`, `tags`, `description`, `created_by`, `created_at`, `updated_at`, `update_flg`) VALUES
(25, 'IT Manager', 'PHP, Javascript, Ajax', 'Nike, Inc. (/ˈnaɪki/ or /ˈnaɪk/)[note 1] is an American multinational corporation that is engaged in the design, development, manufacturing, and worldwide marketing and sales of footwear, apparel, equipment, accessories, and services. The company is headquartered near Beaverton, Oregon, in the Portland metropolitan area.[3] It is the world&#039;s largest supplier of athletic shoes and apparel and a major manufacturer of sports equipment, with revenue in excess of US$37.4 billion in its fiscal year 2020 (ending May 31, 2020).[4] As of 2020, it employed 76,700 people worldwide.[5] In 2020 the brand alone was valued in excess of $32 billion, making it the most valuable brand among sports businesses.[6] Previously, in 2017, the Nike brand was valued at $29.6 billion.[7] Nike ranked 89th in the 2018 Fortune 500 list of the largest United States corporations by total revenue.', '3', '2022-07-18 06:29:17', '2022-07-18 08:34:39', 2),
(26, 'IT Supervisor', 'Python, Javascript, OOP', 'Nike, Inc. (/ˈnaɪki/ or /ˈnaɪk/)[note 1] is an American multinational corporation that is engaged in the design, development, manufacturing, and worldwide marketing and sales of footwear, apparel, equipment, accessories, and services. The company is headquartered near Beaverton, Oregon, in the Portland metropolitan area.[3] It is the world&#039;s largest supplier of athletic shoes and apparel and a major manufacturer of sports equipment, with revenue in excess of US$37.4 billion in its fiscal year 2020 (ending May 31, 2020).[4] As of 2020, it employed 76,700 people worldwide.[5] In 2020 the brand alone was valued in excess of $32 billion, making it the most valuable brand among sports businesses.[6] Previously, in 2017, the Nike brand was valued at $29.6 billion.[7] Nike ranked 89th in the 2018 Fortune 500 list of the largest United States corporations by total revenue.', '1', '2022-07-18 06:35:16', '2022-09-27 14:32:48', 2),
(27, 'Mobile App Developer', 'Java, Javascript, Kotlin', 'The company was founded on January 25, 1964, as &quot;Blue Ribbon Sports&quot;, by Bill Bowerman and Phil Knight, and officially became Nike, Inc. on May 30, 1971. The company takes its name from Nike, the Greek goddess of victory.[9] Nike markets its products under its own brand, as well as Nike Golf, Nike Pro, Nike+, Air Jordan, Nike Blazers, Air Force 1, Nike Dunk, Air Max, Foamposite, Nike Skateboarding, Nike CR7,[10] and subsidiaries including Jordan Brand and Converse. Nike also owned Bauer Hockey from 1995 to 2008, and previously owned Cole Haan, Umbro, and Hurley International.[11] In addition to manufacturing sportswear and equipment, the company operates retail stores under the Niketown name. Nike sponsors many high-profile athletes and sports teams around the world, with the highly recognized trademarks of &quot;Just Do It&quot; and the Swoosh logo.', '3', '2022-07-18 06:38:06', '2022-07-18 14:44:48', 1),
(30, 'Full Stack Developer', 'React.js, Node.js, MongoDB', 'The advantage of being a full stack web developer is:\nYou can master all the techniques involved in a development project.\nYou can make a prototype very rapidly.\nYou can provide help to all the team members.\nYou can reduce the cost of the project.\nYou can reduce the time used for team communication.\nYou can switch between front and back end development based on requirements.\nYou can better understand all aspects of new and upcoming technologies.', '6', '2022-07-18 07:13:13', '2022-09-30 11:19:13', 1),
(31, 'Junior System Developer', 'PHP, Java, Visual Basic', 'Fresh graduate of any 4-year Bachelor\'s or College Degree course and/or career shifters of any industry, provided that the applicant is willing to be trained and have interest in system development can apply.', '7', '2022-07-18 08:20:51', '2022-07-18 16:33:41', 1),
(32, 'Web Developer', 'HTML, CSS, Javascript', 'As a programmer, you will mainly be involved in WEB system development projects. * You will acquire skills and take on jobs according to your aptitude through programming training for about 3 months. * We will form a project team for development. * You can also aim to advance your career to SE in the future. * Both men and women are active. * For inexperienced people, there is a substantial trainee system.', '3', '2022-07-19 03:26:34', '2022-07-19 11:26:34', 1),
(33, 'Core PHP Developer', 'PHP, MySQL, OOP', 'A popular general-purpose scripting language that is especially suited to web development. Fast, flexible and pragmatic, PHP powers everything from your blog to the most popular websites in the world.', '9', '2022-07-19 05:25:01', '2022-09-30 15:05:58', 1),
(34, 'Software Developer', 'Laravel, React Js, Spring', 'I&amp;amp;amp;amp;#039;m building a website which includes a login page. I need to redirect the user to their profile page once they&amp;amp;amp;amp;#039;ve logged in successfully, but I don&amp;amp;amp;amp;#039;t know how to do that in PHP (It&amp;amp;amp;amp;#039;s my first site).\n\nI&amp;amp;amp;amp;#039;ve searched the internet and have been told that the header() function should do the trick, but it will only work if I haven&amp;amp;amp;amp;#039;t outputted any information before using it.', '3', '2022-09-23 01:30:41', '2022-09-30 13:22:45', 1),
(35, 'Senior Ajax Developer', 'PHP, Javascript, Ajax', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6', '2022-09-26 00:20:10', '2022-09-27 14:29:19', 1),
(36, 'Python Developers ll', 'Python, Django, Javascript', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &amp;#039;Content here, content here&amp;#039;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &amp;#039;lorem ipsum&amp;#039; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '11', '2022-09-26 01:44:26', '2022-09-30 10:44:25', 1),
(37, 'test developer', 'test, test1, test2', 'Force your .nav’s contents to extend the full available width one of two modifier classes. To proportionately fill all available space with your .nav-items, use .nav-fill. Notice that all horizontal space is occupied, but not every nav item has the same width.', '1', '2022-09-27 07:19:32', '2022-09-28 16:07:24', 1),
(38, 'Sleeping Developers', 'Python, Django, Javascript', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically-typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly procedural), object-oriented and functional programming. It is often described as a &amp;quot;batteries included&amp;quot; language due to its comprehensive standard library.', '10', '2022-09-28 00:23:16', '2022-09-30 09:23:26', 1),
(40, 'Software Analyst', 'Laravel, Vue.js, MySQL', 'You can use any AJAX library you like with React. Some popular ones are Axios, jQuery AJAX, and the browser built-in window.fetch.', '1', '2022-09-29 06:54:31', '2022-09-29 14:54:31', 1),
(41, 'test', 'test, test1, test2', 'Note: We usually get a status value as the response from the backend. status 200 refers to the success to the API call. This is why we coded if res.status === 200, display “User created successfully” message.', '1', '2022-09-29 06:57:03', '2022-09-29 14:57:03', 1),
(42, 'Junior Software Engineers', 'React.js, Node.js, MongoDB', 'If you prefer to use your own text editor, you can also download this HTML file, edit it, and open it from the local filesystem in your browser. It does a slow runtime code transformation, so we’d only recommend using this for simple demos.', '3', '2022-09-29 07:12:15', '2022-09-30 15:05:29', 1),
(44, 'System Analystsss', 'PHP, Javascript, Ajax', 'Conveying meaning to assistive technologies \nUsing color to add meaning only provides a visual indication, which will not be conveyed to users of assistive technologies – such as screen readers. Ensure that information denoted by the color is either obvious from the content itself (e.g. the visible text), or is included through alternative means, such as additional text hidden with the .visually-hidden class.', '3', '2022-09-29 08:20:13', '2022-09-30 11:32:01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`listing_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `listing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
