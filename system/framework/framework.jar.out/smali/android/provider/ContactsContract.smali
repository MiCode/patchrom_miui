.class public final Landroid/provider/ContactsContract;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$1;,
        Landroid/provider/ContactsContract$Intents;,
        Landroid/provider/ContactsContract$DisplayPhoto;,
        Landroid/provider/ContactsContract$QuickContact;,
        Landroid/provider/ContactsContract$PinnedPositions;,
        Landroid/provider/ContactsContract$DataUsageFeedback;,
        Landroid/provider/ContactsContract$ProviderStatus;,
        Landroid/provider/ContactsContract$Settings;,
        Landroid/provider/ContactsContract$SettingsColumns;,
        Landroid/provider/ContactsContract$AggregationExceptions;,
        Landroid/provider/ContactsContract$Groups;,
        Landroid/provider/ContactsContract$GroupsColumns;,
        Landroid/provider/ContactsContract$CommonDataKinds;,
        Landroid/provider/ContactsContract$SearchSnippetColumns;,
        Landroid/provider/ContactsContract$Presence;,
        Landroid/provider/ContactsContract$StatusUpdates;,
        Landroid/provider/ContactsContract$PresenceColumns;,
        Landroid/provider/ContactsContract$PhoneLookup;,
        Landroid/provider/ContactsContract$PhoneLookupColumns;,
        Landroid/provider/ContactsContract$RawContactsEntity;,
        Landroid/provider/ContactsContract$Data;,
        Landroid/provider/ContactsContract$DataColumnsWithJoins;,
        Landroid/provider/ContactsContract$DataUsageStatColumns;,
        Landroid/provider/ContactsContract$DataColumns;,
        Landroid/provider/ContactsContract$PhotoFilesColumns;,
        Landroid/provider/ContactsContract$PhotoFiles;,
        Landroid/provider/ContactsContract$StreamItemPhotosColumns;,
        Landroid/provider/ContactsContract$StreamItemPhotos;,
        Landroid/provider/ContactsContract$StreamItemsColumns;,
        Landroid/provider/ContactsContract$StreamItems;,
        Landroid/provider/ContactsContract$StatusColumns;,
        Landroid/provider/ContactsContract$RawContacts;,
        Landroid/provider/ContactsContract$RawContactsColumns;,
        Landroid/provider/ContactsContract$DeletedContacts;,
        Landroid/provider/ContactsContract$DeletedContactsColumns;,
        Landroid/provider/ContactsContract$Profile;,
        Landroid/provider/ContactsContract$Contacts;,
        Landroid/provider/ContactsContract$ContactCounts;,
        Landroid/provider/ContactsContract$ContactNameColumns;,
        Landroid/provider/ContactsContract$DisplayNameSources;,
        Landroid/provider/ContactsContract$PhoneticNameStyle;,
        Landroid/provider/ContactsContract$FullNameStyle;,
        Landroid/provider/ContactsContract$ContactStatusColumns;,
        Landroid/provider/ContactsContract$ContactsColumns;,
        Landroid/provider/ContactsContract$ContactOptionsColumns;,
        Landroid/provider/ContactsContract$SyncColumns;,
        Landroid/provider/ContactsContract$BaseSyncColumns;,
        Landroid/provider/ContactsContract$ProfileSyncState;,
        Landroid/provider/ContactsContract$SyncState;,
        Landroid/provider/ContactsContract$SyncStateColumns;,
        Landroid/provider/ContactsContract$Directory;,
        Landroid/provider/ContactsContract$Preferences;,
        Landroid/provider/ContactsContract$Authorization;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.contacts"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final DEFERRED_SNIPPETING:Ljava/lang/String; = "deferred_snippeting"

.field public static final DEFERRED_SNIPPETING_QUERY:Ljava/lang/String; = "deferred_snippeting_query"

.field public static final DIRECTORY_PARAM_KEY:Ljava/lang/String; = "directory"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final PRIMARY_ACCOUNT_NAME:Ljava/lang/String; = "name_for_primary_account"

.field public static final PRIMARY_ACCOUNT_TYPE:Ljava/lang/String; = "type_for_primary_account"

.field public static final REMOVE_DUPLICATE_ENTRIES:Ljava/lang/String; = "remove_duplicate_entries"

.field public static final STREQUENT_PHONE_ONLY:Ljava/lang/String; = "strequent_phone_only"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8097
    return-void
.end method

.method public static isProfileId(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 2130
    const-wide v0, 0x7fffffff80000000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
