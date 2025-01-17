#import "BHIManager.h"
#import "TikTokHeaders.h"

@implementation BHIManager
+ (BOOL)hideAds {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_ads"];
}
+ (BOOL)downloadButton {
     return [[NSUserDefaults standardUserDefaults] boolForKey:@"download_button"];
}
+ (BOOL)shareSheet {
     return [[NSUserDefaults standardUserDefaults] boolForKey:@"share_sheet"];
}
+ (BOOL)removeWatermark {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"remove_watermark"];
}
+ (BOOL)hideElementButton {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"remove_elements_button"];
}
+ (BOOL)uploadRegion {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"upload_region"];
}
+ (BOOL)autoPlay {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"auto_play"];
}
+ (BOOL)stopPlay {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"stop_play"];
}
+ (BOOL)progressBar {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"show_porgress_bar"];
}
+ (BOOL)transparentCommnet {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"transparent_commnet"];
}
+ (BOOL)showUsername {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"show_username"];
}
+ (BOOL)disablePullToRefresh {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"pull_to_refresh"];
}
+ (BOOL)disableUnsensitive {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"disable_unsensitive"];
}
+ (BOOL)disableWarnings {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"disable_warnings"];
}
+ (BOOL)disableLive {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"disable_live"];
}
+ (BOOL)skipRecommendations {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"skip_recommnedations"];
}
+ (BOOL)likeConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"like_confirm"];
}
+ (BOOL)likeCommentConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"like_comment_confirm"];
}
+ (BOOL)dislikeCommentConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"dislike_comment_confirm"];
}
+ (BOOL)followConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"follow_confirm"];
}
+ (BOOL)profileSave {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"save_profile"];
}
+ (BOOL)profileCopy {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"copy_profile_information"];
}
+ (BOOL)profileVideoCount {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"uploaded_videos"];
}
+ (BOOL)alwaysOpenSafari {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"openInBrowser"];
}
+ (BOOL)regionChangingEnabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"en_region"];
}
+ (BOOL)videoLikeCount {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"video_like_count"];
}
+ (BOOL)videoUploadDate {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"video_upload_date"];
}
+ (NSDictionary *)selectedRegion {
    return [[NSUserDefaults standardUserDefaults] dictionaryForKey:@"region"];
}
+ (BOOL)fakeChangesEnabled {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"en_fake"];
}
+ (BOOL)fakeVerified {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"fake_verify"];
}
+ (BOOL)extendedBio {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"extended_bio"];
}
+ (BOOL)extendedComment {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"extendedComment"];
}
+ (BOOL)uploadHD {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"upload_hd"];
}
+ (BOOL)appLock {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"padlock"];
}
+ (void)cleanCache {
    NSArray <NSURL *> *DocumentFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:[NSURL fileURLWithPath:NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true).firstObject] includingPropertiesForKeys:@[] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
    
    for (NSURL *file in DocumentFiles) {
        if ([file.pathExtension.lowercaseString isEqualToString:@"mp4"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"png"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"jpeg"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"mp3"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"m4a"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
    }
    
    NSArray <NSURL *> *TempFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:[NSURL fileURLWithPath:NSTemporaryDirectory()] includingPropertiesForKeys:@[] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
    
    for (NSURL *file in TempFiles) {
        if ([file.pathExtension.lowercaseString isEqualToString:@"mp4"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"mov"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"tmp"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"png"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"jpeg"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"mp3"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file.pathExtension.lowercaseString isEqualToString:@"m4a"]) {
            [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
        }
        if ([file hasDirectoryPath]) {
            if ([BHIManager isEmpty:file]) {
                [[NSFileManager defaultManager] removeItemAtURL:file error:nil];
            }
        }
    }
}
+ (BOOL)isEmpty:(NSURL *)url {
    NSArray *FolderFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:url includingPropertiesForKeys:@[] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
    if (FolderFiles.count == 0) {
        return true;
    } else {
        return false;
    }
}
+ (void)showSaveVC:(id)item {
    UIActivityViewController *acVC = [[UIActivityViewController alloc] initWithActivityItems:item applicationActivities:nil];
    if (is_iPad()) {
        acVC.popoverPresentationController.sourceView = topMostController().view;
        acVC.popoverPresentationController.sourceRect = CGRectMake(topMostController().view.bounds.size.width / 2.0, topMostController().view.bounds.size.height / 2.0, 1.0, 1.0);
    }
    [topMostController() presentViewController:acVC animated:true completion:nil];
}
+ (void)saveMedia:(id)newFilePath fileExtension:(id)fileextension {
    NSArray *imageExtensions = @[@"png", @"jpg", @"jpeg", @"gif", @"tiff", @"bmp", @"heif", @"heic", @"svg"];
    NSArray *videoExtensions = @[@"mp4", @"mov", @"avi", @"mkv", @"wmv", @"flv", @"webm"];
    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
        PHAssetResourceCreationOptions *options = [[PHAssetResourceCreationOptions alloc] init];
        if ([videoExtensions containsObject:fileextension]) {
            [[PHAssetCreationRequest creationRequestForAsset] addResourceWithType:PHAssetResourceTypeVideo fileURL:newFilePath options:options];
        } else if ([imageExtensions containsObject:fileextension]) {
            [[PHAssetCreationRequest creationRequestForAsset] addResourceWithType:PHAssetResourceTypePhoto fileURL:newFilePath options:options];
        } else {
            NSLog(@"Unsupported file type: %@", fileextension);
        }
    } completionHandler:^(BOOL success, NSError * _Nullable error) {
        if (success) {
            NSLog(@"Media saved to Camera Roll successfully.");
        } else {
            NSLog(@"Error saving media to Camera Roll: %@", error);
        }
    }];
}

+ (NSString *)getDownloadingPersent:(float)per {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterPercentStyle];
    NSNumber *number = [NSNumber numberWithFloat:per];
    return [numberFormatter stringFromNumber:number];
}
@end