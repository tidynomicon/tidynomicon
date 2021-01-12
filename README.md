<div align="center">
  <h1><em>The Tidynomicon</em></h1>
  <h2><em>A Brief Introduction to R for People Who Count From Zero</em></h2>
  <img src="https://raw.githubusercontent.com/gvwilson/tidynomicon/master/figures/index/cthulhu-900x759.jpg" width="300" />
  <p><em>"Speak not to me of madness, you who count from zero."</em></p>
</div>

Years ago,
Patrick Burns wrote *[The R Inferno][r-inferno]*,
a guide to R for those who think they are in hell.
Upon first encountering the language after two decades of using Python,
I thought Burns was an optimist---after all,
hell has rules.

I have since realized that R does too,
and that they are no more confusing or contradictory than those of other programming languages.
They only appear so because R draws on a tradition unfamiliar to those of us raised with derivatives of C.
Counting from one,
copying data rather than modifying it,
lazy evaluation:
to quote [the other bard][pratchett],
these are not mad, just differently sane.

Welcome, then, to a universe where the strange will become familiar,
and everything familiar, strange.
Welcome, thrice welcome, to R.

## Setting Up

1.  Create an account on [rstudio.cloud][rstudio-cloud],
    then create a new project and start typing.
2.  Alternatively:
    1.  [Install R][r-install].
        We recommend that you do *not* use conda, Brew, or other platform-specific package managers to do this,
        as they sometimes only install part of what you need.
    2.  [Install RStudio][rstudio-install].
    3.  In the RStudio console,
        run `install.packages("tidyverse")` to install the tidyverse libraries.
        We will install others as we go along,
        but we're going to need this soon.

Please see [BUILD.md](./BUILD.md) for a description of how to rebuild this lesson
and why it is designed the way it is.

[knitr]: https://yihui.name/knitr/
[kramdown]: https://kramdown.gettalong.org/
[merely-useful]: http://merely-useful.github.io/
[pratchett]: https://www.terrypratchettbooks.com/sir-terry/
[r-inferno]: https://www.burns-stat.com/documents/books/the-r-inferno/
[r-install]: https://cran.rstudio.com/
[rstudio-cloud]: https://rstudio.cloud/
[rstudio-install]: https://www.rstudio.com/products/rstudio/download/
