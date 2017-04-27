Board.destroy_all
Post.destroy_all
Listing.destroy_all
Note.destroy_all

base = Board.create(title: "Base Tools", image: "https://wearebase.com/wp-content/uploads/2015/11/3-base-logo-l.png")
tutorials = Board.create(title: "Tutorials", image: "Tutorials", image: "http://www.shopfactory.com/contents/media/tutorials-3.png")
html = Board.create(title: "HTML", image: "https://html5foundations.com/img/HTML_Basics.png")
design = Board.create(title: "Design Tools", image: "https://www.designbombs.com/wp-content/uploads/2016/06/web-design-tools.jpg")
games = Board.create(title: "Learning Games", image: "https://www.upsidelearning.com/blog/wp-content/uploads/2015/05/games-vs-game-based-learning-vs-gamification.jpg")
challenges = Board.create(title: "Code Challenges", image: "https://schoolcodebreaking.files.wordpress.com/2015/06/codeimage7.jpg")
inspiration = Board.create(title: "Inspirational Sites", image: "http://www.metrowomanng.com/wp-content/uploads/2016/01/generate_creative_inspiration.jpeg")
jobs = Board.create(title: "Job Searching", image: "https://fthmb.tqn.com/PD2yq9FAHEw10mVrQ4YF2ZAcmJk=/1733x1733/filters:no_upscale():fill(transparent,1)/about/182231000-56b095e85f9b58b7d024377c.jpg")
javascript = Board.create(title: "Javascript", image: "http://blog.flatironschool.com/wp-content/uploads/2013/11/Ruby-and-JavaScript.jpg")
ruby = Board.create(title: "Ruby", image: "https://www.google.com/search?q=ruby+on+rails&tbm=isch&source=lnms&sa=X&ved=0ahUKEwjU_vbfgMXTAhXGbSYKHZRVDzwQ_AUICCgD&biw=1440&bih=799#imgrc=r58ubApRuw8xrM:")
rails = Board.create(title: "Rails", image: "https://s-media-cache-ak0.pinimg.com/originals/fa/82/25/fa8225c085a5b740433786f96bdad109.png")
social = Board.create(title: "Networking", image: "https://www.droober.com/img/social.png")

slack = Post.create(title: "Slack", image: "https://forger.typo3.org/images/slack.svg", url: "https://slack.com/")
css_cheat_sheet = Post.create(title: "CSS2 Visual Cheat Sheet", image: "https://raw.githubusercontent.com/logeshpaul/Frontend-Cheat-Sheets/master/images/css2-cheatsheet-preview.png", url: "https://jserrao.github.io/FEWD-DC-29/lessons/class02/CSS2-Visual-Cheat-Sheet.pdf")
google_fonts = Post.create(title: "Google Fonts", image: "https://www.gstatic.com/images/icons/material/apps/fonts/1x/opengraph_color_1200dp.png", url: "https://fonts.google.com/")
html_cheat_sheet = Post.create(title: "HTML Tags Cheat Sheet", image: )