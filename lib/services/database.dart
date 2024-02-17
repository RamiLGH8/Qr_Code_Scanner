import 'package:mongo_dart/mongo_dart.dart';

class MongoDataBase {
  static Db? db;
  static DbCollection? userCollection;
  static connect() async {
    try{
      db=await Db.create("mongodb+srv://ramilgh1604:Vq9CdEdYVJJuc6Gr@cluster0.cfnhkmu.mongodb.net/test?retryWrites=true&w=majority");
      await db!.open();
      userCollection=db!.collection('users');
      print('Connected to database');
    }catch(e){
      print(e);
    };

  }

  static Future<Map<String, dynamic>> getDocument(String? id) async {
    try {
      final user = await userCollection!.findOne({"_id": ObjectId.fromHexString(id!)});
      return user as Map<String, dynamic>;
    } catch (e) {
      print(e);
      return Future(() => {});
    }
  }
}
