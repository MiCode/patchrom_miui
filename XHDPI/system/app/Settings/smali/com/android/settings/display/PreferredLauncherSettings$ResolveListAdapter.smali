.class Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferredLauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PreferredLauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mMiuiHomeSettingsListener:Landroid/view/View$OnClickListener;

.field private final mPackgeManager:Landroid/content/pm/PackageManager;

.field private final mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "current"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 143
    new-instance v1, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter$1;-><init>(Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;)V

    iput-object v1, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mMiuiHomeSettingsListener:Landroid/view/View$OnClickListener;

    .line 154
    iput-object p1, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mPackgeManager:Landroid/content/pm/PackageManager;

    .line 156
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 157
    iput-object p3, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 159
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 160
    .local v0, size:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 161
    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    :cond_0
    iput-object p2, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mResolveInfos:Ljava/util/List;

    .line 164
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrent()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getItem(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 173
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 183
    if-nez p2, :cond_0

    .line 184
    iget-object v6, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04009e

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 188
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    const v6, 0x7f09015d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/CheckedTextView;

    .line 189
    .local v0, checked:Lmiui/widget/CheckedTextView;
    iget-object v6, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v4, v6}, Lcom/android/settings/display/PreferredLauncherSettings;->isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lmiui/widget/CheckedTextView;->setChecked(Z)V

    .line 190
    const v6, 0x7f09001a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 191
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const v6, 0x7f090086

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/CheckedTextView;

    .line 193
    .local v3, label:Lmiui/widget/CheckedTextView;
    iget-object v6, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Lmiui/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v0}, Lmiui/widget/CheckedTextView;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v6}, Lmiui/widget/CheckedTextView;->setChecked(Z)V

    .line 196
    const v6, 0x7f090149

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 197
    .local v5, rightArrow:Landroid/widget/ImageView;
    const-string v6, "com.miui.home"

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 198
    .local v2, isMiuiHome:Z
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 199
    if-eqz v2, :cond_1

    .line 200
    iget-object v6, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mMiuiHomeSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_1
    return-object p2
.end method

.method public setCurrent(Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter "ri"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 211
    return-void
.end method
