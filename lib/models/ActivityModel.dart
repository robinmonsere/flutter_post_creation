class Activity {
  final List<SetCollection> setCollection;
  final String name;

  Activity({required this.setCollection, required this.name});

  factory Activity.fromMap(Map<String, dynamic> json) {
    var setCollection = json['activity'] as List;
    List<SetCollection> setCollectionList = setCollection.map((i) => SetCollection.fromMap(i)).toList();
    return Activity(
      setCollection: setCollectionList,
      name: json['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'activity': setCollection.map((e) => e.toMap()).toList(),
      'name': name,
    };
  }
}

class SetCollection {
  int reps;
  int sets;
  int weight;

  SetCollection({required this.reps, required this.sets, required this.weight});

  int getProperty(String label) {
    if (label == 'reps') return reps;
    if (label == 'sets') return sets;
    if (label == 'weight') return weight;
    throw Exception('Invalid property name');
  }

  factory SetCollection.fromMap(Map<String, dynamic> json) {
    return SetCollection(
      reps: json['reps'],
      sets: json['sets'],
      weight: json['weight'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'reps': reps,
      'sets': sets,
      'weight': weight,
    };
  }
}
