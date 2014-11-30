---
layout: post
title: Survival of the Fittest
subtitle: The Expressiveness of Computer Languages
cover: /assets/images/essays/survival1.png
date: '2013-12-05T21:17:00-05:00'
tags:
- essays
---

I come from a very heavy Java background.  I’ve worked with Java for almost 10 years now, and I’ve worked with very large Java code bases in my previous jobs.  Needless to say, I was a huge design pattern nut.

For those of you who are not familiar, a design pattern is a generalized solution for a recurring problem within software engineering, mostly in the domain of source code organization and interactions.  The [Gang of Four](http://www.amazon.com/Design-Patterns-Elements-Reusable-Object-Oriented/dp/0201633612) book is considered to be the bible of design patterns for Object Oriented Design, and it quickly became my obsession.  Whenever I encountered an architectural problem I couldn’t quite figure out how to solve (or even if I did figure out a solution, but wondered if there was a better one), that was the book I would turn to.

Design patterns ruled my coding life, and I aimed to understand as many as I could.  I love thinking about abstract problems.  I love thinking about software architecture: how different modules communicate with each other, how different parts of code interact with one another, and how to achieve maximum code clarity and self-documentation.  At the time, design patterns seemed like the best way to achieve that.

However, as time went on, and the more design patterns I encountered and implemented, something strange started happening…I started to hate coding.  I wasn’t exactly sure why, but for some reason I felt unfulfilled, aggravated, and frustrated whenever I actually needed to sit down and make something happen.  I still held my love for solving problems in an elegant fashion, figuring out the best way to organize modules in order to [decrease coupling and increase code cohesion](http://en.wikipedia.org/wiki/Coupling_(computer_programming)), however, I began to accept it as a fact that coding brilliant solutions was tedious and boring.  Not only that, I had began doubting whether all brilliant solutions could always be expressed in a clear self-documenting way in code.  Though design patterns offered a venue on how to organize code in such a way that modules were loosely coupled but cohesive, they actually left the source code looking klunky, confusing, and incomprehensible — unless you were already familiar with the design patterns used.

Though not as extensively as Java, I have worked with many other languages before.  At this point in my life I started yearning for the days when I used to work in SML due to how structured and clean my code had felt even though I was tackling rather complicated problems.  I missed my Functors, my Signatures and Modules, my Option Types and functions as first class citizens.  However, SML had always felt like a toy, mostly because of its grave performance, leaving its main purpose as an educational tool more so than anything else.

And such was life.  I eventually left my old job and found myself working here at [Moovweb](http://moovweb.com/).  The language of choice?  [Go](http://golang.org/).  Hmm, interesting, never heard of it.  It seemed like some weird chimera of Python and C with the concurrency constructs of SML.  Quite fascinating indeed, but it was just another language, nothing to get hyped over.  And so, I churned away and learned as much as I could about it as I began using it to code on my day to day.

As time went on, though, something interesting had happened…I started to enjoy coding again.  I actually found it fun to code solutions in Go.  It was ridiculously refreshing how easily the language allowed you to express complicated ideas.  It turned what once felt like a chore into a wonderful experience once again.  There was no boilerplate, no magic, no tricks; the code was always clear, self explanatory, concise, and clean.  That’s when it had dawned on me…

### Design patterns exist to compensate for a programming language’s lack of expressiveness.

I remember feeling super proud of myself for coming up with this idea.  I walked around the halls with a huge smirk on my face, giving high fives to people, finger guns ablazing.

<figure>
<img src="/assets/images/essays/survival2.gif">
</figure>

Little did I know that this revelation had been an item of much discussion for nearly ten years now within the Computer Science community.  Jeff Atwood from Coding Horror compiled a nice blog post about how [design patterns might be how languages](http://www.codinghorror.com/blog/2005/06/are-design-patterns-how-languages-evolve.html) evolve back in 2005 where he quotes a wiki entry from Cunningham & Cunningham about how the [presence of excessive design patterns is indicative of missing language features](http://c2.com/cgi/wiki?AreDesignPatternsMissingLanguageFeatures).

Though suddenly dulled of my triumph of coming up with something new and novel, I had at least gained a new confidence that the thought had merit and became increasingly interested in the idea of design patterns as language features.  As mentioned in Jeff Atwood’s post linked above, [Peter Norvig](http://norvig.com/design-patterns/) had found that 16 of the 23 design patterns described in the Gang of Four book were invisible or simpler in the Lisp programming language.

But Lisp is a very old programming language.  If design patterns is indeed how languages evolve, then shouldn’t we have languages today that are way more expressive than Lisp?  Instead, languages such as C++ and Java came up and overtook the industry.   I guess like Darwinian evolution, we most certainly expect some unfavorable mutations to take place, we can only learn through experimentation and failure after all.

And boy do we experiment!  There are currently over [600 programming languages](http://en.wikipedia.org/wiki/List_of_programming_languages) out there.  Some are mild variations of others, some are testing out completely new and different paradigms, and some are just [good for a laugh](http://en.wikipedia.org/wiki/Esoteric_programming_language)…but why are languages such as Java and C++ still in such heavy use when it’s been shown that they lack expressiveness?  Shouldn’t they have been weeded out in the survival of the fittest, leaving only the most expressive languages around for common usage?

Well, in a world where novelty is appreciated, it seems more plausible that we would deal with certain inconveniences in order to say that we’re working with something novel.  Java and C++ were novel at the time they were created because Object Oriented Design was novel.  In fact, I would argue that most languages that gain any traction are languages that are based on a novel concept, a new paradigm, or a new attempt at applying expressiveness.

What does this mean for our evolution process?  Suddenly our definition of “fittest” is no longer how expressive a language is, but rather, how novel it is.  This would explain how platforms such as NodeJS are gaining traction, likewise Ruby’s reintroduction to popularity on the appearance of the novel Rails framework[<sup>1</sup>](#footnotes).  After a while, the pattern becomes fairly clear:  When people start designing new programming languages or frameworks they’re not targeting expressiveness, they’re targeting novelty.

And that is why I love Go so much.  During its humble beginnings Go would get a lot of flak from the community because it didn’t introduce anything new or novel.  The language was “nothing special” people would say.  Rather than focusing on a new niche or novelty, the designers of the language focused on expressiveness, and it shows.  I was amazed at how an innocent-looking language feature such as [embedding](http://golang.org/doc/effective_go.html#embedding) could be used to simplify a wealth of design patterns; Composite, Facade, Proxy, Bridge, and Adapter[<sup>2</sup>](#footnotes).  Not only that, but [channels](http://golangtutorials.blogspot.com/2011/06/channels-in-go.html), [range](https://code.google.com/p/go-wiki/wiki/Range), [slices](http://blog.golang.org/slices), and a wealth of other little language features come into your aid when implementing all sorts of different design patterns.  None of these features are new or novel, they’ve existed in many languages prior, yet you don’t usually see them all combined in one language with such synergy as they are in Go.

Go still adheres to the same laws of evolution as all its other language counterparts, but it’s betting that expressiveness (rather than novelty) should be used to define fitness.  It would’ve been a long shot a few years ago, but I think the Computer Science community is at a point where they’re ready for that change. As Go gains traction I hope that more debate centers around the concept of language expressiveness, hopefully leading to a world where the most expressive languages thrive.

---
<a name="footnotes"></a>

<ol>
<li>I’d like to point out that novelty is not the *only* reason why languages and platforms are adopted.  There’s obviously many factors.  One such factor, the amount of time required to create something useful with it, apply to both NodeJS and Rails which are definitely was huge factor in their recent adoption.</li>
<li>Worth its own blog post to explain.</li>
</ol>
