import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controladores/usuario.dart';

class Login extends StatelessWidget {

  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Usuario u = Get.put(Usuario());

    return Scaffold(
        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height *0.5,
                  decoration: BoxDecoration(
                    color: Color(0xffED3589),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200), bottomRight: Radius.circular(200))
                  ),
                ),
                Center(
                  child: Card(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.2),
                    child: Container(
                      width: MediaQuery.of(context).size.width *0.8,
                      height: MediaQuery.of(context).size.height *0.5,
                      child: Column(
                        children: [
                          Icon(Icons.account_circle_rounded),
                          TextFormField(
                            controller: u.username,
                            style: TextStyle(color: Colors.blueGrey, fontSize: 18, ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
                              prefix: Container(
                                width: 28,
                                height: 28,
                                margin: const EdgeInsets.only(right: 4.0),
                                padding: const EdgeInsets.only(left: 2.0, right: 2, top: 6, bottom: 0),
                              ),
                              hintText: 'Username',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )

              ],
            )

          ],
        ),

    );
  }
}
