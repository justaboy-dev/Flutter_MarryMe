import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height - 200,
          maxWidth: MediaQuery.of(context).size.width / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 8),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(12)),
              child: TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Text(
                      "Get Started".toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: "Neucha",
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 8,
                top: 20,
                bottom: 20),
            child: const SizedBox(
                child: Text(
              "People make it complicated, just enjoy this moments",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: "DancingScript",
                  fontWeight: FontWeight.w400),
            )),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
