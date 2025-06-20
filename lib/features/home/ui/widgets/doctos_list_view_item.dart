import 'package:cached_network_image/cached_network_image.dart';
import 'package:docdoc/core/helpers/extention.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctors;
  const DoctorsListViewItem({super.key, this.doctors});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: GestureDetector(
        onTap: () {
          // Navigate to doctor details view with the selected doctor's model

          context.pushNamed(Routes.doctorDetails, arguments: doctors);
        },
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return Shimmer.fromColors(
                  baseColor: AppColor.lightGray,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 110.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                  ),
                );
              },
              imageBuilder: (context, imageProvider) => Container(
                width: 110.w,
                height: 120.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            horizontalSpace(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctors?.name ?? 'Name',
                    style: TextStyles.font18DarkBlueBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    '${doctors?.degree} | ${doctors?.phone}',
                    style: TextStyles.font12GrayMedium,
                  ),
                  verticalSpace(5),
                  Text(
                    doctors?.email ?? 'Email',
                    style: TextStyles.font12GrayMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
