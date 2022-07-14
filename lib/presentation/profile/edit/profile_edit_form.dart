import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:user_repository/user_repository.dart';
import 'package:vote_your_face/presentation/profile/edit/cubit/profile_edit_cubit.dart';
import 'package:vote_your_face/presentation/profile/widgets/profile_image.dart';
import 'package:vote_your_face/presentation/profile/widgets/text_block.dart';
import 'package:vote_your_face/presentation/shared/widgets/field/vec_textform_field.dart';

class ProfileEditForm extends StatelessWidget {
  const ProfileEditForm({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileEditCubit, ProfileEditState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          context.router.pop();
        } else if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Update failure')),
            );
        }
      },
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileImage(
                imageSrc: profile.imageSrc,
                isEditable: true,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          _WhyVoteMeInput(profile.whyVoteMe),
          const Padding(padding: EdgeInsets.all(10)),
          _BioInput(profile.bio),
        ],
      ),
    );
  }
}

class _WhyVoteMeInput extends StatelessWidget {
  const _WhyVoteMeInput(this.initialValue);

  final String initialValue;
  final int _maxLength = 50;

  @override
  Widget build(BuildContext context) {
    return TextBlock(
      title: 'Why vote me',
      block: BlocBuilder<ProfileEditCubit, ProfileEditState>(
        buildWhen: (previous, current) =>
            previous.whyVoteMe != current.whyVoteMe,
        builder: (context, state) {
          return VecTextFormField(
            key: const Key('profileEditForm_whyVoteMeInput_textFormField'),
            onChanged: (value) =>
                context.read<ProfileEditCubit>().whyVoteMeChanged(value),
            errorText: 'cannot update your data.',
            showError: state.whyVoteMe.invalid,
            initialValue: initialValue,
            minLines: 5,
            maxLines: 30,
            maxLength: _maxLength,
          );
        },
      ),
    );
  }
}

class _BioInput extends StatelessWidget {
  const _BioInput(this.initialValue);

  final String initialValue;
  final int _maxLength = 200;

  @override
  Widget build(BuildContext context) {
    return TextBlock(
      title: 'Biographie',
      block: BlocBuilder<ProfileEditCubit, ProfileEditState>(
        buildWhen: (previous, current) => previous.bio != current.bio,
        builder: (context, state) {
          return VecTextFormField(
            key: const Key('profileEditForm_bioInput_textFormField'),
            onChanged: (value) =>
                context.read<ProfileEditCubit>().bioChanged(value),
            errorText: 'cannot update your data.',
            showError: state.bio.invalid,
            initialValue: initialValue,
            minLines: 5,
            maxLines: 30,
            maxLength: _maxLength,
          );
        },
      ),
    );
  }
}
