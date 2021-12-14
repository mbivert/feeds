# Introduction
Simple shell feed "manager" based on curl(1) and xmllint(1) (from libxml(3)).

# Documentation

    NAME
    	feeds

    SYNOPSYS
    	feeds [-h]
    	feeds [-anv]

    DESCRIPTION
    	Simple feeds manager. Reads feeds URLs from $HOME/.feeds, one per
    	line, two fields per line: field type and URL:

    	  <atom|rss>  <url/to/field>

    	Lines starting with a '#' are ignored (comments).

    	Display title and URL for all entries that aren't found in $HOME/.feeds.seen,
    	unless -a is specified, in which case, all (remote) entries are
    	displayed.

    	Entries are automatically marked as read, that is appended
    	to $HOME/.feeds.seen, unless -n is specified.

    	For primitive debugging purposes, -v can be used.

