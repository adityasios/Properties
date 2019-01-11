Stored Properties
Computed Properties -  not now
Property Observers
Global and Local Variables
Type Properties






//INTRO
Properties associate values with a particular class, structure, or enumeration.
Stored properties - store constant and variable values as part of an instance, whereas
computed properties calculate (rather than store) a value.
Computed properties are provided by classes, structures, and enumerations.
Stored properties are provided only by classes and structures.




//STORED PROPERTIES
Stored properties can be either
variable stored properties (introduced by the var keyword) or
constant stored properties (introduced by the let keyword)
You can also set and modify the initial value for a stored property during initialization.





//Stored Properties of Constant Structure Instances
If you create an instance of a structure and assign that instance to a constant, you cannot modify the instance’s properties, even if they were declared as variable properties:
This behavior is due to structures being value types. When an instance of a value type is marked as a constant, so are all of its properties.
The same is not true for classes, which are reference types. If you assign an instance of a reference type to a constant, you can still change that instance’s variable properties.




Lazy Stored Properties
A lazy stored property is a property whose initial value is not calculated until the first time it is used.

You must always declare a lazy property as a variable (with the var keyword), because its initial value might not be retrieved until after instance initialization completes. 
Constant properties must always have a value before initialization completes, and therefore cannot be declared as lazy.

Lazy Stored Property vs Stored Property
There are a few advantage of a lazy property over a stored property.
1.The closure associated to the lazy property is executed only if you read that property. So if for some reason that property is not used (maybe because of some decision of the user) you avoid unnecessary allocation and computation.
2.You can populate a lazy property with the value of a stored property.
3.You can use self inside the closure of a lazy property. If you need to use self inside the function. In fact, if you're using a class rather than a structure, you should also declare [unowned self] inside your function so that you don't create a strong reference cycle(check the code below).


Lazy rules:
1.You can’t use lazy with let .
2.You can’t use it with computed properties . Because, a computed property returns the value every time we try to access it after executing the code 3.inside the computation block.
4.You can use lazy only with members of struct and class .
5.Lazy variables are not initialised atomically and so is not thread safe.
(If a property marked with the lazy modifier is accessed by multiple threads simultaneously and the property has not yet been initialized, there is no guarantee that the property will be initialized only once.)


//PROPERTY OBSERVER
Property observers observe and respond to changes in a property’s value.
Property observers are called every time a property’s value is set, even if the new value is the same as the property’s current value

You have the option to define either or both of these observers on a property:
willSet is called just before the value is stored.
didSet is called immediately after the new value is stored.
You can add property observers to any stored properties you define, except for lazy stored properties



//TYPE PROPERTIES
Instance properties are properties that belong to an instance of a particular type.
Every time you create a new instance of that type, it has its own set of property values, separate from any other instance.

You can also define properties that belong to the type itself, not to any one instance of that type. There will only ever be one copy of these properties, no matter how many instances of that type you create. These kinds of properties are called type properties.


Type properties are useful for defining values that are universal to all instances of a particular type, such as a constant property that all instances can use (like a static constant in C), or a variable property that stores a value that is global to all instances of that type (like a static variable in C).

Stored type properties can be variables or constants. Computed type properties are always declared as variable properties, in the same way as computed instance properties.



