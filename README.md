# GB

GB (Git Branch) is a small utility for working with git branches.

## Installation

1. Install the gem

		# From source
    $ git clone https://github.com/jeffremer/gb.git
		$ cd gb
		$ rake install
		
		# From rubygems.org
		$ gem install gb

2. Run gb setup from inside your git repository:

		$ gb setup

## Usage

		$ gb
		Tasks:
		  gb feature [SHORT_DESCRIPTION]       # Creates a feature branch
		  gb fix [NUMBER] [SHORT_DESCRIPTION]  # Creates a bug fix branch
		  gb help [TASK]                       # Describe available tasks or one specific task
		  gb setup                             # Runs the first time configuration
		
### Create a feature branch

		$ gb feature My new feature branch
					run  git checkout -b jr/my-new-feature-branch from "."
					
### Create a bug fix branch

		$ gb fix 1 My new bug fix branch
					run  git checkout -b jr/GB-1/my-new-bug-fix-branch from "."
		
## Contributing

1. Fork it
2. Create your feature branch (`gb feature My mew feature`) or bug fix (`gb fix 123 My bug fix`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
