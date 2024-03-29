import 'package:flutter/material.dart';
import 'package:init_flutter/extensions/string_extension.dart';
import 'package:init_flutter/widgets/icon_button_widget.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    this.decoration = const InputDecoration(),
    this.mandatory = false,
    this.readOnly = false,
    this.controller,
    this.maxLines = 1,
    this.validator,
    this.onChanged,
    this.isPassword = false,
  });

  final InputDecoration decoration;
  final bool mandatory;
  final bool readOnly;
  final TextEditingController? controller;
  final int? maxLines;
  final FormFieldValidator<String?>? validator;
  final ValueChanged<String>? onChanged;
  final bool isPassword;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      initialValue: widget.controller?.text,
      validator: (val) {
        if (widget.mandatory) {
          return val.isNullEmpty ? 'Required' : null;
        }
        return widget.validator?.call(val);
      },
      builder: (field) {
        final ThemeData themeData = Theme.of(context);

        print(themeData.colorScheme.error);
        final errorText = field.errorText;
        final decoration = widget.decoration;
        final controller = widget.controller;
        controller?.addListener(() {
          field.didChange(controller.text);
        });
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: TextFormField(
                obscureText: widget.isPassword ? obscure : false,
                onChanged: (val) {
                  field.didChange(val);
                  widget.onChanged?.call(val);
                },
                decoration: decoration.copyWith(
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.isPassword)
                        IconButtonWidget(
                          child: Icon(obscure
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined),
                          onTap: () {
                            obscure = !obscure;
                            setState(() {});
                          },
                        ),
                      decoration.suffixIcon ?? SizedBox(),
                    ],
                  ),
                ),
                readOnly: widget.readOnly,
                controller: widget.controller,
                maxLines: widget.isPassword ? 1 : widget.maxLines,
              ),
            ),
            if (!errorText.isNullEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Text(
                  errorText!,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: themeData.colorScheme.error)
                      .merge(
                        widget.decoration.errorStyle,
                      ),
                ),
              ),
          ],
        );
      },
    );
  }
}
