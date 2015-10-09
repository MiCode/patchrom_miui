.class public Landroid/widget/ShareActionProvider;
.super Landroid/view/ActionProvider;
.source "ShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ShareActionProvider$1;,
        Landroid/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;,
        Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field private mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field private mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 111
    new-instance v0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$1;)V

    iput-object v0, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 127
    const-string/jumbo v0, "share_history.xml"

    iput-object v0, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method

.method static synthetic access$100(Landroid/widget/ShareActionProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ShareActionProvider;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ShareActionProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ShareActionProvider;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/ShareActionProvider;)Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ShareActionProvider;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    return-object v0
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v1, :cond_1

    .line 309
    new-instance v1, Landroid/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ShareActionProvider$ShareAcitivityChooserModelPolicy;-><init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$1;)V

    iput-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 311
    :cond_1
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 312
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V

    goto :goto_0
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 7

    .prologue
    .line 164
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v1

    .line 165
    .local v1, "dataModel":Landroid/widget/ActivityChooserModel;
    new-instance v0, Landroid/widget/ActivityChooserView;

    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "activityChooserView":Landroid/widget/ActivityChooserView;
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserView;->setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V

    .line 169
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 170
    .local v3, "outTypedValue":Landroid/util/TypedValue;
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcom/android/internal/R$attr;->actionModeShareDrawable:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 171
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 172
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {v0, p0}, Landroid/widget/ActivityChooserView;->setProvider(Landroid/view/ActionProvider;)V

    .line 176
    sget v4, Lcom/android/internal/R$string;->shareactionprovider_share_with_application:I

    invoke-virtual {v0, v4}, Landroid/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 178
    sget v4, Lcom/android/internal/R$string;->shareactionprovider_share_with:I

    invoke-virtual {v0, v4}, Landroid/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    .line 181
    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 10
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    const/4 v9, 0x0

    .line 198
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 200
    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v2

    .line 201
    .local v2, "dataModel":Landroid/widget/ActivityChooserModel;
    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 203
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v3

    .line 204
    .local v3, "expandedActivityCount":I
    iget v7, p0, Landroid/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 207
    .local v1, "collapsedActivityCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 208
    invoke-virtual {v2, v5}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 209
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 207
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_0
    if-ge v1, v3, :cond_1

    .line 216
    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/internal/R$string;->activity_chooser_view_see_all:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v9, v1, v1, v7}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v4

    .line 219
    .local v4, "expandedSubMenu":Landroid/view/SubMenu;
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 220
    invoke-virtual {v2, v5}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 221
    .restart local v0    # "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v4, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 226
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "expandedSubMenu":Landroid/view/SubMenu;
    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .prologue
    .line 154
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 155
    invoke-direct {p0}, Landroid/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 156
    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareHistoryFile"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Landroid/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 260
    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "shareIntent"    # Landroid/content/Intent;

    .prologue
    .line 277
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 279
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 280
    return-void
.end method
