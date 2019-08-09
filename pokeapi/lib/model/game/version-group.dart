import 'package:pokeapi/model/utils/common.dart';

class VersionGroup {
  NamedAPIResource generation;
  List<NamedAPIResource> regions;
  List<NamedAPIResource> pokedexes;
  List<NamedAPIResource> versions;
  String name;
  int id;
  List<NamedAPIResource> moveLearnMethods;
  int order;

  VersionGroup(
      {this.generation,
      this.regions,
      this.pokedexes,
      this.versions,
      this.name,
      this.id,
      this.moveLearnMethods,
      this.order});

  VersionGroup.fromJson(Map<String, dynamic> json) {
    generation = json['generation'] != null
        ? new NamedAPIResource.fromJson(json['generation'])
        : null;
    if (json['regions'] != null) {
      regions = new List<NamedAPIResource>();
      (json['regions'] as List).forEach((v) {
        regions.add(new NamedAPIResource.fromJson(v));
      });
    }
    if (json['pokedexes'] != null) {
      pokedexes = new List<NamedAPIResource>();
      (json['pokedexes'] as List).forEach((v) {
        pokedexes.add(new NamedAPIResource.fromJson(v));
      });
    }
    if (json['versions'] != null) {
      versions = new List<NamedAPIResource>();
      (json['versions'] as List).forEach((v) {
        versions.add(new NamedAPIResource.fromJson(v));
      });
    }
    name = json['name'];
    id = json['id'];
    if (json['move_learn_methods'] != null) {
      moveLearnMethods = new List<NamedAPIResource>();
      (json['move_learn_methods'] as List).forEach((v) {
        moveLearnMethods.add(new NamedAPIResource.fromJson(v));
      });
    }
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.generation != null) {
      data['generation'] = this.generation.toJson();
    }
    if (this.regions != null) {
      data['regions'] = this.regions.map((v) => v.toJson()).toList();
    }
    if (this.pokedexes != null) {
      data['pokedexes'] = this.pokedexes.map((v) => v.toJson()).toList();
    }
    if (this.versions != null) {
      data['versions'] = this.versions.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['id'] = this.id;
    if (this.moveLearnMethods != null) {
      data['move_learn_methods'] =
          this.moveLearnMethods.map((v) => v.toJson()).toList();
    }
    data['order'] = this.order;
    return data;
  }

  @override
  String toString() {
    return 'VersionGroupEntity{generation: $generation, regions: $regions, pokedexes: $pokedexes, versions: $versions, name: $name, id: $id, moveLearnMethods: $moveLearnMethods, order: $order}';
  }
}
