# automation-training

# Sales UI automation
This project allows to test Sales Page using Ruby - Capybara.

##Prerequisites
For the correct functioning of the work environment, the following programs need to be installed:
* Windows Environment: Windows 10.
* Google Chrome Version 81.0.4044.113 (Official Build) (64-bit)

##Installing
To start setting up the environment with BDD (Behavior Driven Development).
* Install [ Ruby 2.6.5-1 (x64)](https://rubyinstaller.org/downloads/archives/)
* Install RubyMine 2020.1 (Professional Edition) 
* Install Git version 2.21.0.windows.1

## Configuration
To install Gems for testing use Gemfile file.

## About the Project
This project is UI Automation-Practice that uses Ruby, Capybara, Selenium and Cucumber. It is implemented using POM(Page Object Model)
that lets to the framework to be scalable in the future. Also, It uses Singleton and Page Factory patterns 
in order to apply best practices in the framework development process. Finally in the execution it allows to generate reports
with screenshots(failed scenarios) embed in it.

## Execution
To execute this project the main focus is on features, to run any scenario go the **features/test/ui** directory 
and select the feature, right click in it and click on Run.

To run all features with command line write the following:
```bash
cd cucumber
cucumber features
```
To run all features and generate report with command line write the following:
```bash
cd cucumber
cucumber --format html --out reports/reports.html
```