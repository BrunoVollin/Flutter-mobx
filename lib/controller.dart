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
  String name = "";

  @observable
  String surname = "";

  @computed
  String get completeName => "$name $surname";

  @action
  changeName(String newName) {
    name = newName;
  }

  @action
  changeSurname(String newSurname) {
    surname = newSurname;
  }
}
