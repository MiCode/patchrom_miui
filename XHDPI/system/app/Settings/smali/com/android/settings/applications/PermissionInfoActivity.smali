.class public Lcom/android/settings/applications/PermissionInfoActivity;
.super Landroid/preference/PreferenceActivity;
.source "PermissionInfoActivity.java"


# static fields
.field private static mAppName:Ljava/lang/String;

.field private static mPermOther:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPermPrivacy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPermSecurity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOtherCategory:Landroid/preference/PreferenceCategory;

.field private mPrivacyCategory:Landroid/preference/PreferenceCategory;

.field private mSecurityCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/applications/PermissionInfoActivity;->mPermPrivacy:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/applications/PermissionInfoActivity;->mPermSecurity:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/applications/PermissionInfoActivity;->mPermOther:Ljava/util/Map;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/android/settings/applications/PermissionInfoActivity;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private buildPreferences(Ljava/util/Map;Landroid/preference/PreferenceCategory;)V
    .locals 6
    .parameter
    .parameter "category"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/preference/PreferenceCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, perms:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 76
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, permName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const v4, 0x7f04004c

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 78
    .local v2, preferenceItem:Landroid/preference/Preference;
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 83
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #permName:Ljava/lang/String;
    .end local v2           #preferenceItem:Landroid/preference/Preference;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    :cond_1
    return-void
.end method

.method private static extractPerms([Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 9
    .parameter "strList"
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_1

    .line 157
    :cond_0
    return-void

    .line 147
    :cond_1
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 149
    .local v4, permName:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p2, v4, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 150
    .local v5, tmpPermInfo:Landroid/content/pm/PermissionInfo;
    if-eqz v5, :cond_2

    .line 151
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v5           #tmpPermInfo:Landroid/content/pm/PermissionInfo;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "PermissionInfoActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unknown permission:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getAllUsedPermissions(ILjava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 6
    .parameter "sharedUid"
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, sharedPkgList:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 127
    :cond_0
    return-void

    .line 124
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 125
    .local v3, sharedPkg:Ljava/lang/String;
    invoke-static {v3, p1, p2}, Lcom/android/settings/applications/PermissionInfoActivity;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getOtherCount()I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/applications/PermissionInfoActivity;->mPermOther:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method private static getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 5
    .parameter "packageName"
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    const/16 v2, 0x1000

    :try_start_0
    invoke-virtual {p2, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/applications/PermissionInfoActivity;->mAppName:Ljava/lang/String;

    .line 139
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lcom/android/settings/applications/PermissionInfoActivity;->extractPerms([Ljava/lang/String;Ljava/util/Set;Landroid/content/pm/PackageManager;)V

    .line 141
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PermissionInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could\'nt retrieve permissions for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPrivacyCount()I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/applications/PermissionInfoActivity;->mPermPrivacy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static getSecurityCount()I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/applications/PermissionInfoActivity;->mPermSecurity:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static parsePermission(ILandroid/content/Context;)V
    .locals 11
    .parameter "uid"
    .parameter "context"

    .prologue
    .line 88
    const/4 v9, -0x1

    if-le p0, v9, :cond_3

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x606000f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 90
    .local v6, privacy:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6060010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 92
    .local v7, security:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 93
    .local v4, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 94
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-static {p0, v4, v5}, Lcom/android/settings/applications/PermissionInfoActivity;->getAllUsedPermissions(ILjava/util/Set;Landroid/content/pm/PackageManager;)V

    .line 96
    sget-object v9, Lcom/android/settings/applications/PermissionInfoActivity;->mPermPrivacy:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 97
    sget-object v9, Lcom/android/settings/applications/PermissionInfoActivity;->mPermSecurity:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 98
    sget-object v9, Lcom/android/settings/applications/PermissionInfoActivity;->mPermOther:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 99
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 100
    .local v3, perm:Landroid/content/pm/PermissionInfo;
    invoke-virtual {v3, v5}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 101
    .local v8, seq:Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    .line 102
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 104
    if-eqz v8, :cond_0

    .line 105
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, desp:Ljava/lang/String;
    iget-object v9, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 107
    sget-object v9, Lcom/android/settings/applications/PermissionInfoActivity;->mPermPrivacy:Ljava/util/Map;

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v9, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 109
    sget-object v9, Lcom/android/settings/applications/PermissionInfoActivity;->mPermSecurity:Ljava/util/Map;

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_2
    sget-object v9, Lcom/android/settings/applications/PermissionInfoActivity;->mPermOther:Ljava/util/Map;

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    .end local v0           #desp:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #perm:Landroid/content/pm/PermissionInfo;
    .end local v4           #permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #privacy:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #security:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #seq:Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/PermissionInfoActivity;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_package_uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, p0}, Lcom/android/settings/applications/PermissionInfoActivity;->parsePermission(ILandroid/content/Context;)V

    .line 51
    const-string v1, "privacy_relative"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/PermissionInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/applications/PermissionInfoActivity;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    .line 52
    const-string v1, "security_relative"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/PermissionInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/applications/PermissionInfoActivity;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    .line 53
    const-string v1, "other_relative"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/PermissionInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/applications/PermissionInfoActivity;->mOtherCategory:Landroid/preference/PreferenceCategory;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/applications/PermissionInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0c0904

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/PermissionInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/settings/applications/PermissionInfoActivity;->mAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    sget-object v1, Lcom/android/settings/applications/PermissionInfoActivity;->mPermPrivacy:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/applications/PermissionInfoActivity;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/PermissionInfoActivity;->buildPreferences(Ljava/util/Map;Landroid/preference/PreferenceCategory;)V

    .line 58
    sget-object v1, Lcom/android/settings/applications/PermissionInfoActivity;->mPermSecurity:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/applications/PermissionInfoActivity;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/PermissionInfoActivity;->buildPreferences(Ljava/util/Map;Landroid/preference/PreferenceCategory;)V

    .line 59
    sget-object v1, Lcom/android/settings/applications/PermissionInfoActivity;->mPermOther:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/applications/PermissionInfoActivity;->mOtherCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/PermissionInfoActivity;->buildPreferences(Ljava/util/Map;Landroid/preference/PreferenceCategory;)V

    .line 60
    return-void
.end method
