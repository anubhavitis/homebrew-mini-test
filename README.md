# Homebrew Formula Learning Project

This project is created to learn and understand how Homebrew formulas are created and packaged. It includes a dummy CLI application that will be used as a test case for creating and testing a Homebrew formula.

# Ptree

Ptree is a small program that I have used for this test installation. 
```
Usage: ptree [OPTIONS]

Options:
  -l <LEVEL>         Level flag [default: 7]
  -c <CATEGORY>      Category flag [default: |]
  -r                 
  -h, --help         Print help
  -V, --version      Print version
```

```
$ ptree   
            | 
          | | | 
        | | | | | 
      | | | | | | | 
    | | | | | | | | | 
  | | | | | | | | | | | 
| | | | | | | | | | | | | 
```

```
$ ptree -c '*' -l 3 -r 
* * * * * 
  * * * 
    * 
```


Did I make you recall you highschool? :xD

# Installation steps:

```
brew tap anubhavitis/mini-test
brew install mini-test
```

note how I am tapping to ```anubhavitis/mini-test```, not ```anubhavitis/homebrew-mini-test``` that's just benefits of using right naming convention.
