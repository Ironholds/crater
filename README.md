##Calling rust from R
Duncan wrote a [small demonstrator](https://github.com/duncantl/RCallRust) of writing rust code, compiling it and dynamically loading it into R. This package acts as a demonstrator of fitting rust code inside an R package, and how seamless the result can look for the end user.

###Dependencies
At the moment, `crater` has a lot of dependencies on Duncan's old, variably-available bindings and foreign function interfaces - it's not intended to be production ready and in fact we probably need to do a lot to rebuild those FFIs before it could be. But you'll need:

1. [Rffi](http://www.omegahat.org/Rffi/) and [libffi](https://sourceware.org/libffi/)
2. [RAutoGenRuntime](http://www.omegahat.org/RAutoGenRunTime/)
3. [rust](http://www.rust-lang.org/install.html)

###Use

    devtools::install_github("ironholds/crater")
    library(crater)
    multiply_by_100(12)
    multiply_by_10(12)
