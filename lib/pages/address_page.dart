
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprov/providers/ui_provider.dart';
class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider=Provider.of<UiProvider>(context);
    final currentName=uiProvider.name;
    return Column(
      children: [
        const Center(child: Text("addres page")),
        _nombre(context),

        ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.purple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
        elevation: 3,
        textStyle: const TextStyle(color: Colors.green),
        padding: const EdgeInsets.all(0.0)
      ),
        onPressed: ()=>uiProvider.name =currentName,
         child: Ink(
      decoration:BoxDecoration(
      gradient: LinearGradient(colors: [Colors.purple.withOpacity(0.6), Colors.green]),
      borderRadius: BorderRadius.circular(20)) ,
      child:Container(
        alignment: Alignment.center,
        child: const Text('Publicar')
      )
    ),
        )        
      ],
    );
  }
}

Widget _nombre( BuildContext context) {
  final uiProvider=Provider.of<UiProvider>(context);
  final currentName=uiProvider.name;

    return TextFormField(
      initialValue: currentName,
      textCapitalization: TextCapitalization.sentences,
      onSaved: (value) =>currentName,
      decoration: InputDecoration(
                hintText: "Escribe el nombre",
                labelStyle: const TextStyle(color: Colors.purple ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none
                ),
      ),
    );
}