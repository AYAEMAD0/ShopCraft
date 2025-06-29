// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ShopCraft`
  String get appTitle {
    return Intl.message('ShopCraft', name: 'appTitle', desc: '', args: []);
  }

  /// `Your Premium Shopping Experience`
  String get welcomeSubtitle {
    return Intl.message(
      'Your Premium Shopping Experience',
      name: 'welcomeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Our Products`
  String get ourProducts {
    return Intl.message(
      'Our Products',
      name: 'ourProducts',
      desc: '',
      args: [],
    );
  }

  /// `Hot Offers`
  String get hotOffers {
    return Intl.message('Hot Offers', name: 'hotOffers', desc: '', args: []);
  }

  /// `Featured Products`
  String get featuredProducts {
    return Intl.message(
      'Featured Products',
      name: 'featuredProducts',
      desc: '',
      args: [],
    );
  }

  /// `Shop Our Collection`
  String get shopCollection {
    return Intl.message(
      'Shop Our Collection',
      name: 'shopCollection',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to ShopCraft`
  String get signInTo {
    return Intl.message(
      'Sign in to ShopCraft',
      name: 'signInTo',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Success!`
  String get success {
    return Intl.message('Success!', name: 'success', desc: '', args: []);
  }

  /// `Account created successfully`
  String get accountCreated {
    return Intl.message(
      'Account created successfully',
      name: 'accountCreated',
      desc: '',
      args: [],
    );
  }

  /// `Account sign-in successfully`
  String get accountSignedIn {
    return Intl.message(
      'Account sign-in successfully',
      name: 'accountSignedIn',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message('Close', name: 'close', desc: '', args: []);
  }

  /// `50% Off Electronics`
  String get offer1Title {
    return Intl.message(
      '50% Off Electronics',
      name: 'offer1Title',
      desc: '',
      args: [],
    );
  }

  /// `Limited time offer on all tech gadgets`
  String get offer1Subtitle {
    return Intl.message(
      'Limited time offer on all tech gadgets',
      name: 'offer1Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `50% OFF`
  String get offer1Shape {
    return Intl.message('50% OFF', name: 'offer1Shape', desc: '', args: []);
  }

  /// `Free Shipping Weekend`
  String get offer2Title {
    return Intl.message(
      'Free Shipping Weekend',
      name: 'offer2Title',
      desc: '',
      args: [],
    );
  }

  /// `No delivery charges on orders above $50`
  String get offer2Subtitle {
    return Intl.message(
      'No delivery charges on orders above \$50',
      name: 'offer2Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `FREE SHIP`
  String get offer2Shape {
    return Intl.message('FREE SHIP', name: 'offer2Shape', desc: '', args: []);
  }

  /// `Buy 2 Get 1 Free`
  String get offer3Title {
    return Intl.message(
      'Buy 2 Get 1 Free',
      name: 'offer3Title',
      desc: '',
      args: [],
    );
  }

  /// `On selected accessories and peripherals`
  String get offer3Subtitle {
    return Intl.message(
      'On selected accessories and peripherals',
      name: 'offer3Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `B2G1`
  String get offer3Shape {
    return Intl.message('B2G1', name: 'offer3Shape', desc: '', args: []);
  }

  /// `Student Discount`
  String get offer4Title {
    return Intl.message(
      'Student Discount',
      name: 'offer4Title',
      desc: '',
      args: [],
    );
  }

  /// `Extra 20% off with valid student ID`
  String get offer4Subtitle {
    return Intl.message(
      'Extra 20% off with valid student ID',
      name: 'offer4Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `20% OFF`
  String get offer4Shape {
    return Intl.message('20% OFF', name: 'offer4Shape', desc: '', args: []);
  }

  /// `Bundle Deals`
  String get offer5Title {
    return Intl.message(
      'Bundle Deals',
      name: 'offer5Title',
      desc: '',
      args: [],
    );
  }

  /// `Save more when you buy complete setups`
  String get offer5Subtitle {
    return Intl.message(
      'Save more when you buy complete setups',
      name: 'offer5Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `BUNDLE`
  String get offer5Shape {
    return Intl.message('BUNDLE', name: 'offer5Shape', desc: '', args: []);
  }

  /// `Item added to the cart`
  String get itemAddedToCart {
    return Intl.message(
      'Item added to the cart',
      name: 'itemAddedToCart',
      desc: '',
      args: [],
    );
  }

  /// `{productName} added successfully!`
  String productAddedSuccessfully(Object productName) {
    return Intl.message(
      '$productName added successfully!',
      name: 'productAddedSuccessfully',
      desc: 'Message showing that product was added',
      args: [productName],
    );
  }

  /// `Premium Laptop Collection`
  String get carouselTitle1 {
    return Intl.message(
      'Premium Laptop Collection',
      name: 'carouselTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Professional Workspace`
  String get carouselTitle2 {
    return Intl.message(
      'Professional Workspace',
      name: 'carouselTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Ambient Lighting`
  String get carouselTitle3 {
    return Intl.message(
      'Ambient Lighting',
      name: 'carouselTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get dialogSuccessTitle {
    return Intl.message(
      'Welcome!',
      name: 'dialogSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Account sign-in successfully`
  String get dialogSuccessDescription {
    return Intl.message(
      'Account sign-in successfully',
      name: 'dialogSuccessDescription',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get dialogButtonText {
    return Intl.message('Close', name: 'dialogButtonText', desc: '', args: []);
  }

  /// `{price}`
  String productPrice(Object price) {
    return Intl.message(
      '$price',
      name: 'productPrice',
      desc: 'Displays product price with currency',
      args: [price],
    );
  }

  /// `{name}`
  String productName(Object name) {
    return Intl.message(
      '$name',
      name: 'productName',
      desc: 'Displays product name',
      args: [name],
    );
  }

  /// `MacBook Pro 16`
  String get product_macbook {
    return Intl.message(
      'MacBook Pro 16',
      name: 'product_macbook',
      desc: '',
      args: [],
    );
  }

  /// `Wireless Headphones`
  String get product_headphones {
    return Intl.message(
      'Wireless Headphones',
      name: 'product_headphones',
      desc: '',
      args: [],
    );
  }

  /// `Smart Watch`
  String get product_watch {
    return Intl.message(
      'Smart Watch',
      name: 'product_watch',
      desc: '',
      args: [],
    );
  }

  /// `Designer Backpack`
  String get product_backpack {
    return Intl.message(
      'Designer Backpack',
      name: 'product_backpack',
      desc: '',
      args: [],
    );
  }

  /// `Premium Keyboard`
  String get product_keyboard {
    return Intl.message(
      'Premium Keyboard',
      name: 'product_keyboard',
      desc: '',
      args: [],
    );
  }

  /// `Wireless Mouse`
  String get product_mouse {
    return Intl.message(
      'Wireless Mouse',
      name: 'product_mouse',
      desc: '',
      args: [],
    );
  }

  /// `{field} is required`
  String fieldRequired(Object field) {
    return Intl.message(
      '$field is required',
      name: 'fieldRequired',
      desc: '',
      args: [field],
    );
  }

  /// `Please enter a valid email`
  String get enterValidEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'enterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get passwordMinLength {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'passwordMinLength',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Only letters and spaces are allowed`
  String get lettersOnly {
    return Intl.message(
      'Only letters and spaces are allowed',
      name: 'lettersOnly',
      desc: '',
      args: [],
    );
  }

  /// `First letter must be uppercase`
  String get firstLetterUppercase {
    return Intl.message(
      'First letter must be uppercase',
      name: 'firstLetterUppercase',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
