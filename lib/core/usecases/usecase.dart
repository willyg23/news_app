/*
use cases:

where the business logic gets executed.
all a use case will do is get data from a repository
all use cases should have call a method. regardless of what it's doing, the interface should remain the same to prevent confusion.
so we'll use this class as an interface for other usecase files

*/

abstract class UseCase<Type,Params> {
  Future<Type> call({Params params});
}