import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yocial/constants/appwrite_constants.dart';

final appwriteClientProvider = Provider((ref) {
  final client = Client();
  return client
      .setEndpoint(AppWriteConstants.endpoint)
      .setProject(AppWriteConstants.projectId)
      .setSelfSigned();
});

final appwriteAccountProvider = Provider((ref) {
  final client = ref.watch(appwriteClientProvider);
  return Account(client);
});
