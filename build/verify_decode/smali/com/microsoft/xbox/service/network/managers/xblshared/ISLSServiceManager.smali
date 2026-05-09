.class public interface abstract Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract SearchGamertag(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
.end method

.method public abstract addFriendToShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract addUserToFavoriteList(Ljava/lang/String;)Z
.end method

.method public abstract addUserToFollowingList(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
.end method

.method public abstract addUserToMutedList(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract addUserToNeverList(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getFamilySettings(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/FamilySettings;
.end method

.method public abstract getFriendFinderSettings()Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
.end method

.method public abstract getMutedListInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
.end method

.method public abstract getMyShortCircuitProfile()Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
.end method

.method public abstract getNeverListInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
.end method

.method public abstract getPeopleHubFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
.end method

.method public abstract getPeopleHubRecommendations()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
.end method

.method public abstract getPrivacySetting(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
.end method

.method public abstract getProfilePreferredColor(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
.end method

.method public abstract getProfileSummaryInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
.end method

.method public abstract getUserProfileInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
.end method

.method public abstract getUserProfilePrivacySettings()Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
.end method

.method public abstract getXTokenPrivileges()[I
.end method

.method public abstract removeFriendFromShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract removeUserFromFavoriteList(Ljava/lang/String;)Z
.end method

.method public abstract removeUserFromFollowingList(Ljava/lang/String;)Z
.end method

.method public abstract removeUserFromMutedList(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract removeUserFromNeverList(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract sendShortCircuitProfile(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
.end method

.method public abstract setFriendFinderOptInStatus(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;)Z
.end method

.method public abstract setPrivacySettings(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Z
.end method

.method public abstract submitFeedback(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract updatePhoneContacts(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
.end method

.method public abstract updateThirdPartyToken(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Ljava/lang/String;)Z
.end method
