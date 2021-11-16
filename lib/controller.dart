import "package:mobx/mobx.dart";
part "controller.g.dart";
// ignore: slash_for_doc_comments
/** 
 * ! Run to create "controller.g.dart"
 * * $ flutter pub run build_runner build
 */


class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  int counter = 0;

  @action
  increment() {
    counter = counter + 2;
  }
}
