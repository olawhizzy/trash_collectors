import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:trash_collectors/ui/shared/variables.dart';
class QoutePage extends StatefulWidget {
  const QoutePage({Key? key}) : super(key: key);

  @override
  _QoutePageState createState() => _QoutePageState();
}

class _QoutePageState extends State<QoutePage> {
  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _company = TextEditingController();
  TextEditingController _job = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _comments = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Request A Free Quote'),
      ),
      body: Container(
        padding: EdgeInsets.all(4.w),
        child: ListView(
          children: [
            SizedBox(height: 2.h,),
            TextFormField(
              controller: _firstname,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "First Name",
                fillColor: Colors.white,
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            TextFormField(
              controller: _lastname,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Last Name",
                fillColor: Colors.white,
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            TextFormField(
              controller: _company,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Company Name",
                fillColor: Colors.white,
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            TextFormField(
              controller: _job,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Job Title",
                fillColor: Colors.white,
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            TextFormField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email Address",
                fillColor: Colors.white,
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            TextFormField(
              controller: _phone,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Phone Number",
                fillColor: Colors.white,
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            TextFormField(
              controller: _comments,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Comments",
                fillColor: Colors.white,
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            //SizedBox(height: 2.h,),
            SizedBox(height: 4.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => _sendQuote(),
                  child: Container(
                    height: 50,
                    width: 50.w,
                    color: primaryColor,
                    alignment: Alignment.center,
                    child: Text('Submit', style: white16RegularTextStyle,),
                  ),
                )
              ],
            ),
            SizedBox(height: 4.h,),
          ],
        ),
      ),
    );
  }

  _sendQuote() async {
    String username = 'bennetdiane01@gmail.com';
    String password = 'dianebennet1000123445';

    final smtpServer = gmail(username, password);
    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('smtp.domain.com');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final Email email = Email(
      body: 'First name: ${_firstname} \n Last name: ${_lastname} \n Email: ${_email} \n Company name: ${_company} \n Job Title: ${_job} \n Phone: ${_phone} \n Comments: ${_comments} \n ';
      subject: 'Request a free quote :: 😀 :: ${DateTime.now()}',
      recipients: username,
      //cc: ['cc@example.com'],
      //bcc: ['bcc@example.com'],
      //attachmentPaths: ['/path/to/attachment.zip'],
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
    final message = Message()
      ..from = Address(username, _firstname.text)
      ..recipients.add('bennetdiane01@gmail.com')
      //..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
      //..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject = 'Request a free quote :: 😀 :: ${DateTime.now()}'
      ..text = 'First name: ${_firstname} \n Last name: ${_lastname} \n Email: ${_email} \n Company name: ${_company} \n Job Title: ${_job} \n Phone: ${_phone} \n Comments: ${_comments} \n ';
      //..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

    try {
      final sendReport = await send(message, smtpServer);
      var connection = PersistentConnection(smtpServer);

      // send the equivalent message
      await connection.send(message);

      // close the connection
      await connection.close();
      print('Message sent: ' + sendReport.toString());
      return AlertDialog(
        title: Text('Request sent!'),
        content: Text("Thank you for sending your request. We'll get back to you soon."),
      );
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
      return AlertDialog(
        title: Text('Error occured!'),
        content: Text("An error occured. Try again!!"),
      );
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
    // DONE


    // Let's send another message using a slightly different syntax:
    //
    // Addresses without a name part can be set directly.
    // For instance `..recipients.add('destination@example.com')`
    // If you want to display a name part you have to create an
    // Address object: `new Address('destination@example.com', 'Display name part')`
    // Creating and adding an Address object without a name part
    // `new Address('destination@example.com')` is equivalent to
    // adding the mail address as `String`.


    // Sending multiple messages with the same connection
    //
    // Create a smtp client that will persist the connection

  }
}
