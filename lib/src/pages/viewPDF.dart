import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Viewpdf extends StatefulWidget {
  @override
  _ViewpdfState createState() => _ViewpdfState();
}

class _ViewpdfState extends State<Viewpdf> {

  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadfile();
  }

   loadfile() async {
    /*document = await PDFDocument.fromURL(
    'https://82cc3e96-d0ab-4e18-a0c0-5bd7c21b2244.filesusr.com/ugd/b17e2e_4f49889036fe46ce949586d9eb8bd827.pdf'
    );*/

    document = await PDFDocument.fromAsset('assets/Alicia_y_el_coronavirus.pdf');

    setState(() {
      document=document;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Cuento Alicia y el coronavirus',style: TextStyle(fontSize: 23)),
      ),
      body: Center(
        child: PDFViewer(document: document)
      ),
    );
  }

}