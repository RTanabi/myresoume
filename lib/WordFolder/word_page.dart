Map englishWord = {
  "name": "Reza Tanabi",
  "job": "Flutter Developer",
  "resumeBTN": "Resume",
  "projectBTN": "Projects",
  "languageBTN": "Fa",
  "constPhone": "Phone",
  "constEmail": "Email",
  "constFollow": "Follow Me",
  "constMaker": "© 2022 By Reza Tanabi.\nProudly created with Flutter",
  "mainHello": "Hello",
  "mainTitleAbout": "A Bit About Me",
  "mainAbout":
      "I'm a paragraph. Click here to add your own text and edit me. I’m a great place for you to tell a story and let your users know a little more about you.",
  "constWork": "Work\nExperience",
  "constEducation": "Education",
  "constSkills": "Skills \n& Expertise",
};

Map persianWord = {
  "name": "رضا طنابی",
  "job": "توسعه دهنده فلاتر",
  "resumeBTN": "رزومه",
  "projectBTN": "پروژه ها",
  "languageBTN": "En",
  "constPhone": "تلفن",
  "constEmail": "ایمیل",
  "constFollow": "شبکه ها",
  "constMaker": "© 2022 By Reza Tanabi.\nProudly created with Flutter",
  "mainHello": "سلام",
  "mainTitleAbout": "کمی در مورد من",
  "mainAbout":
      "من یک پاراگراف هستم. اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید. من یک مکان عالی برای شما هستم تا داستانی بگویید و به کاربران خود اجازه دهید کمی بیشتر درباره شما بدانند.",
  "constWork": "تجربه کاری",
  "constEducation": "تحصیلات",
  "constSkills": "مهارت ها و تخصص",
};

String language = "En";

Map word() {
  if (language == "Fa") {
    return persianWord;
  } else {
    return englishWord;
  }
}
