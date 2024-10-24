import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_care/presentation/screens/hospitals_clinics/cubit/home_cubit.dart';
import 'package:media_care/presentation/widgets/custom_drawer.dart';
import 'package:media_care/presentation/widgets/filtering_header.dart';
import 'package:media_care/presentation/widgets/hospital_clinic_item_widget.dart';

class HospitalsCrinicsScreen extends StatelessWidget {
  static const routeName = "/hospitals_clinics";
  const HospitalsCrinicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().gettingFacilities();
    return Scaffold(
      endDrawer: const Drawer(
        child: CustomDrawer(
          title: "Filter(Hospitals/Clinics)",
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
                title: "Hospitals/Clinics",
                subtitle: "Find a hospital/clinic near you"),
          ],
        ),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: state.isgettingFacilities
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.facilities.isEmpty
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
                        itemCount: state.facilities.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            HospitalClinicItemWidget(
                              facility: state.facilities[index],
                            )),
          );
        },
      ),
    );
  }
}
