# Where Do My Taxes Go?
Have you ever wondered just how much of your tax money goes to a particular governmental department? So did we.

This is a little Sinatra app that answers the question of where do your tax dollars go.

We scoured the enacted and proposed governmental budgets from the federal level down to the state level, and turned that data into code that we could work with. At this point it is just raw numbers that represent each line item in the proposed and enacted budgets, and that line item's percentage of the total budget, but we have some big plans for what we could do in the future to help people understand what is happening with the governmental budgets.

See the live site at: [www.wheredomytaxesgo.co](https://www.wheredomytaxesgo.co)

## Motivation
A long barroom debate one evening about how much of our money was going to specific departments revealed that most of us have no idea what happens to our money after we pay our taxes. Much less how much of that money ends up at the various governmental departments and initiatives.

Eventually our curiosity to find out (and a few more happy hours of heated debate) turned into this project. An open, non-partisan, and unbiased window into the budgetary process of the government and an answer to the question: "Just where *does* my money go?"

## Framework Used
Built with:

[Ruby](https://www.ruby-lang.org/en/) using the [Sinatra](http://sinatrarb.com/) DSL.

## Features
Right now the site is fairly basic in terms of how it processes the budget data, but we have some big plans for possible directions to take it in the future. As the app currently sits, a user can enter their income and the US state they reside in, and the app will return a simple line by line breakdown of how much that individual contributes to various parts of the government.

We think we can still do more.

Planned roadmap:
 - [x] Basic Federal breakdowns
 - [ ] Add state-level budget data
 - [ ] Add Congressional compensation data
 - [ ] Compare breakdowns in enacted budgets vs proposed budgets
 - [ ] Increase the accuracy of tax obligation calculations
 - [ ] Refactor codebase & update CSS
 - [ ] Create a logo & favicon
 - [ ] Add a public page to show total donations collected to operate the site
 - [ ] Add a custom amount option to donate page
 - [ ] Make site fully-mobile
 - [ ] Add voting tool to let users vote for future functions to be added
 - [ ] Add additional countries (UK and CAN)

## Contribute
Thanks for having an interest in contributing!

The following is a set of guidelines for contributing to Where Do My Taxes Go. These are just guidelines, not rules, so use your best judgement and feel free to propose changes to this document in a pull request.

#### Issue
Ensure the issue was not already reported by searching on GitHub under issues. If you're unable to find an open issue addressing the bug, open a new issue.
- Log/check for an issue [here](https://github.com/jwhitish/wheredomytaxesgo/issues)

#### Pull Requests/Features
Pull Requests are always welcome.
- Check [here](https://www.wheredomytaxesgo.co/about#roadmap) for the most recent list of planned features that you may want to work on.

Please contact before starting development on new features.

Ensure the PR description clearly describes the problem and solution. It should include:

- The operating system/ruby version on which you tested.
- The relevant issue number, if applicable.
- A complete description of feature built, if applicable.

## Credits
This project was born out of a bar debate over how much of our incomes go to particular government departments, so I have to give thanks to MZ and VS for their tenacity and witty banter otherwise this project may never have been.

## License
This project is not currently licensed for reuse.
