# App Localizations
Localize iOS app.

## Steps:
- Open project
- Navigate to Project Settings -> Project Tab -> Localizations -> Add new language.
![alt text](https://github.com/AnandKore91/Localization/blob/master/Steps/Screenshot%202018-10-12%20at%206.30.54%20PM.png)
- Choose files and reference language to create localizations.
![alt text](https://github.com/AnandKore91/Localization/blob/master/Steps/Screenshot%202018-10-12%20at%206.33.59%20PM.png)
- Xcode will add Storyboard.string file in Storyboard file if selected in previous step.
![alt text](http://url/to/img.png)

## Localize Storyboard and XIBs:
- Select Storyboard -> File inspector -> Localizations -> Select applicable languages. It will add string files for that languages.
![alt text](https://github.com/AnandKore91/Localization/blob/master/Steps/Screenshot%202018-10-12%20at%206.36.27%20PM.png)
- You can update strings for Storyboard labels in appropriate .string file.
- To test localizations: -> Edit schema -> Run -> Options -> Application language -> Select language and re-run the app.
![alt text](https://github.com/AnandKore91/Localization/blob/master/Steps/Screenshot%202018-10-12%20at%206.38.26%20PM.png)

## Localize strings:
- Add new ".String" file into project.
- Select ".String" file -> File inspector -> Localizations -> Select applicable languages.
- Add key-values for strings.


## Add Helper Functions
- Create extension of class String/NSString
- Create enum of all localizable language's code.
- Example:
```
    enum LanguageCode:String{
        case es = "es"
        case en = "en"
    }
```
- Add function which will take one parameter of type string and it will return string.
- Example:
```
    func localizableString(loc:LanguageCode) -> String{
        let path = Bundle.main.path(forResource:loc, ofType:"lproj") //lproj is localizations file extension.
        let bundle = Bundle(path:path)
        return NSLocalizedString(self, tableName:nil, bundle:bundle, value:"", comment: "")

    }
```
- Usage:
    lblFirstName.text = "FirstNameKey".localizableString(loc:.es)
- Best practice is setting all text in single function and taking input of language.
    Example:
    ```
    func languageChanged:(loc:LanguageCode){
        lblFirstName.text = "FirstNameKey".localizableString(loc:loc)
        lblLastName.text = "FirstNameKey".localizableString(loc:loc)
    }
    ```
