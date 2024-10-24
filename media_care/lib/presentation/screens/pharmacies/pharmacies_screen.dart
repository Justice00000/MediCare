import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_care/presentation/screens/pharmacies/cubit/pharmacies_cubit.dart';
import 'package:media_care/presentation/widgets/f_custom_drawer.dart';
import 'package:media_care/presentation/widgets/filtering_header.dart';
import 'package:media_care/presentation/widgets/pharmacy_item_widget.dart';

class PharmaciesScreen extends StatelessWidget {
  static const routeName = "/pharmacies";
  const PharmaciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<PharmaciesCubit>().gettingPharmacies();
    return Scaffold(
      endDrawer: const Drawer(
        child: FCustomDrawer(
          title: "Filter(Pharmacies)",
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140.0),
        child: Column(
          children: [
            AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new)),
              automaticallyImplyLeading: false,
              centerTitle: true,
              actions: <Widget>[Container()],
              title: const Text(
                "Choose Facility",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const FilteringHeader(
                title: "Pharmacies", subtitle: "Find a Pharmacies near you"),
          ],
        ),
      ),
      body: BlocBuilder<PharmaciesCubit, PharmaciesState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: state.isgettingPharmacies
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.pharmacies.isEmpty
                    ? const SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.nearby_error_rounded,
                              size: 40,
                            ),
                            Text(
                              'EMPTY',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('There are no hospital or clinic yet'),
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: state.pharmacies.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => PharmacyItemWidget(
                              pharmacy: state.pharmacies[index],
                            )),
          );
        },
      ),
    );
  }
}
