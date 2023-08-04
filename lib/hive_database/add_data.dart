
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled/hive_database/boxes.dart';
import 'package:untitled/model/notes_model.dart';


class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {

  final textController = TextEditingController();
  final descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white12,
                  Color(0xFFF1B8D6),
                ]),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.10,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.pinkAccent.withOpacity(0.80),
                            Colors.purple.withOpacity(0.80),
                          ]),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Center(
                          child: Text(
                            "Save Data",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 35),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 25,
                        )),
                  )
                ],
              ),
              Expanded(
                child: ValueListenableBuilder<Box<NotesModel>>(
                    valueListenable: Boxes.getData().listenable(),
                    builder: (context,box,_){
                      var data = box.values.toList().cast<NotesModel>();
                      return ListView.builder(
                          itemCount: box.length,
                          itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(10,0,10, 5),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(data[index].tittle.toString(),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                                          //Text(data[index].desc.toString()),

                                          const Spacer(),
                                          InkWell(
                                              onTap: (){
                                                _editing(data[index],data[index].tittle.toString(), data[index].desc.toString()) ;
                                              },
                                              child: const Icon(Icons.edit)),

                                          const SizedBox(width: 10,),
                                          InkWell(
                                              onTap: (){
                                                showDialog(
                                                    context: context,
                                                    builder: (context){
                                                      return AlertDialog(
                                                        title: const Text("Are you sure to delete?"),
                                                        actions: [
                                                          TextButton(
                                                              onPressed: (){
                                                                Navigator.pop(context);
                                                              },
                                                              child: const Text("No")),
                                                          TextButton(
                                                              onPressed: (){
                                                                delete(data[index]);
                                                                Navigator.pop(context);
                                                              },

                                                              child: const Text("Yes")),
                                                        ],
                                                      );
                                                    });
                                              },
                                              child:  const Icon(Icons.delete,color: Colors.red,)
                                          )
                                        ],
                                      ),
                                      Text(data[index].desc.toString(),style: const TextStyle(color: Colors.black45),)


                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    }
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple.withOpacity(0.70),
          elevation: 0,
          onPressed: () {
            _showDialog();

          },
          child: const Icon(Icons.add,size: 35,),
        )

    );
  }

  void delete(NotesModel notesModel)async{
    await notesModel.delete();
  }

  Future <void> _editing(NotesModel notesModel,String tittle,String desc) {

    textController.text = tittle;
    descController.text = desc;

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Edit Note",style: TextStyle(fontWeight: FontWeight.w500),),
            content: SingleChildScrollView(
              child: Column(
                children: [

                  TextFormField(
                    controller: textController,
                    decoration: const InputDecoration(

                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15,),
                  TextFormField(
                    controller: descController,
                    decoration: const InputDecoration(

                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                textController.clear();
                descController.clear();
                Navigator.pop(context);
              },
                  child: const Text("Cancel")),


              TextButton(onPressed: (){

                notesModel.tittle = textController.text.toString();
                notesModel.desc = descController.text.toString();

                notesModel.save();

                textController.clear();
                descController.clear();

                Navigator.pop(context);
              },
                  child: const Text("Save")),
            ],
          );
        })    ;
  }

  Future <void> _showDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(

            title: const Text("Note",style: TextStyle(fontWeight: FontWeight.w500),),
            content: SingleChildScrollView(
              child: Column(
                 children: [

                   TextFormField(
                     controller: textController,
                     decoration: const InputDecoration(
                       hintText: "Pet Name",
                       border: OutlineInputBorder(),
                     ),
                   ),

                   const SizedBox(height: 15,),
                   TextFormField(
                     controller: descController,
                     decoration: const InputDecoration(
                       hintText: "Description",
                       border: OutlineInputBorder(),
                     ),
                   ),
                 ],
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              },
                  child: const Text("Cancel",style: TextStyle(fontWeight: FontWeight.w500),)),
                  
              TextButton(onPressed: (){
                final data = NotesModel(
                    tittle: textController.text,
                    desc: descController.text);

              final box = Boxes.getData();
              box.add(data);

              //data.save();
              textController.clear();
              descController.clear();

                Navigator.pop(context);
              },
                  child: const Text("Save",style: TextStyle(fontWeight: FontWeight.w500),)),
            ],
          );
        })    ;
  }

}
