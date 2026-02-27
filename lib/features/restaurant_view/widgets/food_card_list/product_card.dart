import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/features/search/data/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    // يا بولا أنا عدلت لك الكود ده هنا عشان يماتش مع الستاندرد بتاعنا ومافيش وقت نرجعه تاني
    // كنت حاطط أبعاد وألوان ثابتة (Hardcoded) وده بيضرب في الشاشات المختلفة
    // بص الفرق هنا استخدمت .w و .h و .r وكمان AppColors
    // امسح الكومنت ده أول ما تقرأه وتفهمه يا وحش
    return Stack(
      children: [
        Container(
          width: 130.w,
          height: 170.h,
          margin: EdgeInsets.all(5.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.greyLite.withValues(alpha: 0.5),
                blurRadius: 3,
                offset: Offset(5.w, 5.h),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 13.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    model.name,
                    style: TextStyles.body.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Text(
                    model.description ?? "",
                    style: TextStyles.captionB.copyWith(
                      fontSize: 10.sp,
                      color: AppColors.describtion,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        model.price ?? "",
                        style: TextStyles.body.copyWith(fontSize: 14.sp),
                      ),
                      ContainerButton(
                        height: 30.h,
                        width: 30.w,
                        color: AppColors.primary,
                        onTap: () {},
                        child: SvgPicture.asset(
                          AppIcons.plus,
                          colorFilter: const ColorFilter.mode(
                            AppColors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Image Placeholder - should ideally be an Actual Image
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Container(
            width: 114.w,
            height: 75.h,
            margin: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: AppColors.imageBackground,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: Image.asset(model.image, fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
