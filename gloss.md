# Glossary

**Absolute row number**<a id="absolute-row-number"></a>
:   the sequential index of a row in a table,
    regardless of what sections of the table is being displayed.

**Aggregation**<a id="aggregation"></a>
:   to combine many values into one,
    e.g.,
    by summing a set of numbers or concatenating a set of strings.

**Alias**<a id="alias"></a>
:   to have two (or more) references to the same physical data.

**Anonymous function**<a id="anonymous-function"></a>
:   a function that has not been assigned a name.
    Anonymous functions are usually quite short,
    and are usually defined where they are used,
    e.g.,
    as callbacks.

**Attribute**<a id="attribute"></a>
:   a name-value pair associated with an object,
    used to store metadata about the object
    such as an array's dimensions.

**Catch (exception)**<a id="catch-exception"></a>
:   to accept responsibility for handling an error
    or other unexpected event.
    R prefers "[handling](glossary.html#handle-condition) a [condition](glossary.html#condition)"
    to "catching an [exception](glossary.html#exception)".

**Condition**<a id="condition"></a>
:   an error or other unexpected event that disrupts the normal flow of control.
    See also [handle](glossary.html#handle-condition).

**Constructor (class)**<a id="constructor"></a>
:   a function that creates an object of a particular class.
    In the [S3](glossary.html#S3) object system,
    constructors are a convention rather than a requirement.

**Copy-on-modify**<a id="copy-on-modify"></a>
:   the practice of creating a new copy of [aliased](glossary.html#alias) data
    whenever there is an attempt to modify it
    so that each reference will believe theirs is the only one.

**Double square brackets**<a id="double-square-brackets"></a>
:   an index enclosed in `[[...]]`,
    used to return a single value of the underlying type.
    See also [single square brackets](glossary.html#single-square-brackets).

**Eager evaluation**<a id="eager-evaluation"></a>
:   evaluating an expression as soon as it is formed.

**Empty vector**<a id="empty-vector"></a>
:   a vector that contains no elements.
    Empty vectors have a type such as logical or character,
    and are *not* the same as [null](glossary.html#null).

**Environment**<a id="environment"></a>
:   a structure that stores a set of variable names and the values they refer to.

**Error**<a id="error"></a>
:   the most severe type of built-in [condition](glossary.html#condition) in R.

**Evaluating function**<a id="evaluating-function"></a>
:   a function that takes arguments as values.
    Most functions are evaluating functions.

**Evaluation**<a id="evaluation"></a>
:   the process of taking a complex expression such as `1+2*3/4`
    and turning it into a single irreducible value.

**Exception**<a id="exception"></a>
:   an object containing information about an error,
    or the condition that led to the error.
    R prefers "[handling](glossary.html#handle-condition) a [condition](glossary.html#condition)"
    to "[catching](glossary.html#catch-exception) an [exception](glossary.html#exception)".

**Filter**<a id="filter"></a>
:   to choose a set of records according to the values they contain.

**Fully qualified name**<a id="fully-qualified-name"></a>
:   an unambiguous name of the form <code><em>package</em>::<em>thing</em></code>.

**Functional programming**<a id="functional-programming"></a>
:   a style of programming in which functions transform data rather than modifying it.
    Functional programming relies heavily on [higher-order functions](glossary.html#higher-order-function).

**Generic function**<a id="generic-function"></a>
:   a collection of functions with similar purpose,
    each operating on a different class of data.

**Global environment**<a id="global-environment"></a>
:   the [environment](glossary.html#environment) that holds top-level definitions in R,
    e.g.,
    those written directly in the interpreter.

**Group**<a id="group"></a>
:   to divide data into subsets according to some criteria
    while leaving records in a single structure.

**Handle (a condition)**<a id="handle-condition"></a>
:   to accept responsibility for handling an error
    or other unexpected event.
    R prefers "handling a [condition](glossary.html#condition)"
    to "[catching](glossary.html#catch-exception) an [exception](glossary.html#exception)".

**Helper (class)**<a id="helper"></a>
:   in [S3](glossary.html#S3),
    a function that [constructs](glossary.html#constructor) and [validates](glossary.html#validator)
    an instance of a class.

**Heterogeneous**<a id="heterogeneous"></a>
:   potentially containing data of different types.
    Most vectors in R are [homogeneous](glossary.html#homogeneous),
    but lists can be heterogeneous.

**Higher-order function**<a id="higher-order-function"></a>
:   a function that takes one or more other functions as parameters.
    Higher-order functions such as `map` are commonly used in [functional programming](glossary.html#functional-programming).

**Homogeneous**<a id="homogeneous"></a>
:   containing data of only a single type.
    Most vectors in R are homogeneous.

**Hubris**<a id="hubris"></a>
:   excessive pride or self-confidence.
    See also [unit test](glossary.html#unit-test) (lack of).

**ISO3 country code**<a id="iso3-country-code"></a>
:   a three-letter code defined by ISO 3166-1 that identifies a specific country,
    dependent territory,
    or other geopolitical entity.

**Lazy evaluation**<a id="lazy-evaluation"></a>
:   delaying evaluation of an expression until the value is actually needed
    (or at least until after the point where it is first encountered).

**List**<a id="list"></a>
:   a vector that can contain values of many different types.

**List comprehension**<a id="list-comprehension"></a>
:   an expression that generates a new list from an existing one via an implicit loop.

**Logical indexing**<a id="logical-indexing"></a>
:   to index a vector or other structure with a vector of Booleans,
    keeping only the values that correspond to true values.

**Message**<a id="message"></a>
:   the least severe type of built-in [condition](glossary.html#condition) in R.

**Method**<a id="method"></a>
:   an implementation of a [generic function](glossary.html#generic-function)
    that handles objects of a specific class.

**NA**<a id="NA"></a>
:   a special value used to represent data that is Not Available.

**Name collision**<a id="name-collision"></a>
:   a situation in which the same name has been used in two different packages
    which are then used together,
    leading to ambiguity.

**Negative selection**<a id="negative-selection"></a>
:   to specify the elements of a vector or other data structure that *aren't* desired
    by negating their indices.

**Null**<a id="null"></a>
:   a special value used to represent a missing object.
    `NULL` is not the same as `NA`,
    and neither is the same as an [empty vector](glossary.html#empty-vector).

**Package**<a id="package"></a>
:   a collection of code, data, and documentation
    that can be distributed and re-used.

**Pipe operator**<a id="pipe-operator"></a>
:   the `%>%` used to make the output of one function the input of the next.

**Promise**<a id="promise"></a>
:   a data structure used to record an unevaluated expression for lazy evaluation.

**Pull indexing**<a id="pull-indexing"></a>
:   vectorized indexing in which the value at location *i* in the index vector
    specifies which element of the source vector
    is being pulled into that location in the result vector,
    i.e., `result[i] = source[index[i]]`.
    See also [push indexing](glossary.html#push-indexing).

**Push indexing**<a id="push-indexing"></a>
:   vectorized indexing in which the value at location *i* in the index vector
    specifies an element of the result vector that gets the corresponding element of the source vector,
    i.e., `result[index[i]] = source[i]`.
    Push indexing can easily produce gaps and collisions.
    See also [pull indexing](glossary.html#pull-indexing).

**Quosure**<a id="quosure"></a>
:   a data structure containing an unevaluated expression and its environment.

**Quoting function**<a id="quoting-function"></a>
:   a function that is passed expressions rather than the values of those expressions.

**Raise (exception)**<a id="raise-exception"></a>
:   a way of indicating that something has gone wrong in a program,
    or that some other unexpected event has occurred.
    R prefers "[signalling](glossary.html#signal-condition) a [condition](glossary.html#condition)"
    to "raising an [exception](glossary.html#exception)".

**Range expression**<a id="range-expression"></a>
:   an expression of the form <code><em>low</em>:<em>high</em></code>
    that is transformed a sequence of consecutive integers.

**Reactive programming**<a id="reactive-programming"></a>
:   a style of programming in which actions are triggered by external events.

**Reactive variable**<a id="reactive-variable"></a>
:   a variable whose value is automatically updated when some other value or values change.

**Recycle**<a id="recycle"></a>
:   to re-use values from a shorter vector in order to generate
    a sequence of the same length as a longer one.

**Relative row number**<a id="relative-row-number"></a>
:   the index of a row in a displayed portion of a table,
    which may or may not be the same as the [absolute row number](glossary.html#absolute-row-number)
    within the table.

**S3**<a id="S3"></a>
:   a framework for object-oriented programming in R.

**Scalar**<a id="scalar"></a>
:   a single value of a particular type, such as 1 or "a".
    Scalars don't really exist in R;
    values that appear to be scalars are actually vectors of unit length.

**Select**<a id="select"></a>
:   to choose entire columns from a table by name or location.

**Setup (testing)**<a id="testing-setup"></a>
:   code that is automatically run once before each [unit test](glossary.html#unit-test).

**Signal (a condition)**<a id="signal-condition"></a>
:   a way of indicating that something has gone wrong in a program,
    or that some other unexpected event has occurred.
    R prefers "signalling a [condition](glossary.html#condition)"
    to "[raising](glossary.html#raise-exception) an [exception](glossary.html#exception)".

**Single square brackets**<a id="single-square-brackets"></a>
:   an index enclosed in `[...]`,
    used to select a structure from another structure.
    See also [double square brackets](glossary.html#double-square-brackets).

**Storage allocation**<a id="storage-allocation"></a>
:   setting aside a block of memory for future use.

**Teardown (testing)**<a id="testing-teardown"></a>
:   code that is automatically run once after each [unit test](glossary.html#unit-test).

**Test fixture**<a id="test-fixture"></a>
:   the data structures, files, or other artefacts on which a [unit test](glossary.html#unit-test) operates.

**Test runner**<a id="test-runner"></a>
:   a software tool that finds and runs [unit tests](glossary.html#unit-test).

**Tibble**<a id="tibble"></a>
:   a modern replacement for R's data frame,
    which stores tabular data in columns and rows,
    defined and used in the [tidyverse](glossary.html#tidyverse).

**Tidyverse**<a id="tidyverse"></a>
:   a collection of R packages for operating on tabular data in consistent ways.

**Unit test**<a id="unit-test"></a>
:   a function that tests one aspect or property of a piece of software.

**Validator (class)**<a id="validator"></a>
:   a function that checks the consistency of an [S3](glossary.html#S3) object.

**Variable arguments**<a id="variable-arguments"></a>
:   in a function,
    the ability to take any number of arguments.
    R uses `...` to capture the "extra" arguments.

**Vector**<a id="vector"></a>
:   a sequence of values,
    usually of [homogeneous](glossary.html#homogeneous) type.
    Vectors are *the* fundamental data structure in R;
    [scalars](glossary.html#scalar) are actually vectors of unit length.

**Vectorize**<a id="vectorize"></a>
:   to write code so that operations are performed on entire vectors,
    rather than element-by-element within loops.

**Warning**<a id="warning"></a>
:   a built-in [condition](glossary.html#condition) in R of middling severity.

**Widget**<a id="widget"></a>
:   an interactive control element in an user interface.
