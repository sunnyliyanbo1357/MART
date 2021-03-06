# MART
Mobile App Researcher Toolkit [Demo](https://sunnyliyanbo1357.github.io/MART/).

### Abstract
Mobile App Researcher Toolkit (MART) is a webapp that provides an intuitive way for researchers to modify their medical research app. In MART, the app’s configuration JSON files would be structured in graphic design, so that researchers can easily edit the survey questions, activities, and consent file as the medical research requirement changes. By building a bridge between researchers and software developers, MART can significantly reduce the development time and communication costs in medical research.

### Background
[ResearchStack](http://researchstack.org/) and [ResearchKit](http://researchkit.org/) are medical research app frameworks for Android and iOS platform. Since their appearance, it has never been easier for medical research to reach our patients. However, the software development costs (money, time, resource) of RS/RK apps is still beyond the capability of many researchers. And even during the development, most of the costs has spend on communication and the duplicated works for small changes. By building a translator between medical requirement and computer language, the costs for developing and modifying apps can be significantly reduced, which enable more medical research.
Last semester, I developed an iOS app for migraine research. By building an patient-oriented data collection app and working with researchers and physicians, I understood the process of an medical research, the requirement for research apps, and the basic ResearchKit development rules, which enable me to get the background knowledge of building an interface for researchers to create their own apps this semester. RSuite is the iOS starter app which serializes test.json file to generate the task list. 

Reference: [JSON-editor](https://github.com/jdorn/json-editor.git)

### User Guide
Please read the [User Guide Document] (https://github.com/sunnyliyanbo1357/MART/blob/master/User:Developer_Documentationpdf.pdf) in the file list for user guide and developement documents. 
- Go to the MART web page by clicking Demo
- Put the context of your mobile app or questionnaire into the textboxes accordingly
- click preview to check JSON file format, copy and paste it to your local JSON files
- If you have access token, put it in the box and click update
- Rerun your ResearchSuite mobile app in Xcode/AndriodStudio. If the app content doesn't update, wait for a few minutes and rerun the app.

** If you would like to test or request for Access Token, please contact at yl2556@cornell.edu **




### Small Data Lab | Cornell Tech
