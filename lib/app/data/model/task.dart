class Task {
  int? _id;
  String? _title;
  String? _description;
  int? _priority;
  String? _date;
  String? _assignedTask;
  int? _status;

  Task(
      this._title, this._date, this._priority, this._assignedTask, this._status,
      [this._description]);

  Task.withId(this._title, this._id, this._date, this._priority,
      this._assignedTask, this._status,
      [this._description]);

  int get id => _id!;

  String get title => _title!;

  String get description => _description!;

  int get priority => _priority!;

  String get date => _date!;

  String get assignedTask => _assignedTask!;

  int get status => _status!;

  set title(String newTitle) {
    if (newTitle.length < 250) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length < 350) {
      this._description = newDescription;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 3) {
      this._priority = newPriority;
    }
  }

  set status(int newStatus) {
    if (newStatus >= 1 && newStatus <= 3) {
      this._status = newStatus;
    }
  }

  set assigned(String newAssigned) {
    this._assignedTask = newAssigned;
  }

  // ## Convert the Task object to Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    map['assignedTask'] = _assignedTask;
    map['status'] = _status;
    return map;
  }

  // ## Extract a Task object from a Map object
  Task.fromObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
    this._assignedTask = map['assignedTask'];
    this._status = map['status'];
  }
}
