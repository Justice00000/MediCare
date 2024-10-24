import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_care/presentation/screens/home/cubit/home_cubit.dart';
import 'package:media_care/presentation/widgets/custom_drawer.dart';
import 'package:media_care/presentation/widgets/filtering_header.dart';
import 'package:media_care/presentation/widgets/hospital_clinic_item_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().gettingFacilities();
    return Scaffold(
      endDrawer: const Drawer(
        child: CustomDrawer(),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140.0),
        child: Column(
          children: [
            AppBar(
              leading: null,
              automaticallyImplyLeading: false,
              centerTitle: true,
              actions: <Widget>[Container()],
              title: const Text("Choose Facility"),
            ),
            const FilteringHeader(),
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
                : ListView.builder(
                    itemCount: state.facilities.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => HospitalClinicItemWidget(
                          facility: state.facilities[index],
                        )),
          );
        },
      ),
    );
  }
}
