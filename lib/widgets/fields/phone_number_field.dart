import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logger/logger.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

import 'field_color.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField(
      {super.key,
      required this.name,
      this.isRequired = false,
      this.initialCountrySelection,
      this.label,
      this.placeHolder,
      this.value});

  final String name;
  final String? label;
  final String? placeHolder;
  final bool isRequired;
  final String? initialCountrySelection;
  final String? value;

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  final GlobalKey<FormBuilderFieldState> _fieldKey = GlobalKey();
  final TextEditingController controller = TextEditingController();
  String _initialCountrySelection = 'AE';

  String code = '+971';
  String? value;

  @override
  void initState() {
    if (widget.initialCountrySelection != null) {
      _initialCountrySelection = widget.initialCountrySelection!;
    }
    if (widget.value != null) {
      parseNumber(widget.value!);
    }
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      if (_fieldKey.currentState?.value != null) {
        parseNumber(_fieldKey.currentState!.value);
      }
    });
    super.initState();
  }

  parseNumber(String number) async {
    try {
      final num = await PhoneNumber.parse(number, callerCountry: IsoCode.AE);
      Logger().d(num);
      if (num.isValid()) {
        code = num.countryCode;
        value = num.nsn;
        controller.text = value!;
        _initialCountrySelection = num.isoCode.name;
        if (mounted) setState(() {});
      }
    } catch (e) {
      Logger().e(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<String>(
        key: _fieldKey,
        name: widget.name,
        validator: (val) {
          if (!widget.isRequired && value == null) {
            return null;
          }
          if (val == null && widget.isRequired) {
            return 'Please enter phone number';
          }

          if (value == null) {
            return 'Please enter phone number';
          } else if (int.tryParse(value ?? '') == null &&
              (value!.length != 9 || value!.length != 10)) {
            return 'Please enter valid number';
          }
          return null;
        },
        builder: (state) {
          return LayoutBuilder(builder: (context, con) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: widget.label != null,
                  child: Row(
                    children: [
                      if (widget.label != null)
                        Expanded(
                          child: Text(
                            widget.label! + (widget.isRequired ? ' *' : ''),
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF555555),
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                TextFormField(
                  controller: controller,
                  onChanged: (value) {
                    this.value = value;
                    state.didChange('${code}${value}');
                  },
                  decoration: InputDecoration(
                    prefixIcon: CountryCodePicker(
                      onChanged: (code) {
                        if (code.code != null) {
                          this.code = code.dialCode!;
                          state.didChange('${code}${value}');
                        }
                      },
                      initialSelection: _initialCountrySelection,
                      dialogTextStyle: Theme.of(context).textTheme.labelMedium,
                      countryFilter: [
                        'ae',
                        'in',
                        'sa',
                        'qa',
                        'bh',
                        'om',
                        'kw',
                        'lb',
                        'af', // Afghanistan
                        'al', // Albania
                        'dz', // Algeria
                        'ad', // Andorra
                        'ao', // Angola
                        'ar', // Argentina
                        'am', // Armenia
                        'au', // Australia
                        'at', // Austria
                        'az', // Azerbaijan
                        'bs', // Bahamas
                        'bd', // Bangladesh
                        'bb', // Barbados
                        'by', // Belarus
                        'be', // Belgium
                        'bz', // Belize
                        'bj', // Benin
                        'bt', // Bhutan
                        'bo', // Bolivia
                        'ba', // Bosnia and Herzegovina
                        'bw', // Botswana
                        'br', // Brazil
                        'bn', // Brunei
                        'bg', // Bulgaria
                        'bf', // Burkina Faso
                        'bi', // Burundi
                        'cv', // Cabo Verde
                        'kh', // Cambodia
                        'cm', // Cameroon
                        'cl', // Chile
                        'cn', // China
                        'co', // Colombia
                        'cr', // Costa Rica
                        'hr', // Croatia
                        'cu', // Cuba
                        'cy', // Cyprus
                        'cz', // Czechia
                        'dk', // Denmark
                        'dj', // Djibouti
                        'dm', // Dominica
                        'do', // Dominican Republic
                        'ec', // Ecuador
                        'eg', // Egypt
                        'sv', // El Salvador
                        'gq', // Equatorial Guinea
                        'er', // Eritrea
                        'ee', // Estonia
                        'et', // Ethiopia
                        'fj', // Fiji
                        'fi', // Finland
                        'fr', // France
                        'ga', // Gabon
                        'gm', // Gambia
                        'ge', // Georgia
                        'de', // Germany
                        'gh', // Ghana
                        'gr', // Greece
                        'gd', // Grenada
                        'gt', // Guatemala
                        'gn', // Guinea
                        'gw', // Guinea-Bissau
                        'gy', // Guyana
                        'ht', // Haiti
                        'hn', // Honduras
                        'hu', // Hungary
                        'is', // Iceland
                        'id', // Indonesia
                        'ir', // Iran
                        'iq', // Iraq
                        'ie', // Ireland
                        'il', // Israel
                        'it', // Italy
                        'ci', // Ivory Coast
                        'jm', // Jamaica
                        'jp', // Japan
                        'jo', // Jordan
                        'kz', // Kazakhstan
                        'ke', // Kenya
                        'ki', // Kiribati
                        'kp', // North Korea
                        'kr', // South Korea
                        'xk', // Kosovo
                        'kg', // Kyrgyzstan
                        'la', // Laos
                        'lv', // Latvia
                        'ls', // Lesotho
                        'lr', // Liberia
                        'ly', // Libya
                        'li', // Liechtenstein
                        'lt', // Lithuania
                        'lu', // Luxembourg
                        'mk', // North Macedonia
                        'mg', // Madagascar
                        'mw', // Malawi
                        'my', // Malaysia
                        'mv', // Maldives
                        'ml', // Mali
                        'mt', // Malta
                        'mh', // Marshall Islands
                        'mr', // Mauritania
                        'mu', // Mauritius
                        'mx', // Mexico
                        'fm', // Micronesia
                        'md', // Moldova
                        'mc', // Monaco
                        'mn', // Mongolia
                        'me', // Montenegro
                        'ma', // Morocco
                        'mz', // Mozambique
                        'mm', // Myanmar
                        'na', // Namibia
                        'nr', // Nauru
                        'np', // Nepal
                        'nl', // Netherlands
                        'nz', // New Zealand
                        'ni', // Nicaragua
                        'ne', // Niger
                        'ng', // Nigeria
                        'no', // Norway
                        'pk', // Pakistan
                        'pw', // Palau
                        'pa', // Panama
                        'pg', // Papua New Guinea
                        'py', // Paraguay
                        'pe', // Peru
                        'ph', // Philippines
                        'pl', // Poland
                        'pt', // Portugal
                        'qa', // Qatar
                        'ro', // Romania
                        'ru', // Russia
                        'rw', // Rwanda
                        'kn', // Saint Kitts and Nevis
                        'lc', // Saint Lucia
                        'vc', // Saint Vincent and the Grenadines
                        'ws', // Samoa
                        'sm', // San Marino
                        'st', // Sao Tome and Principe
                        'sn', // Senegal
                        'rs', // Serbia
                        'sc', // Seychelles
                        'sl', // Sierra Leone
                        'sg', // Singapore
                        'sk', // Slovakia
                        'si', // Slovenia
                        'sb', // Solomon Islands
                        'so', // Somalia
                        'za', // South Africa
                        'es', // Spain
                        'lk', // Sri Lanka
                        'sd', // Sudan
                        'sr', // Suriname
                        'sz', // Eswatini
                        'se', // Sweden
                        'ch', // Switzerland
                        'sy', // Syria
                        'tw', // Taiwan
                        'tj', // Tajikistan
                        'tz', // Tanzania
                        'th', // Thailand
                        'tl', // Timor-Leste
                        'tg', // Togo
                        'to', // Tonga
                        'tt', // Trinidad and Tobago
                        'tn', // Tunisia
                        'tr', // Turkey
                        'tm', // Turkmenistan
                        'tv', // Tuvalu
                        'ug', // Uganda
                        'ua', // Ukraine
                        'ae', // United Arab Emirates
                        'gb', // United Kingdom
                        'uy', // Uruguay
                        'uz', // Uzbekistan
                        'vu', // Vanuatu
                        'va', // Vatican City
                        've', // Venezuela
                        'vn', // Vietnam
                        'ye', // Yemen
                        'zm', // Zambia
                        'zw', // Zimbabwe
                      ],
                      searchDecoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        filled: true,
                        fillColor: fieldColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: borderColor),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: borderColor),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(14.0, 12.0, 14.0, 12.0),
                      ),
                      builder: (CountryCode? countryCode) {
                        if (countryCode == null) {
                          return SizedBox();
                        }
                        return SizedBox(
                          width: 78,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FittedBox(
                              child: ColoredBox(
                                color: fieldColor,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      countryCode!.flagUri!,
                                      package: 'country_code_picker',
                                      width: 40,
                                      height: 40,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_down,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    hintText: widget.placeHolder,
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                    filled: true,
                    fillColor: fieldColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: borderColor),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: borderColor),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.fromLTRB(14.0, 12.0, 14.0, 12.0),
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.phone,
                ),
                if (state.hasError == true)
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                    ),
                    child: Text(
                      state.errorText ?? "",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.apply(color: Theme.of(context).colorScheme.error),
                    ),
                  ),
                const SizedBox(
                  height: 6,
                )
              ],
            );
          });
        });
  }
}
