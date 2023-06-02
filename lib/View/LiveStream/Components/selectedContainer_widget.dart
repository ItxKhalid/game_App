import 'package:flutter/material.dart';

class SelectableContainers extends StatefulWidget {
  @override
  _SelectableContainersState createState() => _SelectableContainersState();
}

class _SelectableContainersState extends State<SelectableContainers> {
  int selectedContainer = 1;

  void selectContainer(int index) {
    setState(() {
      selectedContainer = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  selectContainer(1);
                },
                child: Container(
                  height: 70,
                  width: 150,
                  color: selectedContainer == 1 ? Colors.blue : Colors.grey,
                  child: Center(
                    child: Text(
                      'Container 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  selectContainer(2);
                },
                child: Container(
                  height: 70,
                  width: 150,
                  color: selectedContainer == 2 ? Colors.blue : Colors.grey,
                  child: Center(
                    child: Text(
                      'Container 2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height:50),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: CustomTextFormField(),
          )
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatefulWidget {
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  TextEditingController _textEditingController = TextEditingController();
  FocusNode _focusNode = FocusNode();
  bool _hasError = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {
          _updateHasError();
        });
      }
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  String? _validateTextField(String value) {
    if (value.isEmpty) {
      return 'This field is required';
    }

    return null;
  }

  void _handleSubmitted(String value) {
    setState(() {
      _errorMessage = _validateTextField(value);
      _updateHasError();
    });
  }

  void _updateHasError() {
    _hasError = _errorMessage != null && _textEditingController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textEditingController,
      focusNode: _focusNode,
      onChanged: _handleSubmitted,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: _hasError ? Colors.redAccent : Colors.grey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(
            color: Colors.indigoAccent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(
            color: Colors.redAccent,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(
            color: Colors.redAccent,
          ),
        ),
        errorText: _hasError ? _errorMessage : null,
      ),
    );
  }
}