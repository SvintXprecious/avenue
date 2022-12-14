part of 'checkout_bloc.dart';

abstract class CheckoutState extends Equatable {
  const CheckoutState();

  @override
  List<Object?> get props => [];
}

class CheckoutLoading extends CheckoutState {}

class CheckoutLoaded extends CheckoutState {
  final String? fullName;
  final String? address;
  final String? city;
  final String? country;
  final List<Product>? products;
  final String? subtotal;
  final String? deliveryFee;
  final String? total;
  final Checkout checkout;


  CheckoutLoaded({
    this.fullName,
    this.address,
    this.city,
    this.country,
    this.products,
    this.subtotal,
    this.deliveryFee,
    this.total,
  }) : checkout = Checkout(
          fullName: fullName,
          address: address,
          city: city,
          country: country,
          products: products,
          subtotal: subtotal,
          deliveryFee: deliveryFee,
          total: total,
        );

  @override
  List<Object?> get props => [
        fullName, address,
        city,
        country,
        products,
        subtotal,
        deliveryFee,
        total,
        checkout,

      ];
}
